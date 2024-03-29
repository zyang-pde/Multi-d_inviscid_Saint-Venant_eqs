%computes matrices L_i, R_{1i}, R_{2i}, R_{3i}, R_{4i} at both + and -
%infty
digits(100)
obj.L(2)=f^2*(hr^(1/2) + 1)*(hr^(1/2) - 2*hr + 1);
obj.L(3)=-f^2*(2*hr + hr^2 - 8*hr^(1/2) + 6*hr^(3/2) - 4);
obj.L(4)=-2*f^2*(hr^2 - 6*hr^(1/2) + 3*hr^(3/2) - 3);
obj.L(5)=f^2*(2*hr - hr^2 + 8*hr^(1/2) - 2*hr^(3/2) + 4);
obj.L(6)=f^2*(hr^(1/2) + 1)^2;

obj.R4(1)=f^2*hr^2 - 2*hr^(1/2) - hr - 1;
obj.R4(2)=2*f^2*hr^2 - 10*hr^(1/2) - 5*hr - 5;
obj.R4(3)=f^2*hr^2 - 20*hr^(1/2) - 10*hr - 10;
obj.R4(4)=- 10*hr - 20*hr^(1/2) - 10;
obj.R4(5)=- 5*hr - 10*hr^(1/2) - 5;
obj.R4(6)=- hr - 2*hr^(1/2) - 1;


obj.R1{1}=[0,2*hr - 2*f^2*hr + f^2 + 4*hr^(1/2) + 2*f^2*hr^(1/2) - 3*f^2*hr^(3/2) + 2,0;0,f^2*(hr - 2*hr^(1/2) + 2*hr^(3/2) - 1),0;0,0,-((hr^(1/2) + 1)*(hr + 2*hr^(1/2) - f^2*hr^2 + 1))/hr];
obj.R1{2}=[0,10*hr - 2*f^2*hr + 4*f^2 + 16*hr^(1/2) + 2*hr^(3/2) - 4*f^2*hr^2 + 8*f^2*hr^(1/2) - 6*f^2*hr^(3/2) + 8,0;0,2*f^2*hr^2 - 4*f^2 - 8*f^2*hr^(1/2) + 4*f^2*hr^(3/2),0;0,0,-(16*hr + hr^2 + 15*hr^(1/2) + 7*hr^(3/2) - 2*f^2*hr^2 - f^2*hr^3 - 2*f^2*hr^(5/2) + 5)/hr];
obj.R1{3}=[0,(2*(21*hr + 8*f^2*hr + 3*f^2 + 3*hr^2 + 18*hr^(1/2) + 12*hr^(3/2) - 3*f^2*hr^2 + 9*f^2*hr^(1/2) - f^2*hr^3 + f^2*hr^(3/2) - 2*f^2*hr^(5/2) + 6))/(hr^(1/2) + 1),0;0,2*f^2*hr^2 - 6*f^2 - 4*f^2*hr - 12*f^2*hr^(1/2) + 2*f^2*hr^(3/2),0;0,0,-(34*hr + 4*hr^2 + 30*hr^(1/2) + 18*hr^(3/2) - f^2*hr^2 - f^2*hr^3 - f^2*hr^(5/2) + 10)/hr];
obj.R1{4}=[0,14*hr + 6*f^2*hr + 4*f^2 + 16*hr^(1/2) + 6*hr^(3/2) + 8*f^2*hr^(1/2) + 2*f^2*hr^(3/2) + 8,0;0,-4*f^2*(hr + 2*hr^(1/2) + 1),0;0,0,-(2*(18*hr + 3*hr^2 + 15*hr^(1/2) + 11*hr^(3/2) + 5))/hr];
obj.R1{5}=[0,4*hr + 2*f^2*hr + f^2 + 4*hr^(1/2) + 2*hr^(3/2) + 2*f^2*hr^(1/2) + f^2*hr^(3/2) + 2,0;0,-f^2*(hr + 2*hr^(1/2) + 1),0;0,0,-(19*hr + 4*hr^2 + 15*hr^(1/2) + 13*hr^(3/2) + 5)/hr];
obj.R1{6}=[0,0,0;0,0,0;0,0,-((hr + hr^(1/2) + 1)*(hr + 2*hr^(1/2) + 1))/hr];

