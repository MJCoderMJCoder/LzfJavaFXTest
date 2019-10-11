--  Aura Global Variables and Functions

global = {

	VIEWPORT_WIDTH = -1,
	INFINITY = -1,
	keystrokeStrength = 0,
	keyPressX = 0,
	keyPressY = 0,
	keyLastPressTime = 0,
	keyDoubleClickDuration = 500,
	keyDebounceTime = 80,

	PeriodDone = false,
	LastAudioPeak = 0,
	isPeakRising = false,

	Random = function()
		return math.random()
	end,
	
}

return global
