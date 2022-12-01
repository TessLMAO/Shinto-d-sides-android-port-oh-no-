function onEvent(name, value1, value2)
	if flashingLights == false then
	do return end
	end
	
    if name == 'Image Flash' then
        makeLuaSprite('image', value1, 0, 0);
        addLuaSprite('image', true);
        scaleObject('image', 20, 20);
        doTweenColor('hello', 'image', 'FFFFFFFF', 0.1, 'quartIn');
        setObjectCamera('image', 'other');
        runTimer('wait', value2);
        
        function onTimerCompleted(tag, loops, loopsleft)
            if tag == 'wait' then
                doTweenAlpha('byebye', 'image', 0, 1, 'linear');
            end
        end
        
        function onTweenCompleted(tag)
            if tag == 'byebye' then
                removeLuaSprite('image', true);
            end
        end
    end
end