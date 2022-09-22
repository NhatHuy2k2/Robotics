% syms t1 t2  l1 l2 l3;
% Rz1=[cos(t1) -sin(t1) 0 0;sin(t1) cos(t1) 0 0;0 0 1 0;0 0 0 1];
% Rz2=[cos(t2) -sin(t2) 0 0;sin(t2) cos(t2) 0 0;0 0 1 0;0 0 0 1];
% T1=[1 0 0 l1+l2;0 1 0 0;0 0 1 0;0 0 0 1];
% T2=[1 0 0 l3;0 1 0 0;0 0 1 0;0 0 0 1];
% Temp1=Rz1*T1
% Temp2=Temp1*Rz2
% simplify(Temp2)
% P=Temp2*T2
% simplify(P)
% 
% l1=40;l3=20;b=10;h=100;v=10;
% syms t1 t2 l2 pi;
% for t1=0:0.2:pi
%     for t2=0:0.1:pi
%         for l2=40:1:60
%             Px=cos(t1+t2)*l3+cos(t1)*(l1+l2);
%             Py= sin(t1+t2)*l3+sin(t1)*(l1+l2);
%             plot(Px,Py,'*')
%             hold on
%         end
%     end
% end
% 
l1=50;l3=20;b=10;h=100;v=10;
for t=0:0.01:5
    t1=atan2(h-b-l3,v*t);
    t2=pi/2-t1;
    l2=sqrt((h-b-l3)^2+(v*t)^2)-l1;
    subplot(2,2,1)
    plot(t,t1*180/pi,'y')
    xlabel('t')
    ylabel('t1')
    
    hold on
    subplot(2,2,2)
    plot(t,t2*180/pi,'g')
    xlabel('t')
    ylabel('t2')
    
    hold on
    subplot(2,2,3)
    plot(t,l2,'b')
    xlabel('t')
    ylabel('l2')
    hold on
    subplot(2,2,4)
    Px=cos(t1+t2)*l3+cos(t1)*(l1+l2);
    Py= sin(t1+t2)*l3+sin(t1)*(l1+l2);
    plot(Px,Py,'r')
    xlabel('x')
    ylabel('y')
    hold on
    
end
