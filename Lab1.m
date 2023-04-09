t=-5:0.1:5

%unit impulse
impulse=[]

for i=1:length(t)
	if t(i)==0
		impulse(i)=1
	else
		impulse(i)=0
	end
end

subplot(3,1,1)
stem(t,impulse)
title('Impulse Function','fontweight','bold')

xlim([-5 5])
xlabel('n','fontweight','bold')
ylabel('d(n)','fontweight','bold')
ylim([-0.1 1.1])

%unit step function
step=[]

for i=1:length(t)
	if t(i)<0
		step(i)=0
	else
		step(i)=1
	end
end

subplot(3,1,2)
stem(t,step)
title('Unit Step Function','fontweight','bold')

xlim([-5 5])
xlabel('n','fontweight','bold')
ylabel('u(n)','fontweight','bold')
ylim([-0.1 1.1])

%unit ramp function
ramp=[]

for i=1:length(t)
	if t(i)<0
		ramp(i)=0
	else
		ramp(i)=((t(i)).^2)./2;
	end
end

subplot(3,1,3)
stem(t,ramp)
title('Unit Ramp Function','fontweight','bold')

xlim([-5 5])
xlabel('n','fontweight','bold')
ylabel('r(n)','fontweight','bold')
ylim([-0.1 13])
