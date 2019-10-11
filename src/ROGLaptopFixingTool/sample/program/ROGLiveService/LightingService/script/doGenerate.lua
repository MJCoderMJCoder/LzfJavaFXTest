require("script//global")

doGenerateEvent = function() 
		local timer = getTime()
		math.randomseed( os.time() )

		for key,value in pairs(EventProvider["queue"]) do

			local vp = Provider:GetViewport(EventProvider["queue"][key]["Viewport"])
			local executeName = EventProvider["queue"][key]["Effect"]
			local delayMilisecond = EventProvider["queue"][key]["Delay"]
			local lifeTime = EventProvider["queue"][key]["Duration"]
			local trigger = EventProvider["queue"][key]["Trigger"]
			local layer = EventProvider["queue"][key]["Layer"]
			local isDone = EventProvider["queue"][key]["isDone"]

			if ( vp == nil ) then
				goto continue
			end
			
			-- if Timer is not start from 0, corret the lifeTime
			local corretedLifeTime = CorrectLifetTime(delayMilisecond, lifeTime, timer)


			if ( trigger == "OneTime"  or trigger == "Period" ) then
			
				if( not isTimeToLuanch( isDone , timer , delayMilisecond , lifeTime ))then
					goto continue
				
				else
					doPeriodEffect( vp, executeName, 0 , corretedLifeTime, layer)
					EventProvider["queue"][key]["isDone"] = true
				end
				
			elseif (trigger == "KeyboardInput" ) then

				doKeyboardOneClick(vp, executeName, delayMilisecond , lifeTime, layer)

			elseif (trigger == "OneClick" ) then

				doKeyboardOneClick(vp, executeName, delayMilisecond , lifeTime, layer )

			elseif (trigger == "DoubleClick") then

				doKeyboardDoubleClick( vp, executeName, delayMilisecond , lifeTime, layer )
				
			elseif (trigger == "KeyStrength") then

				doKeyStrengthstuff( vp, executeName, delayMilisecond , lifeTime, layer )

			elseif (trigger == "AudioPeak") then

				if (not global.PeriodDone) then

					if ( AURA.AudioPeak > global.LastAudioPeak ) then
						global.LastAudioPeak = AURA.AudioPeak
						global.isPeakRising = true				

					elseif (AURA.AudioPeak < global.LastAudioPeak and global.isPeakRising ) then
						global.LastAudioPeak = 0
						global.isPeakRising = false

						if (AURA.AudioPeak > 0.35 ) then 
							Provider:makeEvent2(vp, executeName , 0 , lifeTime, layer)
						end
					end
				end

			
			elseif( trigger == "Thermal_High" or trigger == "CpuLoad_High") then
			
				if (not isDone) then
			
			
					if( (trigger == "Thermal_High" and (AURA.Temperature > global.ThermalThreshold_High)) or  
						(trigger == "CpuLoad_High" and (AURA.CpuLoad > global.CpuLoadThreshold_High)) ) then
					
						EventProvider["queue"][key]["isDone"] = true
						Provider:makeEvent2( vp, executeName , delayMilisecond , lifeTime, layer)
					end			
				end			

			elseif( trigger == "Thermal_Low" or trigger == "CpuLoad_Low") then
			
				if (not isDone) then
		
					if( (trigger == "CpuLoad_Low" and (AURA.CpuLoad < global.CpuLoadThreshold_Low)) or  
						(trigger == "Thermal_Low" and (AURA.Temperature < global.ThermalThreshold_Low))  ) then
					
						EventProvider["queue"][key]["isDone"] = true
						Provider:makeEvent2( vp, executeName , delayMilisecond , lifeTime, layer)
					end			
				end			
			
			
			elseif( trigger == "Thermal_Between" or trigger == "CpuLoad_Between") then
			
				if (not isDone) then
		
					if( (trigger == "Thermal_Between" and (AURA.Temperature > global.ThermalThreshold_Low and AURA.Temperature < global.ThermalThreshold_High )) or  
						(trigger == "CpuLoad_Between" and (AURA.CpuLoad > global.CpuLoadThreshold_Low and AURA.CpuLoad < global.CpuLoadThreshold_High )) ) then
					
						EventProvider["queue"][key]["isDone"] = true
						Provider:makeEvent2( vp, executeName , delayMilisecond , lifeTime, layer)
					end			
				end		
			end
			
			::continue::

		end

		recordLastKeyPress(timer)
		doPeriodEffectStuff(timer)

