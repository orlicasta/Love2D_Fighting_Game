player1 = {}

function player1:load()

	self.x = (background:getWidth() / 4) + 300
  self.y = background:getHeight() - GROUND_HEIGHT

	self:loadFrameData()

	self.sideStanding = 'left'

	self.stateTimer = 0

	self.currentState = 'idle'
	self.spriteToDraw = self.sprite.idle
  self.quadToDraw = self.anim.idle[1].quad
	self.currentPushbox = self.pushbox.idle[1]
	self.currentHurtbox = self.hurtbox.idle[1]

end


function player1:update(dt)

	self:stepState()

end


function player1:draw()

	--Get quad location / dimensions
	local qx, qy, qw, qh = self.quadToDraw:getViewport()

	love.graphics.draw(self.spriteToDraw, self.quadToDraw, self.x, self.y, 0, 1, 1, qw / 2, qh)

	love.graphics.push()
		love.graphics.setColor(1, 1, 1, 1)
	  love.graphics.rectangle("line", self.x + self.currentPushbox.x, self.y + self.currentPushbox.y, self.currentPushbox.width, self.currentPushbox.height)
	love.graphics.pop()

	love.graphics.push()
		love.graphics.setColor(0, 1, 0, 1)
	  if self.currentHurtbox.active == true then
	    for i = 1, #self.currentHurtbox do
	      if self.sideStanding == 'left' then
	        love.graphics.rectangle("line", self.x + self.currentHurtbox[i].x, self.y + self.currentHurtbox[i].y, self.currentHurtbox[i].width, self.currentHurtbox[i].height)
	      else
	        love.graphics.rectangle("line", self.x - (self.currentHurtbox[i].width + self.currentHurtbox[i].x), self.y + self.currentHurtbox[i].y, self.currentHurtbox[i].width, self.currentHurtbox[i].height)
	      end
	    end
	  end
	love.graphics.pop()

	love.graphics.reset()



end
