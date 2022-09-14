function onCreate()
	makeLuaSprite('wall', 'DarkStage/stageback', 0, 0)
	scaleObject('wall', 1.7, 1.7)
	setLuaSpriteScrollFactor('wall', 1, 1)
	addLuaSprite('wall', false)

	makeLuaSprite('stage', 'DarkStage/stagefront', 0, 0)
	scaleObject('stage', 1.25, 1.25)
	setLuaSpriteScrollFactor('stage', 1, 1)
	addLuaSprite('stage', false)

	makeLuaSprite('lights', 'DarkStage/stage_lights', -400, 0)
	scaleObject('lights', 1.6, 1.6)
	setLuaSpriteScrollFactor('lights', 0.9, 1)
	addLuaSprite('lights', false)

	makeLuaSprite('curtains', 'DarkStage/stagecurtains', -600, 0)
	scaleObject('curtains', 1.4, 1.4)
	setLuaSpriteScrollFactor('curtains', 0.85, 1)
	addLuaSprite('curtains', false)

	makeLuaSprite('gloe', 'DarkStage/Oranglow', 0, 0)
	scaleObject('gloe', 1.7, 1.7)
	setLuaSpriteScrollFactor('gloe', 1, 1)
	setProperty('gloe.alpha', 0)
	addLuaSprite('gloe', true)

	makeLuaSprite('dark', 'DarkStage/vignet', 0, 0)
	scaleObject('dark', 1, 1)
	setLuaSpriteScrollFactor('dark', 1, 1)
	setObjectCamera('dark', 'hud')
	setObjectOrder('dark', 69)
	setProperty('dark.alpha', 0.45)
	addLuaSprite('dark', false)

	makeLuaSprite('dark2', 'DarkStage/vignet', 0, 0)
	scaleObject('dark2', 1, 1)
	setLuaSpriteScrollFactor('dark2', 1, 1)
	setObjectCamera('dark2', 'other')
	setObjectOrder('dark2', 69)
	setProperty('dark2.alpha', 0.65)
	addLuaSprite('dark2', false)

	cameraFlash('other', '000000', 5, true)
end

function onSongStart()
	noteTweenX('pt1', 4, 92, 1.25, 'quartInOut')
	noteTweenX('pt2', 5, 205, 1.35, 'quartInOut')
	--[[noteTweenX('pt1', 4, 412, 1.25, 'quartInOut')
	noteTweenX('pt2', 5, 525, 1.25, 'quartInOut')
	noteTweenX('pt3', 6, 636, 1.25, 'quartInOut')
	noteTweenX('pt4', 7, 748, 1.25, 'quartInOut')]]
	noteTweenX('pt3', 6, 956, 1.35, 'quartInOut')
	noteTweenX('pt4', 7, 1068, 1.25, 'quartInOut')

	noteTweenAlpha('ot1', 0, 0, 1.25, 'quartInOut')
	noteTweenAlpha('ot2', 1, 0, 1.25, 'quartInOut')
	noteTweenAlpha('ot3', 2, 0, 1.25, 'quartInOut')
	noteTweenAlpha('ot4', 3, 0, 1.25, 'quartInOut')

	cameraFlash('other', '000000', 0.85, true)

	runTimer('time', 0.01666666667, 0)
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'time' then
		
	end
end

function onUpdatePost(elapsed)
	setProperty('scoreTxt.alpha', 0) 
end

function onEvent(name, value1, value2)
	if name == 'MoveNotes' then
		if value2 == '0' then
			doTweenAlpha('OrangOffT', 'gloe', 0, 1.25, 'quartOut')
		elseif value2 == '1' then
			doTweenAlpha('OrangOnT', 'gloe', 1, 1.25, 'quartOut')
		end
	end
end

function onStepHit()
	if curStep == 1904 then
		noteTweenAlpha('pt5', 4, 0, 2.25, 'linear')
		noteTweenAlpha('pt6', 5, 0, 2.25, 'linear')
		noteTweenAlpha('pt7', 6, 0, 2.25, 'linear')
		noteTweenAlpha('pt8', 7, 0, 2.25, 'linear')

		noteTweenY('ptY5', 4, 770, 2.35, 'quartIn')
		noteTweenY('ptY6', 5, 770, 2.25, 'quartIn')
		noteTweenY('ptY7', 6, 770, 2.25, 'quartIn')
		noteTweenY('ptY8', 7, 770, 2.35, 'quartIn')
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if getProperty('health') >= 1 then
		setProperty('health', 1)
	end
end