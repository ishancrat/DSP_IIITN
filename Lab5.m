% cconv w/o 'n' computes linear convolution
% cconv computes properly when provided with some 'n' value

t=-5:0.5:5;
x=sin(t)
h=[3,2,1,6,7,4,6,7,8]

subplot(3,1,1)
stem(x,'Linewidth',1)
title('First Signal','fontweight','bold')
subplot(3,1,2)
stem(h,'Linewidth',1)
title('Second Signal','fontweight','bold')

y=cconv(x,h,length(t));
subplot(3,1,3)
stem(y,'Linewidth',1)
title('Circularly Convolved Signal','fontweight','bold')