obj.R2{1}=[-f^2*(hr^(1/2) + 1)*(hr^(1/2) - hr + 1),hr - f^2*hr - f^2 + 2*hr^(1/2) - 2*f^2*hr^(1/2) + 1,0;f^2*(hr^(1/2) + 1)^2,f^2*(hr^(1/2) + 1)*(hr + hr^(1/2) + 1),0;0,0,-((hr^(1/2) + 1)*(hr + 2*hr^(1/2) - f^2*hr^2 + 1))/hr];
obj.R2{2}=[2*f^2*hr^(3/2) - 4*f^2 - 8*f^2*hr^(1/2) - 2*f^2*hr,5*hr - 6*f^2*hr - 4*f^2 + 10*hr^(1/2) - 8*f^2*hr^(1/2) - 2*f^2*hr^(3/2) + 5,0;4*f^2*(hr^(1/2) + 1)^2,4*f^2*(hr^(1/2) + 1)*(hr + hr^(1/2) + 1),0;0,0,-(3*(6*hr + 6*hr^(1/2) + 2*hr^(3/2) - f^2*hr^2 - f^2*hr^(5/2) + 2))/hr];
obj.R2{3}=[- 6*f^2*hr - 6*f^2 - 12*f^2*hr^(1/2),10*hr - 12*f^2*hr - 6*f^2 + 20*hr^(1/2) - f^2*hr^2 - 12*f^2*hr^(1/2) - 6*f^2*hr^(3/2) + 10,0;6*f^2*(hr^(1/2) + 1)^2,6*f^2*(hr^(1/2) + 1)*(hr + hr^(1/2) + 1),0;0,0,-(3*(15*hr + 15*hr^(1/2) + 5*hr^(3/2) - f^2*hr^2 - f^2*hr^(5/2) + 5))/hr];
obj.R2{4}=[- 6*f^2*hr - 4*f^2 - 8*f^2*hr^(1/2) - 2*f^2*hr^(3/2),10*hr - 10*f^2*hr - 4*f^2 + 20*hr^(1/2) - 2*f^2*hr^2 - 8*f^2*hr^(1/2) - 6*f^2*hr^(3/2) + 10,0;4*f^2*(hr^(1/2) + 1)^2,4*f^2*(hr^(1/2) + 1)*(hr + hr^(1/2) + 1),0;0,0,-(60*hr + 60*hr^(1/2) + 20*hr^(3/2) - f^2*hr^2 - f^2*hr^(5/2) + 20)/hr];
obj.R2{5}=[-f^2*(hr^(1/2) + 1)*(hr + hr^(1/2) + 1),5*hr - 3*f^2*hr - f^2 + 10*hr^(1/2) - f^2*hr^2 - 2*f^2*hr^(1/2) - 2*f^2*hr^(3/2) + 5,0;f^2*(hr^(1/2) + 1)^2,f^2*(hr^(1/2) + 1)*(hr + hr^(1/2) + 1),0;0,0,-(15*(3*hr + 3*hr^(1/2) + hr^(3/2) + 1))/hr];
obj.R2{6}=[0,hr + 2*hr^(1/2) + 1,0;0,0,0;0,0,-(6*(hr^(1/2) + 1)*(hr + 2*hr^(1/2) + 1))/hr];
obj.R2{7}=[0,0,0;0,0,0;0,0,-((hr^(1/2) + 1)*(hr + 2*hr^(1/2) + 1))/hr];

