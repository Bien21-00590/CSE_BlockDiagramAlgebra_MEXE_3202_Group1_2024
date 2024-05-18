clear all
clc

%% Block Diagram sheesh

G1N = 1;
G1D = [1 0 0];

G1 = tf(G1N,G1D)

G2N = 1;
G2D = [1 1];

G2 = tf(G2N,G2D)

G3N = 1;
G3D = [1 0];

G3 = tf(G3N,G3D)

G4N = 1;
G4D = [2 0];

G4 = tf(G4N,G4D)

H1N = 1;
H1D = [1 0];

H1 = tf(H1N,H1D)

H2N = 1;
H2D = [1 -1];

H2 = tf(H2N,H2D)

H3N = 1;
H3D = [1 -2];
 
H3 = tf(H3N,H3D)

TFnum = G1*G2*G3*G4;

TFden = 1 + G1*G2*G3*G4*H1 + G2*G3*H2 + G3*G4*H3;

TF = TFnum/TFden

tnum = [4 -4 -12 4 8 0 0 0 0 0 0 0 0];
tden = [8 0 -32 -4 +32 -8 -20 -8 -12 +4 +8 0 0 0 0 0 0 0];

tff = tf((tnum),(tden))

