 function []= Mifigure()
      w = -2:0.01:2;
      a=1;
             figure
             plot(w,a./((a^2).*(w.^2)))
 end