obj.R3{1}=[0,0,-(hr^(1/2) + 1)*(hr^(1/2) - hr + 1)*1i;0,0,(hr^(1/2) + 1)^2*1i;-((hr^(1/2) + 1)*(hr + 2*hr^(1/2) - f^2*hr^2 + 1)*1i)/hr,-((hr^(1/2) + 1)*(hr + 2*hr^(1/2) - f^2*hr^2 + 1)*1i)/hr,0];
obj.R3{2}=[0,0,hr^(3/2)*3i - hr^(1/2)*10i - hr*2i - 5i;0,0,(hr^(1/2) + 1)^2*5i;-(3*(hr*6i + hr^(1/2)*6i + hr^(3/2)*2i - f^2*hr^2*1i - f^2*hr^(5/2)*1i + 2i))/hr,-(hr*19i + hr^2*1i + hr^(1/2)*18i + hr^(3/2)*8i - f^2*hr^2*3i - f^2*hr^3*1i - f^2*hr^(5/2)*3i + 6i)/hr,0];
obj.R3{3}=[0,0,hr^(3/2)*2i - hr^(1/2)*20i - hr*8i - 10i;0,0,(hr^(1/2) + 1)^2*10i;-(3*(hr*15i + hr^(1/2)*15i + hr^(3/2)*5i - f^2*hr^2*1i - f^2*hr^(5/2)*1i + 5i))/hr,-(hr*50i + hr^2*5i + hr^(1/2)*45i + hr^(3/2)*25i - f^2*hr^2*3i - f^2*hr^3*2i - f^2*hr^(5/2)*3i + 15i)/hr,0];
obj.R3{4}=[0,0,- hr*12i - hr^(1/2)*20i - hr^(3/2)*2i - 10i;0,0,(hr^(1/2) + 1)^2*10i;-(hr*60i + hr^(1/2)*60i + hr^(3/2)*20i - f^2*hr^2*1i - f^2*hr^(5/2)*1i + 20i)/hr,-(hr*70i + hr^2*10i + hr^(1/2)*60i + hr^(3/2)*40i - f^2*hr^2*1i - f^2*hr^3*1i - f^2*hr^(5/2)*1i + 20i)/hr,0];
obj.R3{5}=[0,0,- hr*8i - hr^(1/2)*10i - hr^(3/2)*3i - 5i;0,0,(hr^(1/2) + 1)^2*5i;-(15*(hr*3i + hr^(1/2)*3i + hr^(3/2)*1i + 1i))/hr,-(5*(hr*11i + hr^2*2i + hr^(1/2)*9i + hr^(3/2)*7i + 3i))/hr,0];
obj.R3{6}=[0,0,-(hr^(1/2) + 1)*(hr + hr^(1/2) + 1)*1i;0,0,(hr^(1/2) + 1)^2*1i;-((hr^(1/2) + 1)*(hr + 2*hr^(1/2) + 1)*6i)/hr,-(hr*23i + hr^2*5i + hr^(1/2)*18i + hr^(3/2)*16i + 6i)/hr,0];
obj.R3{7}=[0,0,0;0,0,0;-((hr^(1/2) + 1)*(hr + 2*hr^(1/2) + 1)*1i)/hr,-((hr + hr^(1/2) + 1)*(hr + 2*hr^(1/2) + 1)*1i)/hr,0];



obj.LR(2)=(f^2*hr^4*(hr^(1/2) + 1)^2*(hr + hr^(1/2) - 2))/(hr + hr^(1/2));
obj.LR(3)=-f^2*hr^2*(2*hr - 4*hr^2 + 6*hr^(1/2) - 8*hr^(3/2) + 1);
obj.LR(4)=2*f^2*hr*(3*hr^2 - 3*hr^(1/2) + 6*hr^(3/2) - 1);
obj.LR(5)=f^2*(2*hr + 4*hr^2 - 2*hr^(1/2) + 8*hr^(3/2) - 1);
obj.LR(6)=f^2*(hr^(1/2) + 1)^2;

obj.RR4(1)=-hr^2*(hr^3 + hr^4 + 2*hr^(7/2) - f^2*hr^2);
obj.RR4(2)=2*f^2*hr^3 - 5*hr^5 - 10*hr^(9/2) - 5*hr^4;
obj.RR4(3)=f^2*hr^2 - 10*hr^4 - 20*hr^(7/2) - 10*hr^3;
obj.RR4(4)=- 10*hr^2 - 10*hr^3 - 20*hr^(5/2);
obj.RR4(5)=- 5*hr - 5*hr^2 - 10*hr^(3/2);
obj.RR4(6)=- hr - 2*hr^(1/2) - 1;

