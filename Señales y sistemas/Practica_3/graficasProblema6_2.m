function []=graficasProblema6_2 ()
x1 = @(t) 1.*((t>=0) & (t<2));
%x1 = @(t)(heaviside(t)-heaviside(t-2));
y1=@(t) (1.*((t>=0) & (t<1)))+(-1.*((t>=1) & (t<2)));
%y1=@(t) (heaviside(t)-heaviside(t-1))-(heaviside(t-1)-heaviside(t-2));
x2=@(t) sin(t).*((t>=0) & (t<2*pi));
%x2=@(t) sin(t)*(heaviside(t)-heaviside(t-(2*pi)));
y2 = @(t) 1.*((t>=0) & (t<2*pi));
%y2 = @(t)(heaviside(t)-heaviside(t-(2*pi)));
x3=@(t) sin(t).*((t>=0) & (t<pi));
%x3=sin(t)*(heaviside(t)-heaviside(t-pi));
y3 = @(t) 1.*((t>=0) & (t<pi));
%y3 = @(t)(heaviside(t)-heaviside(t-pi));
t=-1:0.001:(2*pi)+1;
figure

subplot(3,2,1)
plot(t,x1(t)+y1(t))
grid on
axis([-1, (2*pi)+1 -2.2 2.5])
title('a. x(t)+y(t)')

subplot(3,2,2)
plot(t,x1(t)-y1(t))
grid on
axis([-1, (2*pi)+1 -2.2 2.5])
title('a. x(t)-y(t)')

subplot(3,2,3)
plot(t,x2(t)+y2(t))
grid on
axis([-1, (2*pi)+1 -2.2 2.5])
title('b. x(t)+y(t)')

subplot(3,2,4)
plot(t,x2(t)-y2(t))
grid on
axis([-1, (2*pi)+1 -2.2 2.5])
title('b. x(t)-y(t)')

subplot(3,2,5)
plot(t,x3(t)+y3(t))
grid on
axis([-1, (2*pi)+1 -2.2 2.5])
title('c. x(t)+y(t)')

subplot(3,2,6)
plot(t,x3(t)-y3(t))
grid on
axis([-1, (2*pi)+1 -2.2 2.5])
title('c. x(t)-y(t)')
end