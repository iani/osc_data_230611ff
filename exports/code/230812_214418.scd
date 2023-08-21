//Exporting 9 code snippets on 230812_214418
//:--[0] (jun + asayo sines)
//:source jun 1
{
	SinOsc.ar(\freq.br(200)).dup.fader(amp: 0.2) * (\x1.sr > 0.5).lag(1);
} +> \jun;
//source asayo 1
{
	SinOsc.ar(\freq.br(200 * 8)).dup.fader(amp:0.2) * (\z4.sr > 0.5).lag(1);
} +> \asayo;
//:--[3.3040027500028] (jun + asayo glissandi)
//:glissando jun
{ XLine.kr(200, 200 * 8, 180) } @>.jun \freq;
{ XLine.kr(200 * 8, 200, 180) } @>.asayo \freq;
//:--[5.3321542920021]
//:source jun 1
{
SinOsc.ar(\freq.br(200) *
		([5, 6, 7, 8] / 5 * { LFDNoise0.kr(0.5 rrand: 3.0).range(0.99, 1.1) } ! 4)
	).amix.dup * (\z1.sr > 0.5).lag(1);
} +> \jun;
//:--[7.7366325420007]
//:source jun 1 - variation
{
	Mix(SinOsc.ar(\freq.br(200) *
		([5, 6, 7, 8] / 5 * { LFDNoise0.kr(0.5 rrand: 3.0).range(0.99, 1.1) } ! 4)
	)).dup.fader(amp: 0.05) * 0.1 * (\z1.sr > 0.5).lag(1);
} +> \jun;
//:--[10.097902125002]
//:source jun 1 - debug
{
	SinOsc.ar(\freq.br(600), 0, 0.1).dup * 1 // (\z1.sr > 0.5).lag(1);
} +> \jun;
//:--[13.717546542]
//:source asayo 1
{
	SinOsc.ar(\freq.br(200 * 8)).dup.fader(amp:0.05) * (\z3.sr > 0.5).lag(1);
} +> \asayo;
//:--[17.625635250006]
//:source asayo 1 - debug;
{
	SinOsc.ar(\freq.br(200 * 8)).dup * 1 // * (\z3.sr > 0.5).lag(1);
} +> \asayo;
//:--[20.893746250003]
//:glissando jun
{ XLine.kr(200, 200 * 8, 180) } @>.jun \freq;
//:--[23.559697458004]
//:glissando asayo
{ XLine.kr(200 * 8, 200, 180) } @>.asayo \freq;

//the end

