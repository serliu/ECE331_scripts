%% Homework 4 q 3
munchcox = 50E-6
W = 30
L = 3
VTn0 = 1
ID = 500E-6
Kn = munchcox *10

syms VGS
eqn1 = munchcox * W/(2*L) * (VGS - VTn0)^2 ==ID
S = solve(eqn1)


gm = sqrt(50E-6 * 10 *2 * 500E-6)

RL = 10000
RD = 5E3
Rout = RD % RD//rds, rds = inf 

 % Gains
RP = RD * RL / (RD + RL)%rds//RL//RD
gm = sqrt (2* Kn * ID)
Avt = -gm * RP
Av = Avt
Ai = -gm * RP * RG/RL