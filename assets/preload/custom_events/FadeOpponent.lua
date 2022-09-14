function onEvent(name, value1, value2)
	if name == 'FadeOpponent' then	
		doTweenAlpha('OpTween', 'dad', value1, value2, 'linear')
	end
end