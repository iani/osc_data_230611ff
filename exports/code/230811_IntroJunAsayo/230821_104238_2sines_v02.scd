//Exporting 4 code snippets on 230821_104238
//:--[0]
//:source jun 1
{
	SinOsc.ar(\freq.br(200)).dup.fader(amp: 0.05) * (\x1.sr > 0.5).lag(1);
} +> \jun;
//source asayo 1
{
	SinOsc.ar(\freq.br(200 * 8)).dup.fader(amp:0.05) * (\z4.sr > 0.5).lag(1);
} +> \asayo;
//:--[18.456083832993]
//:glissando jun
{ XLine.kr(200, 200 * 8, 180) } @>.jun \freq;
{ XLine.kr(200 * 8, 200, 180) } @>.asayo \freq;
//:--[41.799610417002]
//:source jun 1
{
	SinOsc.ar(\freq.br(200)).dup.fader(amp: 0.05) * (\x1.sr > 0.5).lag(1);
} +> \jun;
//source asayo 1
{
	SinOsc.ar(\freq.br(200 * 8)).dup.fader(amp:0.05) * (\z4.sr > 0.5).lag(1);
} +> \asayo;
//:--[110.65986929199]
//:glissando jun
{ XLine.kr(200, 200 * 8, 180) } @>.jun \freq;
{ XLine.kr(200 * 8, 200, 180) } @>.asayo \freq;

//the end

