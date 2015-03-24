function Vout = Heun(Vin,R,L,h,i0,tf)
t = 0;                                                      %time equal zero
i=i0;                                                       %Setting initial current
N = round((tf-t)/h);                                        %number of steps: (interval size)/(step size)
Vout(1:N)=zeros;                                              
for j = 1:N
      ip = i + h*(1/L)*(Vin(t)-(R*i));                     %Predictor for the next value
      iave = 0.5*(1/L)*(Vin(t)-(R*i)) + (Vin(t+h)-(R*ip)); %Average gradient over (x, x+h)
      i = i + iave*h;                                      %Corrector equation
      Vout(j+1) = Vin(t)-(R*i);                            %The vout of inductor and store the values into the vector  
      t = t + h;                                           %Increase x by stepsize
end
end



% yip1=i0;
% Vout = ( 1:N+1 );                                        %Defining a vector of Vout
%  
% for j = 1:N+1                                             %loop for N steps
%     
%     yp = y + h*(1/L)*(Vin(t)-(R*y));                      %Predictor for the next value
%     yave = (0.5*(1/L))*(Vin(t)-(R*y)) + (Vin(t+h)-(R*yp));%Average gradient over (x, x+h)
%     yip1 = y+h*yave;                                      %new y from euler, using yave as gradient
%    
%     Vout(j) = (Vin(t)-(R*y));                             %The vout of inductor and store the values into the vector  
%     y = yip1;
%     t = t + h;                                            %Increase x by stepsize
% end
%  
% end