obj.RR1{1}=[0,0,0;3*f^2*hr^4 - 2*hr^(9/2) - 2*hr^(11/2) - 4*hr^5 - 2*f^2*hr^5 + 2*f^2*hr^(9/2) - f^2*hr^(11/2),-f^2*hr*(hr^3 - hr^4 + 2*hr^(5/2) - 2*hr^(7/2)),0;0,0,(hr^2 + hr^(3/2))*(hr^3 + hr^4 + 2*hr^(7/2) - f^2*hr^2)];
obj.RR1{2}=[0,0,0;6*f^2*hr^3 - 16*hr^4 - 10*hr^(7/2) - 8*hr^(9/2) - 2*hr^3 - 8*f^2*hr^4 + 4*f^2*hr^(5/2) + 2*f^2*hr^(7/2) - 4*f^2*hr^(9/2),4*f^2*hr^4 - 2*f^2*hr^2 - 4*f^2*hr^(5/2) + 8*f^2*hr^(7/2),0;0,0,hr^3 + 16*hr^4 + 5*hr^5 + 7*hr^(7/2) + 15*hr^(9/2) - f^2*hr^2 - 2*f^2*hr^3 - 2*f^2*hr^(5/2)];
obj.RR1{3}=[0,0,0;-(2*(3*hr^2 - f^2*hr + 21*hr^3 + 6*hr^4 + 12*hr^(5/2) + 18*hr^(7/2) - 3*f^2*hr^2 + 8*f^2*hr^3 + 3*f^2*hr^4 - 2*f^2*hr^(3/2) + f^2*hr^(5/2) + 9*f^2*hr^(7/2)))/(hr^(1/2) + 1),4*f^2*hr^2 - 2*f^2*hr + 6*f^2*hr^3 - 2*f^2*hr^(3/2) + 12*f^2*hr^(5/2),0;0,0,4*hr^2 - f^2*hr + 34*hr^3 + 10*hr^4 + 18*hr^(5/2) + 30*hr^(7/2) - f^2*hr^2 - f^2*hr^(3/2)];
obj.RR1{4}=[0,0,0;- 6*hr - 2*f^2*hr - 16*hr^2 - 14*hr^(3/2) - 8*hr^(5/2) - 8*f^2*hr^2 - 6*f^2*hr^(3/2) - 4*f^2*hr^(5/2),4*f^2*hr + 4*f^2*hr^2 + 8*f^2*hr^(3/2),0;0,0,6*hr + 36*hr^2 + 10*hr^3 + 22*hr^(3/2) + 30*hr^(5/2)];
obj.RR1{5}=[0,0,0;- 4*hr - 2*f^2*hr - f^2 - 4*hr^(1/2) - 2*hr^(3/2) - 2*f^2*hr^(1/2) - f^2*hr^(3/2) - 2,f^2*(hr + 2*hr^(1/2) + 1),0;0,0,19*hr + 5*hr^2 + 13*hr^(1/2) + 15*hr^(3/2) + 4];
obj.RR1{6}=[0,0,0;0,0,0;0,0,((hr + hr^(1/2) + 1)*(hr + 2*hr^(1/2) + 1))/hr];

obj.RR2{1}=[f^2*hr^3*(hr^(1/2) + 1)*(hr^2 - hr + hr^(3/2)),-f^2*hr^4*(hr^(1/2) + 1)^2,0;-hr^2*(hr^3 + hr^4 + 2*hr^(7/2) - f^2*hr^3 - f^2*hr^4 - 2*f^2*hr^(7/2)),-f^2*hr^4*(hr^(1/2) + 1)*(hr + hr^(1/2) + 1),0;0,0,hr^2*(hr^(1/2) + 1)*(hr^3 + hr^4 + 2*hr^(7/2) - f^2*hr^2)];
obj.RR2{2}=[8*f^2*hr^4 - 2*f^2*hr^3 + 2*f^2*hr^(7/2) + 4*f^2*hr^(9/2),-4*f^2*hr^3*(hr^(1/2) + 1)^2,0;6*f^2*hr^4 - 5*hr^5 - 10*hr^(9/2) - 5*hr^4 + 4*f^2*hr^5 + 2*f^2*hr^(7/2) + 8*f^2*hr^(9/2),-4*f^2*hr^3*(hr^(1/2) + 1)*(hr + hr^(1/2) + 1),0;0,0,6*hr^4 + 18*hr^5 + 18*hr^(9/2) + 6*hr^(11/2) - 3*f^2*hr^3 - 3*f^2*hr^(7/2)];
obj.RR2{3}=[12*f^2*hr^3 + 6*f^2*hr^(5/2) + 6*f^2*hr^(7/2),-6*f^2*hr^2*(hr^(1/2) + 1)^2,0;f^2*hr^2 - 10*hr^4 - 20*hr^(7/2) - 10*hr^3 + 12*f^2*hr^3 + 6*f^2*hr^4 + 6*f^2*hr^(5/2) + 12*f^2*hr^(7/2),-6*f^2*hr^2*(hr^(1/2) + 1)*(hr + hr^(1/2) + 1),0;0,0,15*hr^3 + 45*hr^4 + 45*hr^(7/2) + 15*hr^(9/2) - 3*f^2*hr^2 - 3*f^2*hr^(5/2)];
obj.RR2{4}=[2*f^2*hr + 8*f^2*hr^2 + 6*f^2*hr^(3/2) + 4*f^2*hr^(5/2),-4*f^2*hr*(hr^(1/2) + 1)^2,0;2*f^2*hr - 10*hr^2 - 10*hr^3 - 20*hr^(5/2) + 10*f^2*hr^2 + 4*f^2*hr^3 + 6*f^2*hr^(3/2) + 8*f^2*hr^(5/2),-4*f^2*hr*(hr^(1/2) + 1)*(hr + hr^(1/2) + 1),0;0,0,20*hr^2 - f^2*hr + 60*hr^3 + 60*hr^(5/2) + 20*hr^(7/2) - f^2*hr^(3/2)];
obj.RR2{5}=[f^2*(hr^(1/2) + 1)*(hr + hr^(1/2) + 1),-f^2*(hr^(1/2) + 1)^2,0;3*f^2*hr - 5*hr + f^2 - 5*hr^2 - 10*hr^(3/2) + f^2*hr^2 + 2*f^2*hr^(1/2) + 2*f^2*hr^(3/2),-f^2*(hr^(1/2) + 1)*(hr + hr^(1/2) + 1),0;0,0,15*hr + 45*hr^2 + 45*hr^(3/2) + 15*hr^(5/2)];
obj.RR2{6}=[0,0,0;- hr - 2*hr^(1/2) - 1,0,0;0,0,18*hr + 18*hr^(1/2) + 6*hr^(3/2) + 6];
obj.RR2{7}=[0,0,0;0,0,0;0,0,((hr^(1/2) + 1)*(hr + 2*hr^(1/2) + 1))/hr];


