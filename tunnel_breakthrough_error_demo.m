clear;clc;close all

n= [0:20]; % number of stations
s= 50; % leg distances between geodetic marks  in a tunnel_breakthrough_error
sigma_angle = 10; % the standard deviation for the angles measurement in arc seconds


%
sigma_angle = sigma_angle/3600*pi/180; % convert angle units to radians

sigma_breakthrough=tunnel_breakthrough_error(n,s,sigma_angle);

figure
plot(n,sigma_breakthrough*1000);
grid on;
xlabel('Number of stations');
ylabel('Lateral displacement error [mm]');

figure
plot(n*s,sigma_breakthrough*1000);
grid on;
xlabel('Traverse length [meter]');
ylabel('Lateral displacement error [mm]');


