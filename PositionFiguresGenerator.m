rawTable = readtable('Controller under noload All.xlsx','Sheet','Sheet1');
x  = rawTable.Time;
y1 = rawTable.PID; 
y2 = rawTable.LQR;
y3 = rawTable.Sliding;
y4 = rawTable.MPC;
y5 = rawTable.NNMPC;
figure;
plot(x,y1,'b',x,y2,'r--',x,y3,'k--',x,y4,'g',x,y5,'b--');
ylabel('Position (cm)');
xlabel('Time (sec)');
legend('PID','LQR','Sliding Mode','MPC','NN MPC')
axis([0,5,0,11]);
x = rawTable.Time; %: get the excel column, Header1 (header name)
e = rawTable.Pe; %: get the excel column, Header2 (header name)
e1 = rawTable.Le;
e2 = rawTable.Me;
e3 = rawTable.Me;
e4 = rawTable.Ne;
figure;
plot(x,e,'b',x,e1,'r--',x,e2,'k--',x,e3,'g',x,e4,'b--');
ylabel('error (%)');
xlabel('Time (sec)');
legend('PID error','LQR error','Sliding Mode error','MPC error','NN MPC error')
axis([5,5,-1,1]);

