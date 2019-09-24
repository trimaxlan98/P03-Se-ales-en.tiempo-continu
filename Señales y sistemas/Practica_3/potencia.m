function [Pf,rms] = potencia (E,T) 
Ef=@(t)E(t).^2;
Pf=(1/T).*integral(Ef,0,T);
rms=sqrt(Pf)
end