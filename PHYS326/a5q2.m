%Assignment 5 Problem 2

numdivisions=100;
numiterations=100000;

L=1.0;
y = linspace(0,2*L);
x = linspace(-L,L);
[X,Y]=meshgrid(x,y);
Z=potential(X,Y,L,100);

surf(X,Y,Z)

function b = potential(x,y,L,n)
    b=0;
    for i=1:1:n
        b=b+8/(pi^2).*(sin(pi*i/2.0)/i^2).*sin(pi.*i.*(x+L)/(2*L)).*(exp(i.*pi.*(2*L-y)/(2*L))-exp(-i.*pi.*(2*L-y)/(2*L))).*(exp(i.*pi)-exp(-i.*pi))^(-1);
    end 
end

    