obj.RR3{1}=[0,0,hr^2*(hr^(1/2) + 1)*(hr^3 + hr^4 + 2*hr^(7/2) - f^2*hr^2)*1i;0,0,hr*(hr^2 + hr^(3/2))*(hr^3 + hr^4 + 2*hr^(7/2) - f^2*hr^2)*1i;hr^4*(hr^(1/2) + 1)*(hr^2 - hr + hr^(3/2))*1i,-hr^5*(hr^(1/2) + 1)^2*1i,0];
obj.RR3{2}=[0,0,hr^4*6i + hr^5*18i + hr^(9/2)*18i + hr^(11/2)*6i - f^2*hr^3*3i - f^2*hr^(7/2)*3i;0,0,hr^4*1i + hr^5*19i + hr^6*6i + hr^(9/2)*8i + hr^(11/2)*18i - f^2*hr^3*1i - f^2*hr^4*3i - f^2*hr^(7/2)*3i;hr^5*10i - hr^4*3i + hr^(9/2)*2i + hr^(11/2)*5i,-hr^4*(hr^(1/2) + 1)^2*5i,0];
obj.RR3{3}=[0,0,hr^3*15i + hr^4*45i + hr^(7/2)*45i + hr^(9/2)*15i - f^2*hr^2*3i - f^2*hr^(5/2)*3i;0,0,hr^3*5i + hr^4*50i + hr^5*15i + hr^(7/2)*25i + hr^(9/2)*45i - f^2*hr^2*2i - f^2*hr^3*3i - f^2*hr^(5/2)*3i;hr^4*20i - hr^3*2i + hr^(7/2)*8i + hr^(9/2)*10i,-hr^3*(hr^(1/2) + 1)^2*10i,0];
obj.RR3{4}=[0,0,hr^2*20i - f^2*hr*1i + hr^3*60i + hr^(5/2)*60i + hr^(7/2)*20i - f^2*hr^(3/2)*1i;0,0,hr^2*10i - f^2*hr*1i + hr^3*70i + hr^4*20i + hr^(5/2)*40i + hr^(7/2)*60i - f^2*hr^2*1i - f^2*hr^(3/2)*1i;hr^2*2i + hr^3*20i + hr^(5/2)*12i + hr^(7/2)*10i,-hr^2*(hr^(1/2) + 1)^2*10i,0];
obj.RR3{5}=[0,0,hr*15i + hr^2*45i + hr^(3/2)*45i + hr^(5/2)*15i;0,0,hr*10i + hr^2*55i + hr^3*15i + hr^(3/2)*35i + hr^(5/2)*45i;hr*3i + hr^2*10i + hr^(3/2)*8i + hr^(5/2)*5i,-hr*(hr^(1/2) + 1)^2*5i,0];
obj.RR3{6}=[0,0,hr*18i + hr^(1/2)*18i + hr^(3/2)*6i + 6i;0,0,hr*23i + hr^2*6i + hr^(1/2)*16i + hr^(3/2)*18i + 5i;(hr^(1/2) + 1)*(hr + hr^(1/2) + 1)*1i,-(hr^(1/2) + 1)^2*1i,0];
obj.RR3{7}=[0,0,((hr^(1/2) + 1)*(hr + 2*hr^(1/2) + 1)*1i)/hr;0,0,((hr + hr^(1/2) + 1)*(hr + 2*hr^(1/2) + 1)*1i)/hr;0,0,0];


