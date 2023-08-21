
//:--[63172.756872875] (jun + asayo sines)
[ '/code', "//:source jun 1
{
	SinOsc.ar(\\freq.br(200)).dup.fader(amp: 0.2) * (\\x1.sr > 0.5).lag(1);
} +> \\jun;
//source asayo 1
{
	SinOsc.ar(\\freq.br(200 * 8)).dup.fader(amp:0.2) * (\\z4.sr > 0.5).lag(1);
} +> \\asayo;
" ]
//:--[63176.060875625] (jun + asayo glissandi)
[ '/code', "//:glissando jun
{ XLine.kr(200, 200 * 8, 180) } @>.jun \\freq;
{ XLine.kr(200 * 8, 200, 180) } @>.asayo \\freq;
" ]
//:--[63178.089027167]
[ '/code', "//:source jun 1
{
SinOsc.ar(\\freq.br(200) *
		([5, 6, 7, 8] / 5 * { LFDNoise0.kr(0.5 rrand: 3.0).range(0.99, 1.1) } ! 4)
	).amix.dup * (\\z1.sr > 0.5).lag(1);
} +> \\jun;
" ]
//:--[63180.493505417]
[ '/code', "//:source jun 1 - variation
{
	Mix(SinOsc.ar(\\freq.br(200) *
		([5, 6, 7, 8] / 5 * { LFDNoise0.kr(0.5 rrand: 3.0).range(0.99, 1.1) } ! 4)
	)).dup.fader(amp: 0.05) * 0.1 * (\\z1.sr > 0.5).lag(1);
} +> \\jun;
" ]
//:--[63182.854775]
[ '/code', "//:source jun 1 - debug
{
	SinOsc.ar(\\freq.br(600), 0, 0.1).dup * 1 // (\\z1.sr > 0.5).lag(1);
} +> \\jun;
" ]
//:--[63186.474419417]
[ '/code', "//:source asayo 1
{
	SinOsc.ar(\\freq.br(200 * 8)).dup.fader(amp:0.05) * (\\z3.sr > 0.5).lag(1);
} +> \\asayo;
" ]
//:--[63190.382508125]
[ '/code', "//:source asayo 1 - debug;
{
	SinOsc.ar(\\freq.br(200 * 8)).dup * 1 // * (\\z3.sr > 0.5).lag(1);
} +> \\asayo;
" ]
//:--[63193.650619125]
[ '/code', "//:glissando jun
{ XLine.kr(200, 200 * 8, 180) } @>.jun \\freq;
" ]
//:--[63196.316570333]
[ '/code', "//:glissando asayo
{ XLine.kr(200 * 8, 200, 180) } @>.asayo \\freq;
" ]