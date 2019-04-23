%% A matrix-vector multiplication sample
clear
clc
%% Input and parameters
x_input=rand(3,6); %a random training matrix
weight=rand(5,3)-0.5; % a random weight matrix
[column_no,row_no]=size(weight);
epochs=size(x_input,2); % number of training samples

%% Specify the simulation time
period=6e-6;% This is one period of the simulation
ratio=10; % This the simulation points
dt=period/ratio;
t=(dt:dt:epochs*period);

%% Initialization
vars={'x'};
for ii=1:length(vars)
    eval([ cell2mat(vars(ii)) '.time=t;']);
end

x.signals.values=zeros(length(t),row_no);
for jj=1:epochs
    x.signals.values(1+(jj-1)*ratio:jj*ratio,:)=repmat(x_input(:,jj)',ratio,1);
end

%% Generate a crossbar
name=Generate_mem_crossbar(row_no,column_no); % you can remove this line after generating the crossbar

mem_weight=((weight./10)+0.5-0.0001)./0.9999; % convert the weight matrix to the initialization of the ideal memristors
%% Map the weight matrix to the state variable of memristors 
for aa=1:row_no
     for bb=1:column_no
         set_param([name,'/','w',num2str(bb),'a',num2str(aa)],'w0',num2str(mem_weight(bb,aa)));
     end
end
 
% Assign everything in the model workspace
hws = get_param(name, 'modelworkspace');
list = whos;
for ii = 1: length(list)
hws.assignin(list(ii).name,eval(list(ii).name));
end

%% Run the model
tic
sim(name,t);
toc

%% Compare the output 
for tt=1:epochs
    mem_output(:,tt)=y(1+(tt-1)*ratio,:)';
end

output=weight*x_input
mem_output