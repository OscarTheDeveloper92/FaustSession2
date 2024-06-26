import("stdfaust.lib");

meter  = _ <: _, display : attach
  	  with {
  		     envelop = abs : min(1.00) : max ~ -(1.0/ma.SR); 
  			 display = envelop : hbargraph("meter", 0, 1);
			};

process = os.osc(440) : _ * hslider("level", 0, 0, 1, 0.001) : meter;