function []=graficasProblema6 ()
x1 = @(t) 1.*((t>=0) & (t<2));

y1=@(t) (1.*((t>=0) & (t<1)))+(-1.*((t>=1) & (t<2)));

x2=@(t) sin(t).*((t>=0) & (t<2*pi));

y2 = @(t) 1.*((t>=0) & (t<2*pi));

x3=@(t) sin(t).*((t>=0) & (t<pi));

y3 = @(t) 1.*((t>=0) & (t<pi));

t=-1:0.001:(2*pi)+1;
figure

subplot(3,2,1)
plot(t,x1(t))
grid on
axis([-1, (2*pi)+1 -1.5 1.5])
title('a. x(t)')

subplot(3,2,2)
plot(t,y1(t))
grid on
axis([-1, (2*pi)+1 -1.5 1.5])
title('a. y(t)')

subplot(3,2,3)
plot(t,x2(t))
grid on
axis([-1, (2*pi)+1 -1.5 1.5])
title('b. x(t)')

subplot(3,2,4)
plot(t,y2(t))
grid on
axis([-1, (2*pi)+1 -1.5 1.5])
title('b. y(t)')

subplot(3,2,5)
plot(t,x3(t))
grid on
axis([-1, (2*pi)+1 -1.5 1.5])
title('c. x(t)')

subplot(3,2,6)
plot(t,y3(t))
grid on
axis([-1, (2*pi)+1 -1.5 1.5])
title('c. y(t)')
end