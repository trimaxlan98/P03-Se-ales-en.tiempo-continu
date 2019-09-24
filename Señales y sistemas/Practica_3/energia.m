
function [] = energia (E)
Ef= @(t)E(t).^2;
integral(Ef, 0,100)
end