% bilateral symbolic z transform not available in octave 

syms n
G=sin(2*n)+cos(n)

Z=ztrans(G)

%% sample output: (z*sin(2))/(z^2 - 2*cos(2)*z + 1) + (z*(z - cos(1)))/(z^2 - 2*cos(1)*z + 1)
