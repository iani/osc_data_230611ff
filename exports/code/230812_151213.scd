//Exporting 9 code snippets on 230812_151213
//:--[3.3040027500028] (jun + asayo sines)
//:source jun 1
{
	SinOsc.ar(\freq.br(200)).dup.fader(amp: 0.2) * (\x1.sr > 0.5).lag(1);
} +> \jun;
//source asayo 1
{
	SinOsc.ar(\freq.br(200 * 8)).dup.fader(amp:0.2) * (\z4.sr > 0.5).lag(1);
} +> \asayo;
//:--[2.0281515419993] (jun + asayo glissandi)
//:glissando jun
{ XLine.kr(200, 200 * 8, 180) } @>.jun \freq;
{ XLine.kr(200 * 8, 200, 180) } @>.asayo \freq;
//:--[2.4044782499986]
//:source jun 1
{
SinOsc.ar(\freq.br(200) *
		([5, 6, 7, 8] / 5 * { LFDNoise0.kr(0.5 rrand: 3.0).range(0.99, 1.1) } ! 4)
	).amix.dup * (\z1.sr > 0.5).lag(1);
} +> \jun;
//:--[2.3612695830016]
//:source jun 1 - variation
{
	Mix(SinOsc.ar(\freq.br(200) *
		([5, 6, 7, 8] / 5 * { LFDNoise0.kr(0.5 rrand: 3.0).range(0.99, 1.1) } ! 4)
	)).dup.fader(amp: 0.05) * 0.1 * (\z1.sr > 0.5).lag(1);
} +> \jun;
//:--[3.6196444169982]
//:source jun 1 - debug
{
	SinOsc.ar(\freq.br(600), 0, 0.1).dup * 1 // (\z1.sr > 0.5).lag(1);
} +> \jun;
//:--[3.9080887080054]
//:source asayo 1
{
	SinOsc.ar(\freq.br(200 * 8)).dup.fader(amp:0.05) * (\z3.sr > 0.5).lag(1);
} +> \asayo;
//:--[3.2681109999976]
//:source asayo 1 - debug;
{
	SinOsc.ar(\freq.br(200 * 8)).dup * 1 // * (\z3.sr > 0.5).lag(1);
} +> \asayo;
//:--[2.6659512080005]
//:glissando jun
{ XLine.kr(200, 200 * 8, 180) } @>.jun \freq;
//:--[0]
//:glissando asayo
{ XLine.kr(200 * 8, 200, 180) } @>.asayo \freq;

//the end

