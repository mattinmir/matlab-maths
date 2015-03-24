clear;
R = 250;
C = 3.5*10^(-6);
L = 0.6;
t = 0;
q = 500*10^(-9);
i = 0;
h = 0.001;
tf = 0.8;
ts = (t:h:tf);
N = round(tf-t)/h;
tau = 3*10^-3;
Vin = ( 1:N );
 
 
for j = 1:N 
    %Vin(j) = 5;                            %Create a DC Voltage
    %Vin(j) = 5*exp(-(ts(j)*ts(j))/tau);    %Create a exponential wave        
    Vin(j) = 5*exp(-ts(j))/tau;            %Create a exponential wave
    %Vin(j) = 5*sin(5000*ts(j));            %Create a sinewave
    %Vin(j) = 5*square(2*pi*1000*ts(j));    %Create a square wave
end
 
plot(t,i,'*');
hold on;
 
for j = 1:N;
    f = @(ts,i)1/L*(-R*i-(1/C)*q+Vin(j));
    i = ruka4(f,q,i,h);
    q = q+h*i;
    Vout (j+1) = i*R;
end
 
plot(ts, Vout, 'b');
xlim(0,0.15);
