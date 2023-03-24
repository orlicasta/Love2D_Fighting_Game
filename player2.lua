player2 = {}


function player2:load()

end


function player2:update(dt)

  player2.collider:setLinearVelocity(0, 0)

  if love.keyboard.isDown('right')  then
    local px, py = player2.collider:getPosition()
    player2.collider:setLinearVelocity(500, 0)
  end
  if love.keyboard.isDown('left')  then
    local px, py = player2.collider:getPosition()
    player2.collider:setLinearVelocity(-500, 0)
  end
  if love.keyboard.isDown('up')  then
    local px, py = player2.collider:getPosition()
    player2.collider:setLinearVelocity(0, -1000)
  end

  local cx, cy = player2.collider:getPosition()

  if love.keyboard.isDown('down') and cy < 1080 - 50 then
    local px, py = player2.collider:getPosition()
    player2.collider:setPosition(px ,py + 30)
  end

end


function player2:draw()


end
