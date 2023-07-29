//:try out new Zyz lag gt shortcut:
XyzGt(1)  @>.tokyo \amp;
//:
PhaseBuf_.bplay(\crickets, \tokyo);
//:
a = SensorCtl(\tokyo, \amp, 1, \xyz, 0, 1, \lin);
a.start;
//:
b = SensorCtl(\tokyo, \rate, 1, \x, 0, 1, \lin);
b.start;
//:
b.lo = 0.05;
b.hi = 0.5;
//:
0 @>.tokyo \amp;
//:
1 @>.tokyo \amp;
//:

currentEnvironment
