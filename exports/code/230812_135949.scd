// Exporting 2 snippets on 230812_135949
//:--[58708.042792583]
[ '/code', "//:source jun 1
{
	SinOsc.ar(\\freq.br(200)).dup.fader(amp: 0.2) * (\\x1.sr > 0.5).lag(1);
} +> \\jun;
//source asayo 1
{
	SinOsc.ar(\\freq.br(200 * 8)).dup.fader(amp:0.2) * (\\z4.sr > 0.5).lag(1);
} +> \\asayo;
" ]
//:--[58711.590960292]
[ '/code', "//:glissando jun
{ XLine.kr(200, 200 * 8, 180) } @>.jun \\freq;
{ XLine.kr(200 * 8, 200, 180) } @>.asayo \\freq;
" ]
//the end

