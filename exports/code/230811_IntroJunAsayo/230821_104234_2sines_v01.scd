//Exporting 4 code snippets on 230821_104234
//:--[0]
//:source jun 1
{
	SinOsc.ar(\freq.br(200)).dup.fader(amp: 0.05) * (\z1.sr > 0.5).lag(1);
} +> \jun;
//:--[2.5642567500036]
//:source asayo 1
{
	SinOsc.ar(\freq.br(200 * 8)).dup.fader(amp:0.05) * (\z4.sr > 0.5).lag(1);
} +> \asayo;
//:--[5.5804973750055]
{ XLine.kr(200, 200 * 8, 180) } @>.jun \freq;//:--[7.233526416996]
{ XLine.kr(200 * 8, 200, 180) } @>.asayo \freq;
//the end

