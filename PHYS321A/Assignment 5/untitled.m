%% Fowels and Cassidy Problem C 5.1
% Luke Polson
% V00849485

%% Part B
% Defines all Constants
r=1.496*10^11;
M=1.90*10^27;
R=7.784*10^11;
G=6.67*10^-11;

% This is the ``correct'' value for phi
Phi_b=-(G*M/R)*(1+(r^2)/(4*R^2)+(3*r^4)/(8*R^4));

%% Part C
% We explain the algorithm used below. n is the number of points placed
% around the ring. In the while loop, 10000 is an arbitrary large number
% used. theta0 is the angular spacing between points on the disk. theta is
% the angle with respect to the z unit vector. (we put earth at r in the 
% z direction). The first forloop adds up the contributions from all the 
% masses and calculates the total gravitational potential. The if statement
% after the for loop checks if Phi and Phi_b differ by less than 1/10000

n=2; 
large_enough_n=0; 
while (n<10000) 
    Phi=0;
    theta0=2*pi/n;
    for theta = 0:theta0:2*pi
        Phi=Phi-G*(M/(n))/(r^2+R^2-2*r*R*cos(theta))^(0.5);
    end
    if((Phi-Phi_b)/Phi_b<1.0/10000)
        large_enough_n=n
        break;
    end
    n=2*n;
end

%% Part D
% We use the value of large_enough_n for our calcuations. m is the number of
% r values used. (i.e m=5 implies r=0, r=0.2, r=0.4, r=0.6, r=0.8 were
% used).

m=5;
spacing=1/m;
Phi_0=-G*M/R

rvalues=zeros(1,m)
phivalues=zeros(1,m)

n=1
for rcurr=0:(1/m):(1-(1/m))
    Phi=0;
    theta0=2*pi/large_enough_n;
    for theta = 0:theta0:2*pi
        Phi=Phi-G*(M/(large_enough_n))/((rcurr*r)^2+R^2-2*(rcurr*r)*R*cos(theta))^(0.5);
    end 
rvalues(1,n)=rcurr;
phivalues(1,n)=abs(Phi-Phi_0);
n=n+1;
end


figure('name','Part A1','NumberTitle','on');
hold on;
title('Gravitational Potential as a Function of Distance from Center of Mass Ring')
ylabel('Gravitational Potential')
xlabel('Fraction of Earth Radius r')
plot(rvalues, phivalues)
hold off;


%%
% The crude plot clearly shows that the difference varies quadratically






        