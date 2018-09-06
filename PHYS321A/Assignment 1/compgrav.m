%Gives you gravity g(y) at a height y above the surface of the earth
%Function name: compgrav
%Input: y 
%Output gravity

function gravity = compgrav(y)

g=-9.8;
R=6371000;

gravity=g/(1+y/R)^2;


  