//
//:--[6889.443082084]
[ '/minibee/data', 5, 0.53314614295959, 0.50238066911697, 0.49175924062729 ]
//:--[6889.493236834]
[ '/code', "//:--[20] spread cluster (WITHOUT NOISE!) + cresc spread duration: 90
// stop the previous noise modulation
nil +>.asayo \\freqmodnoise;
nil +>.jun \\freqmodnoise;

{	// jun cluster opens DOWNWARD
	(1..50).normalize(1, 0.5) do: { | v, i |
		XLine.kr(1, v, 90).bout(\\freq +++ i) // spread duration: 90
	};
} +>.jun \\freqmod;
{	// asayo cluster opens UPWARD
	(1..50).normalize(1, 2) do: { | v, i |
		XLine.kr(1, v, 90).bout(\\freq +++ i) // spread duration: 90
	};
} +>.asayo \\freqmod;
//:crescendo:
{ Line.kr(1, 2, 50) } @>.jun \\vol;
{ Line.kr(1, 2, 50) } @>.asayo \\vol;
" ]
//:--[6889.502128542]
[ '/minibee/data', 8, 0.50372362136841, 0.52643144130707, 0.4808936715126 ]
