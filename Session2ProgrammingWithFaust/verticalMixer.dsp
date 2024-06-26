import("stdfaust.lib");
channel (c) = vgroup("chan %c", vslider("[1]pan[style:knob]", 0, -1, 1, 0.01), vslider("[2] level", 0, -1, 1, 0.01));
process = hgroup("mixer", par(i, 8, channel(i)),
				  vbargraph("left", 0, 1), vslider("master", 0.7, 0, 1, 0.01), vbargraph("right", 0, 1));