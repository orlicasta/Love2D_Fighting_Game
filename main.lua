require("cursor")
require("ban")
require("roth")

Camera = require "lib/hump/camera"

function love.load()
	
	--love.window.setMode(1280, 720, {resizable=true, vsync=false, minwidth=400, minheight=300})
	
	camera = Camera(0, 0, 1)
	
	dtotal = 0
	
	background = love.graphics.newImage("sprite/background.png")
	
	scale = .5
	
	cursor:load()
	ban:load()
	roth:load()
	
end


function love.update(dt)
	
	dtotal = dtotal + dt
	if dtotal >= 1/60 then
				
		ban:update(1/60)
		roth:update(1/60)
		
		cursor:update(1/60)
		
		
		cameraVertical = .2 * love.graphics.getHeight()
		if cursor.y < cameraVertical then
			cameraVertical = cursor.y
		end
		
		cameraHorizontal = cursor.x
		if cameraHorizontal < 1.12 * love.graphics.getWidth() / 2 then
			cameraHorizontal = 1.12 * love.graphics.getWidth() / 2
		end
		if cameraHorizontal > .955 * love.graphics.getWidth() then
			cameraHorizontal = .955 * love.graphics.getWidth()
			cameraHorizontal = .955 * love.graphics.getWidth()
		end
		
		camera:lookAt(cameraHorizontal, cameraVertical)
		
		if roth.x - ban.x > 500 or ban.x - roth.x > 500 then
			if roth.x > ban.x then
				camera:zoomTo(1 - ((roth.x - ban.x) / 10000))
			else
				camera:zoomTo(1 - ((ban.x - roth.x) / 10000))
			end
		end
		
		dtotal = math.min(1/60, dtotal - 1/60)

	end
	

end


function love.draw()
	
	camera:attach()
		love.graphics.draw(background, 0, -500, 0, scale, scale)
	camera:detach()
	
	camera:attach()
		ban:draw()
	camera:detach()
	camera:attach()
		roth:draw()
	camera:detach()
	camera:attach()
		cursor:draw()
	camera:detach()
	
	
end