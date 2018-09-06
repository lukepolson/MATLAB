%Assignment 5 Problem 3

numdivisions=100;
numiterations=10000;

L=1.0;
itera=10;
array=zeros(numdivisions);


for i=1:1:numdivisions
    x=potential(((2*L)/(numdivisions))*i,L);
    array(1,i) = x;
end

for n=1:1:numiterations
    for i=2:1:numdivisions-1 
        for j=2:1:numdivisions-1
            array(i,j)=0.25*(array(i+1,j)+array(i-1,j)+array(i,j+1)+array(i,j-1));
        end
    end
end

surf(array)

function b = potential(x,L)
    b=1-abs(x-L)/L;
end