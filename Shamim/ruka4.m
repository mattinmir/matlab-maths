function yip1 = ruka4(func,xi,yi,h)
%find y_(i+1) from x_i, y_i
%using the classic RK4 method, stepsize h
%func is function handle for 2-var function
 
k1=feval(func,xi,yi);   %evaluate funct(xi,yi)
k2=feval(func,xi+h/2,yi+h*k1/2);
k3=feval(func,xi+h/2,yi+h*k2/2);
k4=feval(func,xi+h,yi+h*k3);
 
phi=(k1+2*(k2+k3)+k4)/6;
yip1 = yi+h*phi;