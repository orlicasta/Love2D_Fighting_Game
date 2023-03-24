
function player1:updateVelocity()

	if self.velocity.y < 0 then
		self.y = self.y + self.velocity.y
		self.velocity.y = self.velocity.y + 2
	elseif self.y < background:getHeight() - GROUND_HEIGHT and self.velocity.y == 0 then
		self.y = self.y + self.gravity
		if self.y > background:getHeight() - GROUND_HEIGHT then
			self.y = background:getHeight() - GROUND_HEIGHT
		end
	end


end
