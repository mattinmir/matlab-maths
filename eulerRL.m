function y_new = eulerRL(func, t0, y0, tn, h)
   t = t0 : h :tn;
   y(1) = y0;
   
   for i = 1:length(t)-1
        y(i+1) = y(i) + h * feval(func, t(i), y(i));

   end
    plot (t,y);
    xlabel('time')
    ylabel('y')
    disp(y(end))
    y_new = y;
    
end

