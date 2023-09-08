
//:--[49868.567858167]
[ '/code', "//:
\"This is a test\";
" ]
//:--[49871.110403209]
[ '/code', "//:
\"This is a bigger test\";
\\s1_static <!> 7; // duration of initial static freq
\\s1_glide <!> 180; // total duration of glide
\\s1_spread <!> 90; // duration of spreading from sine to noise
\\s1_numsines <!> 50; // number of sine ugens
5 +>.asayo \\fadeTime;
5 +>.jun \\fadeTime;
// controls:

{ \\x1.gt.lag(0.5) * 0.06 } @>.jun \\amp;
{ \\z4.gt.lag(0.5) * 0.06} @>.asayo \\amp;

" ]
//:--[49874.8934635]
[ '/code', "//:
\\s1_static <!> 7; // duration of initial static freq
\\s1_glide <!> 180; // total duration of glide
\\s1_spread <!> 90; // duration of spreading from sine to noise
\\s1_numsines <!> 50; // number of sine ugens
5 +>.asayo \\fadeTime;
5 +>.jun \\fadeTime;
// controls:

{ \\x1.gt.lag(0.5) * 0.06 } @>.jun \\amp;
{ \\z4.gt.lag(0.5) * 0.06} @>.asayo \\amp;

" ]
//:--[49881.995770875]
[ '/code', "//:
{ SinOsc.ar(\\freq.br(800) * \\freq.brdup(~s1_numsines, 1)).amix.amplify(0.01).pan } +> \\asayo;
{ SinOsc.ar(\\freq.br(200) * \\freq.brdup(~s1_numsines, 1)).amix.amplify(0.01).pan } +> \\jun;
" ]