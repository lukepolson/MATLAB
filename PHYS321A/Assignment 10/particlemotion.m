function df = particlemotion(t,f)

df = zeros(2,1);
df(1) = f(2); % represents y(x)
df(2) = (1+(f(2)).^2)/(4-2*f(1)); %represents y'(x)
