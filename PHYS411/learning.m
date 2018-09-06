[x,y] = meshgrid(1:0.5:10,1:0.5:10)
z = get_temp(x,y)

figure(1)
 surf(x,y,z)
 view(2)
 
figure(2)
 x = linspace(0,10,100)
 y = sin(x)
 plot(x,y)

function temp = get_temp(x,y)

temp = x+sin(y)

end