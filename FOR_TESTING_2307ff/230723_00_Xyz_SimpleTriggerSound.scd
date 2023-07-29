//:= !!! = combine 3d slope + env in one function (for class)
// Theee settings avoid repeats while keeping response relatively sharp
{
	var trig, envsig;
	Fader(); // make releasable;
	trig = 	(
		Amplitude.kr(Slope.kr(\x1.sr)).lag(0.15) +
		Amplitude.kr(Slope.kr(\y1.sr)).lag(0.15) +
		Amplitude.kr(Slope.kr(\z1.sr)).lag(0.15)
	) > 1.5;
	envsig = EnvGen.kr(
        Env([0, 1, 1, 0], [0.02, 1, 0.3], releaseNode: 2),
        gate: trig,
		doneAction: 0
    );
	SendReply.kr(envsig > 0, '/on');
	SendReply.kr(envsig.lag(0.0) <= 0, '/off');
	envsig;
} @>.trigenv \amp3dslope;
// osc msg -> amp
'/on' >>> { "on".postln; 0.1 @>.onoff \amp };
'/off' >>> { "off".postln; 0.0 @>.onoff \amp };
// test sound
{	// start silent
	SinOsc.ar(\freq.br(440), 0, \amp.br(0.0)).dup
} +> \onoff;
