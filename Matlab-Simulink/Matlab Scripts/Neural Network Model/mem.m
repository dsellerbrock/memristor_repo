%%
%Read Example Data
file = 'MEM_data.xlsx';
num = xlsread(file,'Memristor_1');
%Inputs and outputs have to be matrices where columns=datapoints
%and rows=inputs
P = num(:,2).';
Y = num(:,3).';
Ptest = num(:,4).';
Ytest = num(:,5).';

%%
%Create NN
%create recurrent neural network with 3 inputs, 2 hidden layers with 
%5 neurons each and 3 outputs
%the NN uses the input data at timestep t-1 and t-2
%The NN has a recurrent connection with delay of 1,2 and 3 timesteps from the output
% to the first layer (and no recurrent connection of the hidden layers)
nn = [1 2 3 3 1];
dIn = [0];
dIntern=[];
dOut=[1];
%net = CreateNN(nn,dIn,dIntern,dOut); %alternative: net = CreateNN([3,5,5,2],[0],[],[1]);



%%
%Train with BFGS-Algorithm
% Train NN with training data P=input and Y=target
% Set maximum number of iterations k_max to 1000
% Set termination condition for Error E_stop to 1e-5
% The Training will stop after 1000 iterations or when the Error <=E_stop
% measure time dt
%netBFGS = train_BFGS(P,Y,net,1000,1e-5);
%saveNN(netBFGS,"memy.csv");
netBFGS = loadNN("memy.csv")
%Calculate Output of trained net (LM) for training and Test Data
y_BFGS = NNOut(P,netBFGS); 
ytest_BFGS = NNOut(Ptest,netBFGS); 


%%
%Plot Results
fig = figure();
set(fig, 'Units', 'normalized', 'Position', [0.2, 0.1, 0.6, 0.6])
axis tight

subplot(411)
set(gca,'FontSize',16)
plot(Y,'r:','LineWidth',2)
hold on
grid on
plot(y_BFGS,'g','LineWidth',2)
l1 = legend('Train Data','BFGS output','Location','northwest');
set(l1,'FontSize',14)

subplot(412)
set(gca,'FontSize',16)
plot(Ytest,'r:','LineWidth',2)
hold on
grid on
plot(ytest_BFGS,'g','LineWidth',2)
l2 = legend('Test Data','BFGS output','Location','northwest');
set(l2,'FontSize',14)




output_current=(P./abs(y_BFGS));

figure(2)
set(gca,'FontSize',16)
hold on
grid on
plot(P,output_current,'b','LineWidth',2)
ylim([0,0.1])
l3 = legend('PINCH','Location','northeast');
set(l3,'FontSize',14)