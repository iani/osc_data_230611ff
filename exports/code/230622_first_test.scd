//code
//:--[0.3]
"hello step one lasts 0.3 seconds".postln;
(degree: 1.p1, dur: 0.3) +> \test;
//:--[3]
"hello step two lasts 3 seconds".postln;
(degree: 2.p1, dur: 3, legato: 1) +> \test;
//:--[0.2]
"hello step three lasts 0.2 seconds".postln;
(degree: 3.p1, dur: 0.02) +> \test;
//:--[5.5]
"hello step four lasts 5.5 seconds".postln;
(degree: 4.p1, dur: 0.05, legato: 1) +> \test;
//:--[3]
"The end theoretically follows after 3 seconds".postln;
(degree: 5.p1, dur: 3) +> \test;