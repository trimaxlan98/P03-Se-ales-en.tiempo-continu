function [] = graficaProblema7()
fs = 1000; 
T=4;
p1 =@(t)((t.^3).*((t>=-2) & (t<=2)));
%p1@(t)*(heaviside(t+2)-heaviside(t-2));
p2=@(t)p1(mod(t,4))+p1(mod(t,-4));
t = -9:1/fs:9;
figure
plot(t,p2(t))
axis([-9 9 -15 15])
grid on
xlabel('Time (sec)')
ylabel('Amplitude') 
title('x(t)')
end