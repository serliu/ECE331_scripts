%% Homework 1 q 2 

% A circuit that includes a constant-voltage source VS ,
% a resistance R1, and a PN-junction diode connected in series
% (a) Using the constant-voltage diode model with 
% VON = 0.50 V and a breakdown voltage of ? 4 V, plot the load line and 
% determine the operating point if VS = 10 V and R1 = 5 k?.
% (b) Repeat for VS =?10V and R1 =5k?.
% (c) Repeat for VS =?2V and R1 =2k?.


format long

% Constants 
q = 1.602177E-19;
kB = 1.38058E-23
nu = 1;
T=300;
Vt = 0.025852

% Knowns
VON = 0.5
VBD = -4

%% Constant diode model
% Assume ID>0, diode replaced by cnst V source, Von. Check ID>0
% Assume VPN<Von, open ckt ID=0, check VPN<Von



%% a -- looks like forward biased since VS > Von
% check: ID > 0 
VS = 10 ;
R1 = 5E3 ;

ID_a = (VS - VON)/R1 %CKT analysis

%% b -- seems breakdown since VS < Von
VS = -10 ;
R1 = 5E3; 
VPN = VBD;

ID_b = (VS - VPN)/R1 %CKT analysis

%% c -- seems reverse biased since  VBD < VS < Von
VS = -2;
R1 = 2E3 ;
VPN = VBD

ID_c = 0
VPN = VS - R1*ID_c

% check VPN < Von



