
function player1:handleSideStanding()

  self.sideStanding = 'left'

end

function player1:handleWalkLeft()



  if self.stateTimer > self.anim.walkBackward[#self.anim.walkBackward].lastFrame then
		self.stateTimer = 1
	end

  --Movement
  self.x = self.x - 1

  --Animation
  self.spriteToDraw = self.sprite.walkBackward

	for i = #self.anim.walkBackward, 1, -1 do

		if self.stateTimer <= self.anim.walkBackward[i].lastFrame then
			self.quadToDraw = self.anim.walkBackward[i].quad
      --self.currentBodyBox = self.bodyBox.crouch[i]
      --self.currentHurtBoxes = self.hurtBoxes.crouch[i]
		end

	end

end


function player1:handleWalkRight()

  if self.stateTimer > self.anim.walkForward[#self.anim.walkForward].lastFrame then
		self.stateTimer = 1
	end

  --Movement
  self.x = self.x + 1

  --Animation
  self.spriteToDraw = self.sprite.walkForward

	for i = #self.anim.walkForward, 1, -1 do

		if self.stateTimer <= self.anim.walkForward[i].lastFrame then
			self.quadToDraw = self.anim.walkForward[i].quad
      --self.currentBodyBox = self.bodyBox.crouch[i]
      --self.currentHurtBoxes = self.hurtBoxes.crouch[i]
		end

	end

end

function player1:handleCrouch()

  if self.stateTimer > self.anim.crouch[#self.anim.crouch].lastFrame then
		self.stateTimer = 1
	end

  --Animation
  self.spriteToDraw = self.sprite.crouch

	for i = #self.anim.crouch, 1, -1 do

		if self.stateTimer <= self.anim.crouch[i].lastFrame then
			self.quadToDraw = self.anim.crouch[i].quad
      --self.currentBodyBox = self.bodyBox.crouch[i]
      --self.currentHurtBoxes = self.hurtBoxes.crouch[i]
		end

	end

end

function player1:handleIdle()

  if self.stateTimer > self.anim.idle[#self.anim.idle].lastFrame then
		self.stateTimer = 1
	end

	--Animation
  self.spriteToDraw = self.sprite.idle

	for i = #self.anim.idle, 1, -1 do

		if self.stateTimer <= self.anim.idle[i].lastFrame then
			self.quadToDraw = self.anim.idle[i].quad
      self.currentBodybox = self.bodybox.idle[i]
      self.currentHurtbox = self.hurtbox.idle[i]
		end

	end

end
