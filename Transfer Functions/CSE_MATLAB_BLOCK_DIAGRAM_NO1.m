%% clear
clear
clc
close all

%% Defining Functions  
% since G1-G3 and H1-H3 has same nemerator, they share the same variable

G_num = [0 1];

G1_den = [1 0 0];
G2_den = [1 1];
G3_den = [1 0];

H_num = [0 1];

H1_den = [1 0 ];
H2_den = [1 -1];
H3_den = [1 -2];

%% Block Diagram Reduction Process

G1 = tf(G_num,G1_den);
G2 = tf(G_num,G2_den);
G3 = tf(G_num,G3_den);

H1 = tf(H_num,H1_den);
H2 = tf(H_num,H2_den);
H3 = tf(H_num,H3_den);

TF_num = G1*G3*(G2+1);

TF_den = (1 + G2*H2 + G1*G2*H1)*(1 + G3*H3);

tf = TF_num/TF_den;

disp(tf)

tfnum = [0 0 0 1 1 -5 -5 4 4 0 0 0 0];
tfden = [1 0 -2 0 2 -1 -2 2 1 -1 0 0 0];