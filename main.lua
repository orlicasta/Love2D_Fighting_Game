require('player1')
require('player2')

function love.load()

  dtotal = 0

  gameScale = {}
	gameScale.x = love.graphics.getWidth() / 1920
	gameScale.y = love.graphics.getHeight() / 1080

  wf = require 'lib/windfield'

  world = wf.newWorld()

  ground = {}
  ground.collider = world:newRectangleCollider(0, 1080, 1920, 100)
  ground.collider:setType('static')

  wall = {}
  wall.collider = world:newRectangleCollider(0, 1080 / 2, 1, 1080)
  wall.collider:setType('static')

  player1:load()
  player1.collider =  world:newRectangleCollider(1920 / 4, 1080 / 2, 50, 100)
  player1.collider:setFixedRotation(true)
  --player1.collider:setRestitution(1)

  player2:load()
  player2.collider =  world:newRectangleCollider(1920 / 1.5, 1080 / 2, 50, 100)
  player2.collider:setFixedRotation(true)

end


function love.update(dt)
  dtotal = dtotal + dt
	if dtotal >= 1/60 then

    player1:update(1/60)
    player2:update(1/60)

    world:update(1/60)

    dtotal = math.min(1/60, dtotal - 1/60)
  end
end

function love.draw()

  love.graphics.push()
    love.graphics.scale(gameScale.x, gameScale.y)
    world:draw()
  love.graphics.pop()

end
