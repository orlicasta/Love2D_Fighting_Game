require('player1/buffer')
require('player1/interpreter')
require('player1/player1')
require('player1/frameData')
require('player1/handler')
require('player1/state')
require('player1/velocity')



function love.load()

	GAME_SPEED = 1/60
	D_TOTAL = 0

	background = love.graphics.newImage('common/sprite/background.png')
	GROUND_HEIGHT = 100

	gameScale = {}
	gameScale.x = love.graphics.getWidth() / background:getWidth()
	gameScale.y = love.graphics.getHeight() / background:getHeight()

	bufferPlayer1:load()
	interpretPlayer1:load()
	player1:load()

	roundStartSFX = love.audio.newSource("common/sfx/rtkyaootw.wav", "static")

	--roundStartSFX:play()

end


function love.update(dt)

	D_TOTAL = D_TOTAL + dt
	if D_TOTAL >= GAME_SPEED then

		if love.keyboard.isDown('f') then
			love.window.setFullscreen(true)
			gameScale.x = love.graphics.getWidth() /background:getWidth()
			gameScale.y = love.graphics.getHeight() / background:getHeight()
		end
		if love.keyboard.isDown('g') then
			love.window.setFullscreen(false)
			gameScale.x = love.graphics.getWidth() /background:getWidth()
			gameScale.y = love.graphics.getHeight() / background:getHeight()
		end

		bufferPlayer1:update(1/60)
		interpretPlayer1:update(1/60)
		player1:update(1/60)
		--Update player2 state


		--Handle hitbox collision
		--Handle pushbox collision
		--Handle Wall collision
		--Handle ground collision

		D_TOTAL = math.min(GAME_SPEED, D_TOTAL - GAME_SPEED)
	end

end


function love.draw()

	love.graphics.push()
		love.graphics.scale(gameScale.x, gameScale.y)
		love.graphics.draw(background)
	love.graphics.pop()

	love.graphics.push()
		love.graphics.scale(gameScale.x, gameScale.y)
		player1:draw()
	love.graphics.pop()

end
