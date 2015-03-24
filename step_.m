function y = step_(t)
   y = 5*heaviside(t);
end

HeunRL(@step_, 0.5, 0.0015, 0.0001, 0, 0.05);