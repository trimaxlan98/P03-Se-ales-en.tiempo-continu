function [Pf,rms] = potenciac (E,T,c) 
assume(in(c,'integer')& c>0) 
Ef=@(t)E(t).^2;
Pf=(1/T)*int(Ef,t,0,T);
rms=sqrt(Pf)
end