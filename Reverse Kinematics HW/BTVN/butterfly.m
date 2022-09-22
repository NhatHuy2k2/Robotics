syms t1 t2 t e
l1=50;l2=40;
for t= 0:0.01:2*pi
    x = 40 + sin(t)*(exp(cos(t)) - 2*cos(4*t) + sin(t/12)^5) ; %Canh tay robot khong hoat dong trong vong tron r=10=> cong 40 de dua vung hoat dong cua robot ra xa
    y = cos(t)*(exp(cos(t)) - 2*cos(4*t) + sin(t/12)^5);
    
    c2 = (x^2 + y^2 - l1^2 - l2^2)/(2*l1*l2);
    s2 = sqrt(abs(1-c2^2));%theo ly thuyet thi cos t2 khong the lon hon 1 nhung vi matlab su dung toan roi rac nen ket qua co the sai lech chut it
    %=>dung ham abs de bieu thuc trong can luon duong
    t2 = atan2(s2,c2);
    
    c1 = (l1+ l2* c2)* x+ l2* s2* y;
    s1 = (l1+ l2* c2)* y- l2* s2* x;
    t1 = atan2(s1,c1);
    
    Px = l1* cos(t1)+ l2* cos(t1+ t2);
    Py = l1* sin(t1)+ l2* sin(t1+ t2);
   
    %ve bieu do
    subplot(2,2,1);
    plot(t,t1* (180/pi),'.');
    xlabel('time'); ylabel('theta 1');
    hold on
    
    subplot(2,2,2)
    plot(t,t2* (180/pi),'.');
    xlabel('time'); ylabel('theta 2');
    hold on
    
    subplot(2,2,3)
    plot(Px,Py,':*');pause(0.1);
    xlabel('x(cm)');ylabel('y(cm)');
    hold on
end