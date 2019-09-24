clear all
x = @(t) (-t.*((t>=-4) & (t<0))+t.*((t>=0) & (t<2)));
t=-7:0.0001:7;
figure

subplot(2,5,3)
plot(t,x(t))
grid on
axis([-7 7 0 5])
title('x(t)')

subplot(2,5,6)
plot(t,x(t-4))
grid on
axis([-7 7 0 5])
title('x(t-4)')

subplot(2,5,7)
plot(t,x(t/1.5))
grid on
axis([-7 7 0 5])
title('x(t/1.5)')

subplot(2,5,8)
plot(t,x(-t))
grid on
axis([-7 7 0 5])
title('x(-t)')

subplot(2,5,9)
plot(t,x(2*t-4))
grid on
axis([-7 7 0 5])
title('x(2t-4)')

subplot(2,5,10)
plot(t,x(2-t))
grid on
axis([-7 7 0 5])
title('x(2-t)')