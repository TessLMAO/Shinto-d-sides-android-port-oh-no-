function onCreate()
	-- background
	
	makeLuaSprite('bgforestgrass', 'forestbackground/bgforestgrass', 75, 600);
	setScrollFactor('bgforestgrass', 1, 1);

	makeLuaSprite('bgforesttrees', 'forestbackground/bgforesttrees', -600, -75);
	setScrollFactor('bgforesttrees', 1, 1);


	addLuaSprite('bgforestgrass', false);
	addLuaSprite('bgforesttrees', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
