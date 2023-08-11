// Maybe this comment is needed????
//:--[0.0]
[ '/code', "//:source jun 1
{
	SinOsc.ar(\\freq.br(200)).dup.fader(amp: 0.2) * (\\x1.sr > 0.5).lag(1);
} +> \\jun;
//source asayo 1
{
	SinOsc.ar(\\freq.br(200 * 8)).dup.fader(amp:0.2) * (\\z4.sr > 0.5).lag(1);
} +> \\asayo;
" ]
//:--[80.0]
[ '/code', "//:glissando jun
{ Env([200, 200 * 8], [240], 5).kr } @>.jun \\freq;
{ Env([200 * 8, 200], [240], 5).kr } @>.asayo \\freq;
" ]

//the end