end



-- Check this effect 
-- 1. Is Done already in this period ( For "OneTime" and "Period" trigger type) ?
-- 2. Is is Time to Launch
isTimeToLuanch = function( isDone, timer, delay, duration )

	if(not isDone) then
	
		if ( timer >= delay and timer < delay + duration) then
			return true
		elseif (timer >= delay and duration == global.INFINITY ) then
			return true
		end
	end

	return false

end


recordLastKeyPress = function(time)

	local keyPressCount = #AURA.keyStates
	if(keyPressCount > 0) then
		global.keyLastPressTime = time
		--global.keyPressX = AURA.keyStates[keyPressCount].X
		--global.keyPressY = AURA.keyStates[keyPressCount].Y
	end

end

CorrectLifetTime = function(delayMilisecond, lifeTime, timer )
	
	if(lifeTime == global.INFINITY) then
		return global.INFINITY
	else
		return (lifeTime + (delayMilisecond - timer))
	end
end



doPeriodEffect = function( viewprot, name, delay , duration, layer)

	Provider:makeEvent2( viewprot, name , delay , duration, layer )

end

doOneTimeEffect = function( viewprot, event, delay , duration, layer)

	Provider:makeEvent2(viewprot, event , delay , duration, layer)

end

doKeyboardDoubleClick = function( viewprot, name, delay , duration, layer)

	local keyPressCount = #AURA.keyStates

	local currentTime = getTime()

	for j = 1 , keyPressCount do

		if( global.keyPressX == AURA.keyStates[j].X and	global.keyPressY == AURA.keyStates[j].Y) then

			local deltaT = currentTime - global.keyLastPressTime

			if ( deltaT < global.keyDoubleClickDuration	and deltaT > global.keyDebounceTime ) then
				Provider:makeEvent2( viewprot, name , delay , duration, layer)
			end
		end

		global.keyPressX = AURA.keyStates[j].X
		global.keyPressY = AURA.keyStates[j].Y
	end

end



doKeyboardOneClick = function( viewprot, name, delay , duration, layer)

	local keyPressCount = #AURA.keyStates

	for j = 1 , keyPressCount do
		global.keyPressX = AURA.keyStates[j].X
		global.keyPressY = AURA.keyStates[j].Y
		global.keystrokeStrength = global.keystrokeStrength + 1
		Provider:makeEvent2( viewprot, name, delay , duration, layer)

	end

	if (global.keystrokeStrength > 0) then
		global.keystrokeStrength = global.keystrokeStrength - 0.2
	end

end

doKeyStrengthstuff = function ( vp, executeName, delayMilisecond , lifeTime, layer )
	local keyPressCount = #AURA.keyStates

	for j = 1 , keyPressCount do
		global.keyPressX = AURA.keyStates[j].X
		global.keyPressY = AURA.keyStates[j].Y
		global.keystrokeStrength = global.keystrokeStrength + 1

	end
	
	if( global.keystrokeStrength > global.KeyStrengthThreshold ) then
		Provider:makeEvent2( vp, executeName, delayMilisecond , lifeTime, layer)
		global.keystrokeStrength = 0
	end

	if (global.keystrokeStrength > 0) then
		global.keystrokeStrength = global.keystrokeStrength - 0.2
	end
end


getTime = function()
	return (Provider:clock():getClock()) * 1000
end


doPeriodEffectStuff = function(timer)

	if ( timer > EventProvider["period"] and EventProvider["period"] > 0 ) then

		-- Reset Period Events
		for key,value in pairs(EventProvider["queue"]) do

				local trigger = EventProvider["queue"][key]["Trigger"]	

				if(trigger ~= "OneTime") then
					EventProvider["queue"][key]["isDone"] = false
				end
		end

		-- Reset Timer
		Provider:clock():reset()

	end

end