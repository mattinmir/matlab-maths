clear;              %Van Der Poll oscillator
x = 0;
y = 0;
E = 3;              %Set yinitial condition y at x_0
R = 250;            %Set the value of epilson vary between [1/2,10]
C = 3.5*10^(-6);    %Set step-size
tf = 50;
ts = (0:h:tf);      %Create the vector for time
N = round((tf-0)/h);  
h = 0;
 
% x'' = F(t)+ E*(1-x^2)*y-x
% y = x'
 
x1 = ( 1:N );       %create a vector to store the value of x
y1 = ( 1:N );       %create a vector to store the value of y
 
for j = 1: N+1
    %F(j) = 0;
    F(j) = 0.5*sin(5000*ts(j)); %create a sinewave
end
 
for j = 1: N+1
    x1(j) = x;
    y1(j) = y;
    f = @(x,y)E*(1-x*x)*y-x+F(j);
    y = ruka4(f,x,y,h)
    x = x + h*y;
end
 
subplot (2,1,1);
plot(x1,y1);
title('x vs y');
xlabel('x');
ylabel('y');
subplot(2,1,2);
plot(ts,x1);
title('t vs x');
xlabel('t');
ylabel('x');