syms l1 l2 l3 l4 l5 l6 t1 t2 t3
l1 = 40;
l2 = 5;
l3 = 20;
l4 = 50;
l5 = 35;
l6 = 30;
for t1=0:0.1:pi/2
    for t2=0:0.1:pi/2
        for t3=0:0.1:pi/2
            Px =	-sin(t1)*(l5*cos(t2 + t3) - l2 + l4*cos(t2) + l6*cos(t2 + t3 + t4));
            Py = 	cos(t1)*(l5*cos(t2 + t3) - l2 + l4*cos(t2) + l6*cos(t2 + t3 + t4));
            Pz = 	l1 + l3 + l5*sin(t2 + t3) + l4*sin(t2) + l6*sin(t2 + t3 + t4);
            plot3(Px,Py,Pz,'*');
            hold on 
        end
    end
end