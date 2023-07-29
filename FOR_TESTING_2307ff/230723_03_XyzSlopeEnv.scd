//:combine amp with env
{
	var trig, envsig;
	Fader(); // make releasable;
	trig = 	(
		Amplitude.kr(Slope.kr(\x1.sr)).lag(0.15) +
		Amplitude.kr(Slope.kr(\y1.sr)).lag(0.15) +
		Amplitude.kr(Slope.kr(\z1.sr)).lag(0.15)
	).lag(0.5) > 1.5;
	envsig = EnvGen.kr(
        Env([0, 1, 1, 0], [0.05, 1, 0.5], releaseNode: 2),
        gate: trig,
		doneAction: 0
    );
	// SendReply.kr(envsig > 0, '/on');
	// SendReply.kr(envsig.lag(0.0) <= 0, '/off');
	envsig;
} @>.test \amp;

//Sound test for Xyz amp
{ SinOsc.ar(500, 0, 0.1).dup * \amp.br } +> \test;