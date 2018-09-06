%% Fowels and Cassidy Problem C 4.1
% Luke Polson
% V00849485
%% Constants
% Defines all the constants used in the program. Converts all numbers to
% standard units.

h=50000/3.28084; %Converts to meters
% Diameter
D=2*0.2; %2*radius
% Mass
m=100;
% Gravity
g= 9.81;
%Speed of air WRT Ground
V = -26.8224;
% Friction constants
c1=(1.55*10^(-4))*D;
c2=(0.22)*D^2;
% Speed of plane WRT Ground - obtained through trial and error
vplane = 18.524;
%% Differential Equations
% Solves for x as a function of time and y as a function of time.
yheight=@(t,y)[y(2); -(c1/m)*y(2)-(c2/m)*y(2)*abs(y(2))-g];
sol1 = ode45(yheight, [0,500], [h,0]);
y1 = 0:0.1:150;
y = deval(sol1,y1,1);

xheight=@(t,x)[x(2); -(c1/m)*(x(2)-V)-(c2/m)*(x(2)-V)*abs(x(2)-V)];
sol1 = ode45(xheight, [0 500], [0,vplane]);
x1 = 0:0.1:150;
x = deval(sol1,x1,1);

%% Part A/B
% Plots trajectory of bomb with vplane = 18.524m/s with respect to the ground. This value
% was obtained by plotting various times and optimizing so that the x
% intercept was as close to zero as possible
figure('name','Part A/B','NumberTitle','on');
hold on;
title('Trajectory of Bomb Drop')
ylabel('y coordinate (m)')
xlabel('x coordinate (m)')
plot(x,y)
ylim([0,inf])
hold off;
%%
% The trailing side of the trajectory is linear because the bomb has
% reached terminal velocity with respect to the air in terms of y,
% and is moving with constant velocity with respect to the air in terms of
% x.

%% Part C
% The values of the following speeds were obtained by plotting various
% initial plane speeds and finding the values at which the x axis
% intercepted at x=-100 and x=100. 

%%
% This value corresponds to the bomb landing 100m east of the target

vplane=21.2;

xheight=@(t,x)[x(2); -(c1/m)*(x(2)-V)-(c2/m)*(x(2)-V)*abs(x(2)-V)];
sol1 = ode45(xheight, [0 500], [0,vplane]);
x1 = 0:0.1:150;
x = deval(sol1,x1,1);


figure('name','Part A/B','NumberTitle','on');
hold on;
title('Trajectory of Bomb Drop')
ylabel('y coordinate (m)')
xlabel('x coordinate (m)')
plot(x,y)
ylim([0,inf])
hold off;

%%
% This value corresponds to the bomb landing 100m west of the target

vplane=16.0;

xheight=@(t,x)[x(2); -(c1/m)*(x(2)-V)-(c2/m)*(x(2)-V)*abs(x(2)-V)];
sol1 = ode45(xheight, [0 500], [0,vplane]);
x1 = 0:0.1:150;
x = deval(sol1,x1,1);

figure('name','Part A/B','NumberTitle','on');
hold on;
title('Trajectory of Bomb Drop')
ylabel('y coordinate (m)')
xlabel('x coordinate (m)')
plot(x,y)
ylim([0,inf])
hold off;

%%
% It follows that the pilot must control the plane within about plus or
% minus 2.6m/s to hit within 100m of the target. In terms of miles per hour this is an error of around  plus
% or minus 5.8 miles per hour. 




