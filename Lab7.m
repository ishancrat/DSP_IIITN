%upsampling and downsampling

t=-5:0.16:5
x=sin(t)

subplot(3,1,1)
stem(t,x)
title('Original Signal','fontweight','bold')

downSampleFactor=2

downSampled=[]

for i=1:downSampleFactor:length(t)
	downSampled(i)=x(i)
end

subplot(3,1,2)
stem(t,downSampled)
title('Down-Sampled Signal','fontweight','bold')

upSampleFactor=2
upSampled=[]
index=1

for i=1:upSampleFactor:length(t).*upSampleFactor
	upSampled(i)=x(index)
	index=index+1
	if index>length(t)
		break
	end
end

for i=1:length(t).*upSampleFactor+1
    if i>length(t)
        break

    elseif mod((i-1),upSampleFactor)==0
		continue
	else
		if mod(i,upSampleFactor)==0
			upperLim=upSampled(i+1)
			lowerLim=upSampled(i+1-upSampleFactor)
		else
			lowerLim=upSampled(i-(mod(i,upSampleFactor-1)))
			upperLim=upSampled(i-(mod(i,upSampleFactor)-1)+upSampleFactor)
		end
		bin=upperLim-lowerLim;

		aheadPos=mod((i-1),upSampleFactor);
		upSampled(i)=lowerLim+aheadPos.*bin
	end
end

subplot(3,1,3)
stem(upSampled)
title('Up-Sampled Signal','fontweight','bold')

