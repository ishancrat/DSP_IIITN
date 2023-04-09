num=[2 0 1]
denom=[4 2 5 8]

G=tf(num,denom)

pzmap(G)
xlabel('Real Axis','fontweight','bold')
ylabel('Imaginary Axis','fontweight','bold')
title('Pole-Zero Plot of the Transfer Function','fontweight','bold')
