//code//:
{
	var env, src;
	env = Env.perc(0.9, 0.9);
	src = PinkNoise.ar(0.4) * env.kr(gate:
		Amplitude.kr(Slope.kr(\x3.sr.lag(0.1))) > 0.9, doneAction: 0
	);
	Resonz.ar(src, \z4.sr.exp(30, 3000).lag(0.1), 0.1) * 20
} +> \justine;
//:Variant with sine
{
	var env, src;
	env = Env.perc(0.9, 0.9);
	src = SinOsc.ar(\z2.sr.exp(30, 6000).lag(0.1), 0, 0.15).dup * env.kr(gate:
		Amplitude.kr(Slope.kr(\x1.sr.lag(0.1))) > 0.9, doneAction: 0
	);
	src;
} +> \natali;

//:Variant with sine
{
	var env, src;
	env = Env.perc(0.9, 0.9);
	src = SinOsc.ar(\z2.sr.exp(30, 6000).lag(0.1), 0, 0.15).dup * env.kr(gate:
		Amplitude.kr(Slope.kr(\x1.sr.lag(0.1))) > 0.9, doneAction: 0
	);
	src;
} +> \natali;

//:Variant with sine
{
	var env, src;
	env = Env.perc(0.9, 0.9);
	src = SinOsc.ar(\z2.sr.exp(30, 6000).lag(0.1), 0, 0.15).dup * env.kr(gate:
		Amplitude.kr(Slope.kr(\x1.sr.lag(0.1))) > 0.9, doneAction: 0
	);
	src;
} +> \natali;

//:
{
	var env, src;
	env = Env.perc(0.9, 0.9);
	src = PinkNoise.ar(0.4) * env.kr(gate:
		Amplitude.kr(Slope.kr(\x3.sr.lag(0.1))) > 0.9, doneAction: 0
	);
	Resonz.ar(src, \z4.sr.exp(300, 3000).lag(0.5), 0.05) * 10
} +> \justine;
//:Variant with sine
{
	var env, src;
	env = Env.perc(0.9, 0.9);
	src = SinOsc.ar(\z2.sr.exp(300, 600).lag(0.1), 0, 0.5).dup * env.kr(gate:
		Amplitude.kr(Slope.kr(\x1.sr.lag(0.1))) > 0.9, doneAction: 0
	);
	src;
} +> \natali;

//:Variant with sine
{
	var env, src;
	env = Env.perc(0.09, 0.09);
	src = SinOsc.ar(\z2.sr.exp(100, 200).lag(0.1), 0, 0.5).dup * env.kr(gate:
		Amplitude.kr(Slope.kr(\x1.sr.lag(0.1))) > 0.9, doneAction: 0
	);
	src;
} +> \natali;

//:Variant with sine
{
	var env, src;
	env = Env.perc(0.09, 0.09);
	src = SinOsc.ar(\z2.sr.exp(1000, 1200).lag(0.1), 0, 0.5).dup * env.kr(gate:
		Amplitude.kr(Slope.kr(\x1.sr.lag(0.1))) > 0.9, doneAction: 0
	);
	src;
} +> \natali;

