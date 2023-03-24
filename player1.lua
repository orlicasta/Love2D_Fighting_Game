player1 = {}


function player1:load()

end


function player1:update(dt)

  player1.collider:setLinearVelocity(0, 1000)

  if love.keyboard.isDown('d')  then
    local px, py = player1.collider:getPosition()
    player1.collider:setLinearVelocity(500, 0)
  end
  if love.keyboard.isDown('a')  then
    local px, py = player1.collider:getPosition()
    player1.collider:setLinearVelocity(-500, 0)
  end
  if love.keyboard.isDown('w')  then
    local px, py = player1.collider:getPosition()
    player1.collider:setLinearVelocity(0, -1000)
  end

end


function player1:draw()


end
