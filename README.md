uGUIF - uGUIforked
==================

This is a forked version of the V0.31 uGUI Ilibrary (see
ugui-README.md). Minor modifications to the library were
made by Warren Gay ve3wwg@gmail.com. The changes consist of:

	1) Elimination of the global UG_GUI object gui, so that 
	   preemptive multi-thread environments managing multiple
	   instances will be safe (FreeRTOS for example).
	2) UG_WINDOW struct now carries a reference to the gui
	   object, so that only the UG_WINDOW pointer needs to
	   be passed to the window routines.
	3) ugui_config now includes a USE_WINDOW macro allowing the
	   windowing functionality to be compiled out of the
	   executable.

Due to #1, this version of the library breaks with the original
V0.31 API. Most calls now add a UG_GUI *gui argument as the first
argument.

From ugui.c: 

    µGUI is a generic GUI module for embedded systems.
    This is a free software that is open for education, research and commercial
    developments under license policy of following terms.

    Copyright (C) 2015, Achim Döbler, all rights reserved.
    URL: http://www.embeddedlightning.com/

See file ugui-LICENSE.md for the original author's terms of use.
