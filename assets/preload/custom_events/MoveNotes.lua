function onEvent(name, value1, value2)
	if name == 'MoveNotes' then	
		if value1 == '0' then
			cancelTween('pt1')
			cancelTween('pt2')
			cancelTween('pt3')
			cancelTween('pt4')
			noteTweenX('pt1', 4, 732, 1.85, 'quartOut')
			noteTweenX('pt2', 5, 845, 1.55, 'quartOut')
			noteTweenX('pt3', 6, 956, 1.35, 'quartOut')
			noteTweenX('pt4', 7, 1068, 1.25, 'quartOut')
		elseif value1 == '1' then
			cancelTween('pt1')
			cancelTween('pt2')
			cancelTween('pt3')
			cancelTween('pt4')
			noteTweenX('pt1', 4, 92, 1.25, 'quartOut')
			noteTweenX('pt2', 5, 205, 1.35, 'quartOut')
			--noteTweenX('pt1', 4, 412, 1.25, 'quartOut')
			--noteTweenX('pt2', 5, 525, 1.25, 'quartOut')
			--noteTweenX('pt3', 6, 636, 1.25, 'quartOut')
			--noteTweenX('pt4', 7, 748, 1.25, 'quartOut')
			noteTweenX('pt3', 6, 956, 1.35, 'quartOut')
			noteTweenX('pt4', 7, 1068, 1.25, 'quartOut')
		elseif value1 == '2' then
			cancelTween('pt1')
			cancelTween('pt2')
			cancelTween('pt3')
			cancelTween('pt4')
			noteTweenX('pt1', 4, 92, 1.25, 'quartOut')
			noteTweenX('pt2', 5, 205, 1.35, 'quartOut')
			noteTweenX('pt3', 6, 316, 1.55, 'quartOut')
			noteTweenX('pt4', 7, 428, 1.85, 'quartOut')
		elseif value1 == '3' then
			cancelTween('pt1')
			cancelTween('pt2')
			cancelTween('pt3')
			cancelTween('pt4')
			noteTweenX('pt1', 4, 732, 1.85, 'quartOut')
			noteTweenX('pt2', 5, 845, 1.55, 'quartOut')
			noteTweenX('pt3', 6, 956, 1.35, 'quartOut')
			noteTweenX('pt4', 7, 1068, 1.25, 'quartOut')

			noteTweenY('ptY1', 4, 570, 1.85, 'quartOut')
			noteTweenY('ptY2', 5, 570, 1.55, 'quartOut')
			noteTweenY('ptY3', 6, 570, 1.35, 'quartOut')
			noteTweenY('ptY4', 7, 570, 1.25, 'quartOut')

			noteTweenDirection('ptD1', 4, 270, 1.85, 'quartOut')
			noteTweenDirection('ptD2', 5, 270, 1.55, 'quartOut')
			noteTweenDirection('ptD3', 6, 270, 1.35, 'quartOut')
			noteTweenDirection('ptD4', 7, 270, 1.25, 'quartOut')
		end
	end
end