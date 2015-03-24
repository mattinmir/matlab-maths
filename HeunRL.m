function HeunRL(Vin , R , L ,h, i0, tf)

N = round(tf/h);

for j = 1:N+1
    t(j) = h*(j-1);
end

y(1) = i0;

for j =1:N
    igrad = (1/L)*(Vin(j*h) - R*y(j)); %i'
    ip = y(j) + h*(igrad); %predictor
    ingrad = (1/L)*(Vin((j+1)*h) - R*ip); % i'+1
    iave = 0.5*(igrad + ingrad); %average
    vout(j+1) = Vin(j*h) - R*y(j); %output voltage
    y(j+1) = y(j) + h*iave; %corrector
end


plot(t, vout, '-');
grid;
xlabel('Time(s)');
ylabel('Voltage (V)');









