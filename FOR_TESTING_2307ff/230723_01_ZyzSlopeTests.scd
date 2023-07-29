//:basic xyz -> freq;
{ Xyz(1) } @>.test \freq;
//:increase lag;
{ Xyz(1).lag(1) } @>.test \freq;
//:Sound test for Xyz above
{ SinOsc.ar(\freq.br.exp(400, 800), 0, 0.1).dup } +> \test;
//:Xyz lag -> amp
{ (Xyz(1).lag(1) - 0.2 max: 0 * 2).lag(0.5) } @>.test \vol;
//Sound test for Xyz amp
{ SinOsc.ar(500, 0, 0.1).dup * \vol.br } +> \test;
//:sample sound test
PhaseBuf_.bplay(\crickets, \test);
//:try out new Zyz lag gt shortcut:
XyzGt(1)  @>.test \vol;
PhaseBuf_.bplay(\crickets, \test);