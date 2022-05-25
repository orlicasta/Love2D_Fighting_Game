
function player1:updateVelocity()

	if self.velocity.y < 0 then
		self.y = self.y + self.velocity.y
		self.velocity.y = self.velocity.y + 1
	elseif self.y < background:getHeight() - GROUND_HEIGHT then
		self.y = self.y + self.gravity
		if self.y > background:getHeight() - GROUND_HEIGHT then
			self.y = background:getHeight() - GROUND_HEIGHT
		end
	end


end
