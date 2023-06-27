//code
//:--[70061.582548083]
[ '/code', "//:
{
	var env, src;
	env = Env.perc(0.9, 0.9);
	src = PinkNoise.ar(0.4) * env.kr(gate:
		Amplitude.kr(Slope.kr(\\x3.sr.lag(0.1))) > 0.9, doneAction: 0
	);
	Resonz.ar(src, \\z4.sr.exp(30, 3000).lag(0.1), 0.1) * 20
} +> \\justine;
" ]

//:--[70064.435137125]
[ '/code', "//:Variant with sine
{
	var env, src;
	env = Env.perc(0.9, 0.9);
	src = SinOsc.ar(\\z2.sr.exp(30, 6000).lag(0.1), 0, 0.15).dup * env.kr(gate:
		Amplitude.kr(Slope.kr(\\x1.sr.lag(0.1))) > 0.9, doneAction: 0
	);
	src;
} +> \\natali;

" ]

//:--[70090.853844791]
[ '/code', "//:Variant with sine
{
	var env, src;
	env = Env.perc(0.9, 0.9);
	src = SinOsc.ar(\\z2.sr.exp(30, 6000).lag(0.1), 0, 0.15).dup * env.kr(gate:
		Amplitude.kr(Slope.kr(\\x1.sr.lag(0.1))) > 0.9, doneAction: 0
	);
	src;
} +> \\natali;

" ]

//:--[70117.847825333]
[ '/code', "//:Variant with sine
{
	var env, src;
	env = Env.perc(0.9, 0.9);
	src = SinOsc.ar(\\z2.sr.exp(30, 6000).lag(0.1), 0, 0.15).dup * env.kr(gate:
		Amplitude.kr(Slope.kr(\\x1.sr.lag(0.1))) > 0.9, doneAction: 0
	);
	src;
} +> \\natali;

" ]

//:--[70127.702894708]
[ '/code', "//:
{
	var env, src;
	env = Env.perc(0.9, 0.9);
	src = PinkNoise.ar(0.4) * env.kr(gate:
		Amplitude.kr(Slope.kr(\\x3.sr.lag(0.1))) > 0.9, doneAction: 0
	);
	Resonz.ar(src, \\z4.sr.exp(300, 3000).lag(0.5), 0.05) * 10
} +> \\justine;
" ]

//:--[70148.641390583]
[ '/code', "//:Variant with sine
{
	var env, src;
	env = Env.perc(0.9, 0.9);
	src = SinOsc.ar(\\z2.sr.exp(300, 600).lag(0.1), 0, 0.5).dup * env.kr(gate:
		Amplitude.kr(Slope.kr(\\x1.sr.lag(0.1))) > 0.9, doneAction: 0
	);
	src;
} +> \\natali;

" ]

//:--[70166.394883208]
[ '/code', "//:Variant with sine
{
	var env, src;
	env = Env.perc(0.09, 0.09);
	src = SinOsc.ar(\\z2.sr.exp(100, 200).lag(0.1), 0, 0.5).dup * env.kr(gate:
		Amplitude.kr(Slope.kr(\\x1.sr.lag(0.1))) > 0.9, doneAction: 0
	);
	src;
} +> \\natali;

" ]

//:--[70207.045505583]
[ '/code', "//:Variant with sine
{
	var env, src;
	env = Env.perc(0.09, 0.09);
	src = SinOsc.ar(\\z2.sr.exp(1000, 1200).lag(0.1), 0, 0.5).dup * env.kr(gate:
		Amplitude.kr(Slope.kr(\\x1.sr.lag(0.1))) > 0.9, doneAction: 0
	);
	src;
} +> \\natali;

" ]
