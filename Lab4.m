%stepinfo not included in octave yet (time response)

	num=[1];
	denom=[2 3 4]
	s=tf('s')
	G=tf(num,denom)

	subplot(3,1,1)
	step(G)
	title('Step Response','fontweight','bold')

	subplot(3,1,2)
	impulse(G)
	title('Impulse Response','fontweight','bold')

	subplot(3,1,3)
	H=G/s;
	step(H)
	title('Ramp Response','fontweight','bold')

