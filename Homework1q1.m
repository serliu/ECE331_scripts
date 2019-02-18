%% Homework 1 Question 1

%The static current ID in a PN-junction diode is 2.0 mA for a bias voltage VPN = 0.82 V. 
%(a) Calculate the diode saturation current IS if the ideality factor ? = 1.
%(b) Calculate the diode current at VPN = ? 5.0 V.
format long
% Constants 
q = 1.602177E-19;
kB = 1.38058E-23
nu = 1;
T=300;
Vt = 0.025852

%Knowns
VPN = .82;
ID = 2E-3;
%% Part a 
Vtcalc = kB*T/q
IS = ID / (exp(q*VPN/(kB*T))-1)

% When I calculate with kbt/q, diff answer than Vt

%% Part B

VPN = -5

ID = IS*(exp(q*VPN/(kB*T))-1) 