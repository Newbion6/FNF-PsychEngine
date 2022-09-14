--< MADE TO WORK WITH THE "darkstage" BG willn't WORK ELSEWHERE!!! >--

--< Also I know this code is probably ass but it works and I'm too lazy to fix it'

--< Varibles >--
local o = 0.5
local f = 3
local A1 = 10 
local A2 = A1 / 2 

--<Stuff>--
function onSongStart()
	if difficulty == 0 then
		standrdy = getPropertyFromGroup('playerStrums', 0,'y')
		runTimer('time', 0.01666666667, 0)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'time' then
		local time = (loopsLeft - (loopsLeft*2))/60
		local orngAlpha = getProperty('gloe.alpha') * 2.5
		for i= 0,3 do
			setPropertyFromGroup('playerStrums', i, 'y', standrdy + (math.sin((time+(i*o)) *2*math.pi*1/f)*(A1 + orngAlpha)))
			setPropertyFromGroup('playerStrums', i, 'angle', math.cos((time+(i*o)) *2*math.pi*1/f)*(A2 + orngAlpha))
			setPropertyFromGroup('playerStrums', i, 'direction', 90 + math.cos((time+(i*o)) *2*math.pi*1/f)*(A2 + orngAlpha))
		end
		HoldFix()
	end
end

function HoldFix()
	NL = getProperty('notes.length')

	for i = 0, NL-1 do
		ND = getPropertyFromGroup('notes', i, 'noteData')
		if getPropertyFromGroup('notes', i, 'isSustainNote') then
			setPropertyFromGroup('notes', i, 'angle', getPropertyFromGroup("playerStrums", ND, 'direction') - 90)
		end
	end
end
function onEvent(name, value1, value2)
	if name == 'Change Character' then	
		cameraFlash('other', '000000', 0.35, true)
	end
end