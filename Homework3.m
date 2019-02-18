%% Problem 2, b
id = 17.5E-3
Vgs = 1.5
Vtn = .3
Kn = 2* id / (Vgs - Vtn)^2


%% Problem 2 c 
xox = 40E-8
eo = 8.854E-14
eox = 3.9 *eo
cox = eox / xox
l = 0.13
w = 15
munch = id * 2 * l / (cox*w * (Vgs - Vtn)^2)

%% Problem 4, a find id 
Kn4 = 500E-6
Vtn4 = 1
Vds = 6
Vgs4 = 5
lambda = .025
Vbs = 0 
id4 = (Kn4 / 2) * (Vgs4 -Vtn4)^2 * (1+ lambda*Vds)

%% Problem 4, a find id w/o channel length mod

id4b = (Kn4 / 2) * (Vgs4 -Vtn4)^2 

%% Problem 5a, find I given two mosfets
munch5cox = 100E-6 
W5 = 20
L5= 1 
Vdd = 10
Va = Vdd/2
Vtn5 = 1 

id5 = munch5cox/2 * W5/L5 * (Va - Vtn5)^2

%% Part c
phif = .6
lamb5c = .5
Vto = 1
%Vtn5mos1 = Vto - lamb5c * (sqrt(Vsb + phif) - sqrt(phif))
Vac = 2.27011
Vtn5mos1 = 1
id5c = munch5cox/2 * W5/L5 * (Vac - Vtn5mos1)^2