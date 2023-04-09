% DFT and IDFT

t=-5:0.1:5;
x=2.*sin(pi.*t/2)+3.*cos(4*2.*pi.*t)-sin(3*pi.*t/4);

subplot(3,1,1)
stem(t,x)
title('Original Signal','fontweight','bold')
X=fft(x);

subplot(3,1,2)
stem(t,X)
title('DFT of Orignal Signal','fontweight','bold')

H=X;
h=ifft(H);
subplot(3,1,3)
stem(t,h)
title('Inverse DFT of the Transformed Signal','fontweight','bold')
