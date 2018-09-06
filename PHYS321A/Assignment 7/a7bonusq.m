%% Seting up the ODE solver
type particlemotion

%%
% Creates initial conditions as a vector [x1,x2,y1,y2,vx1,vx2,vy1,vy2]

initialconditions=[-10,0,0.5,-0.5,10,0,0,0];
time=[0,2.025];

[t,sol]=ode45(@particlemotion,time,initialconditions);

%% Part A
figure('name','Height Part A','NumberTitle','on');
hold on;
title('Trajectory of particle 1 and particle 2')
ylabel('y component (m)')
xlabel('x component (m)')
plot(sol(:,1),sol(:,3),'r'); %particle 1
plot(sol(:,2),sol(:,4),'b'); %particle 2
axis([-11 11 -1 1]);

hold off;


%% Part B
v1final=[sol(53,5),sol(53,7)];
v2final=[sol(53,6),sol(53,8)];
xdir=[1,0];
ydir=[0,-1];

CosThetaScatter = dot(v1final,xdir)/(norm(v1final)*norm(xdir));
ThetaInDegreesScatter = acosd(CosThetaScatter);

CosThetaRecoil = dot(v2final,xdir)/(norm(v2final)*norm(xdir));
ThetaInDegreesRecoil = acosd(CosThetaRecoil);

Theta=ThetaInDegreesScatter+ThetaInDegreesRecoil

%%
% We observe that the sum of these angles is approximately equal to 90 degrees. 

%% Part C
m=1.0;

%%
% The final momentum is equal to the mass multiplied by the sum of
% velocities

pfinal=m*(v1final+v2final)

%%
% The initial momentum is 10kgm/s in the x direction

pinitial=m*10*[1,0] 

%%
% These momenta are clearly equal.