clear       %RL Circuit                     %Clear Everything
t=0;                                        %Set time = 0
R=0.5;                                      %Initial resistance is R=0.5 ohms
tf = 5e-2;                                  %Last element for the time vector ts
L=0.0015;                                   %Initial inductance is L=0.0015;
i0=0;                                       %Set initial conditions
h=0.001;                                   %Set step-size (increment)
ts = (t:h:tf);                              %Create a vector for time
tau = L/R;                                  %Used for other input types

  %Vin =  @(ts) 5;                          %Create a DC Voltage
  %Vin = @(ts) 5*exp(-ts/tau);              %Create a exponential wave
  Vin = @(t) 5*sin(2*pi*(1/0.06)*t);        %Create a sinewave
  
Vout = Heun(Vin,R,L,h,i0,tf);
plot(ts, Vout, 'b.');                       %Plotting Vout
title('Vout when Vin = Sinusoidal Input')   %Title
xlabel('Time/us')                           %x-axis label
ylabel('Voltage/V')                         %y-axis label
hold on;                                    %Hold on allows for continous plotting


  %Vin = @(t) 5*square(2*pi*1000*j);        %Create a square wave









%plot(ts, Vin(ts),'r');
                                            %plotting the exact solutions
%hold on;                                    %figure for the exact solution
 
%tv = 0:h:tf;                                %Creating a vector for time
% Vout= 5*exp(-tv/(tau));
% plot(tv,Vout,'r');
 
% Vout = 4.88*sin((1500-1.321)*tv);           %Creating exact solutions
% plot(tv,Vout,'g');



%  for j= 1:1:N+1
% %     disp(['J: ' num2str(j)]);
% %     %Vin(j) = 5;                            %Create a DC Voltage
% %    %Vin(j) = 5*exp(-ts(j)/tau);            %Create a exponential wave        
% %     %Vin(j) = 5*square(2*pi*1000*j);        %Create a square wave
% %     %Vin(j) = 5*sin(1500*ts(j));            %Create a sinewave
% end
 
% plot(t,i0,'*');                             %Plotting the initial conditions
% hold on;                                    %Figure opening for taking in more data






 
