(
{


	var x, r, f;
	x = Mix.fill(4, {
		LFSaw.ar((LFPulse.kr(2,0.5,0.5,2,34 + {0.05.rand2}.dup)).midicps, 0, 0.01)
	});
	r = MouseY.kr(0.1,0.7);
	f = LinExp.kr(SinOsc.kr(0.07),-1,1,300,5000);
	x = RLPF.ar(x, f, r).softclip;
	x = RLPF.ar(x, f, r).softclip;

}.play;
)
//playing around with some of the values to see what they do.
