function amp = function5a (R,f)

w_d = 2*pi*f;
C = 15*10^-6; 
L = 120 * 10^-3;
v_m = 12;
amp = (v_m)./(sqrt(R.^2 + ((w_d.*L -1)./(w_d.*C)).^2));