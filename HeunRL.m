function y_new = HeunRL(Vin, R, L, y0, h, tf)
   t = 0 : h :tf;
   y(1) = y0;
   yp(1) = 0;
   for i = 1:length(t)-1
        yp(i+1) = y(i) + h * feval(Vin, t(i), y(i));
        y(i+1) = y(i) + h * (feval(Vin, t(i), y(i)) + feval(Vin, t(i+1), yp(i+1))) / 2 ;

   end
    plot (t,y);
    xlabel('time')
    ylabel('y')
    disp(y(end))
    y_new = y;
    
end
