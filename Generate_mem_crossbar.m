function [sys]=Generate_mem_crossbar( X_size,Y_size )
% Generate_mem_crossbar(number of rows, number of columns)

%% Parameters of crossbar
% X_size=3;  
% Y_size=5;  
%% Open relevant libraries
% open('components.slx');

%% Initialize network model
sys = [ 'MemCross' num2str(X_size) 'X' num2str(Y_size) ];

close_system(sys,0) % Close existing model window  
new_system(sys) % Create the model
open_system(sys) % Open the model
scrsz = get(0,'ScreenSize'); %get screen size for figures 
set_param(gcs, 'location',scrsz);

%% Dimensions and offset parameters
% components dimensions
x = scrsz(:,3); w=30;
y = scrsz(:,4); h=20; 

% components location shifts
offset = 60;

%% Add simulink input ports+Demuxes
pos = [0 y/2 w y/2+h];
add_block('simulink/Sources/From Workspace',[sys '/x_vol'],'Position',pos,'VariableName','x');

pos = [w+offset y/2-5*X_size 2*w+offset y/2+5*X_size];
add_block('simulink/Commonly Used Blocks/Demux',[sys '/Demux_x'],...
    'Outputs',num2str(X_size),'Position',pos,'Orientation','right');

%% Add inputblocks
for ii=1:X_size
    pos = [2*w+2*offset (ii-1)*h+ii*offset 3*w+2*offset ii*(h+offset)];
    add_block('components/inblock',[sys '/inblock' num2str(ii)],'Position',pos);
end
%%Add auxiliary resistors and blocks
for ii=1:X_size
    pos = [3*w+3*offset (ii-1)*h+ii*offset 4*w+3*offset ii*(h+offset)];
    add_block('fl_lib/Electrical/Electrical Elements/Resistor',...
        [sys '/Rleft' num2str(ii)],'Position',pos,'R',num2str(2));
end

pos = [4*w+4*offset -h 5*w+4*offset 0];
add_block('components/auxblock',[sys '/auxblock'],'Position',pos);

for ii=1:Y_size
    pos = [(ii+4)*w+(5+ii)*offset -h (5+ii)*(w+offset) 0];
    add_block('fl_lib/Electrical/Electrical Elements/Resistor',...
        [sys '/Rup' num2str(ii)],'Position',pos,'R',num2str(2));
end
%% Memristor crossbar
for ii=1:Y_size
    for jj=1:X_size
        pos = [(ii+4)*w+(5+ii)*offset (jj-1)*h+jj*offset (5+ii)*(w+offset) jj*(h+offset)];   
%          add_block('fl_lib/Electrical/Electrical Elements/Memristor',[sys '/w' num2str(ii) 'a' num2str(jj)],'Position',pos); 
        add_block('components/memristor',[sys '/w' num2str(ii) 'a' num2str(jj)],'Position',pos);
    end
end
%%Add output block
for ii=1:Y_size
    pos = [(ii+5)*w+(6+ii)*offset (X_size+1)*h+(X_size+2)*offset (6+ii)*(w+offset) (X_size+2)*(h+offset)];
    add_block('components/outblock',[sys '/outblock' num2str(ii)],'Position',pos);
end
%% Add simulink output ports+Muxes
pos = [(Y_size+6)*w+(Y_size+7)*offset (X_size+2)*h+(X_size+3)*offset-5*Y_size (Y_size+7)*(w+offset) (X_size+3)*(h+offset)+5*Y_size];
add_block('simulink/Commonly Used Blocks/Mux',[sys '/Mux_y'],...
    'Inputs',num2str(Y_size),'Position',pos,'Orientation','right');

pos = [(Y_size+7)*w+(Y_size+8)*offset (X_size+2)*h+(X_size+3)*offset (Y_size+8)*(w+offset) (X_size+3)*(h+offset)];
add_block('simulink/Sinks/To Workspace',[sys '/y_vol'],'Position',pos,'VariableName','y','SaveFormat','Array');

%% Connection lines
% get port names using get_param([sys '/block_name'],'PortConnectivity')

add_line(sys,'x_vol/1','Demux_x/1','autorouting','on'); 

for ii=X_size:-1:1

    add_line(sys,['Demux_x/' num2str(ii)],...
            ['inblock' num2str(ii) '/1'],'autorouting','on');        
   
    add_line(sys,['inblock' num2str(ii) '/RConn1'],...
        ['Rleft' num2str(ii) '/LConn1'],'autorouting','on'); 
    for jj=1:Y_size   
        add_line(sys,['inblock' num2str(ii) '/RConn1'],...
        ['w' num2str(jj) 'a' num2str(ii) '/LConn1'],'autorouting','on'); 
    end
     add_line(sys,['Rleft' num2str(ii) '/RConn1'],...
        ['auxblock' '/LConn1'],'autorouting','on'); 
end

for ii=Y_size:-1:1

    add_line(sys,['auxblock/RConn1'],...
            ['Rup' num2str(ii) '/LConn1'],'autorouting','on');        
   
    for jj=1:X_size   
        add_line(sys,['Rup' num2str(ii) '/RConn1'],...
        ['w' num2str(ii) 'a' num2str(jj) '/RConn1'],'autorouting','on'); 
    end
     add_line(sys,['Rup' num2str(ii) '/RConn1'],...
        ['outblock' num2str(ii) '/LConn1'],'autorouting','on'); 
     add_line(sys,['outblock' num2str(ii) '/1'],...
        ['Mux_y/' num2str(ii) ],'autorouting','on');
end

add_line(sys,'Mux_y/1','y_vol/1','autorouting','on'); 

pos =  [3*w+3*offset -h 4*w+3*offset 0];
add_block('nesl_utility/Solver Configuration',[sys '/config'],'Position',pos);

add_line(sys,'config/RConn1',['auxblock' '/LConn1'],'autorouting','on');
%%Save memristor crossbar
save_system(sys);

close_system('nesl_utility',0);

end

