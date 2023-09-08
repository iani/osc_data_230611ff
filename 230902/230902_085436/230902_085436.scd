
//:--[49991.895465625]
[ '/code', '//:
"This is a test";' ]
//:--[49992.88439375]
[ '/code', '//:
"This is a bigger test";
\s1_static <!> 7; // duration of initial static freq
\s1_glide <!> 180; // total duration of glide
\s1_spread <!> 90; // duration of spreading from sine to noise
\s1_numsines <!> 50; // number of sine ugens
5 +>.asayo \fadeTime;
5 +>.jun \fadeTime;
// controls:

{ \x1.gt.lag(0.5) * 0.06 } @>.jun \amp;
{ \z4.gt.lag(0.5) * 0.06} @>.asayo \amp;
' ]
//:--[49993.885182167]
[ '/code', '//:
\s1_static <!> 7; // duration of initial static freq
\s1_glide <!> 180; // total duration of glide
\s1_spread <!> 90; // duration of spreading from sine to noise
\s1_numsines <!> 50; // number of sine ugens
5 +>.asayo \fadeTime;
5 +>.jun \fadeTime;
// controls:

{ \x1.gt.lag(0.5) * 0.06 } @>.jun \amp;
{ \z4.gt.lag(0.5) * 0.06} @>.asayo \amp;
' ]
//:--[49994.885361459]
[ '/code', '//:
{ SinOsc.ar(\freq.br(800) * \freq.brdup(~s1_numsines, 1)).amix.amplify(0.01).pan } +> \asayo;
{ SinOsc.ar(\freq.br(200) * \freq.brdup(~s1_numsines, 1)).amix.amplify(0.01).pan } +> \jun;
' ]