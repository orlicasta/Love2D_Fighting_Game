roth = {}

function roth:load()
	
	
	self.speed = 20
	
	self.bodyBox = {width = 100, height = 200}
	
	self.x = 1000
	self.y = .4 * love.graphics.getHeight()


end

function roth:update(dt)

	if love.keyboard.isDown("l") then
		if currentDistance < maximumDistance and self.x < scale * background:getWidth() - self.bodyBox.width then
			self.x = self.x + self.speed
		end
	end
	if love.keyboard.isDown("j") then
		if currentDistance < maximumDistance and self.x > 0 then
			self.x = self.x - self.speed
		end
	end
	if love.keyboard.isDown("i") then
		self.y = self.y - self.speed
	end
	if love.keyboard.isDown("k") then
		self.y = self.y + self.speed
	end
	
	if self.y > .4 * love.graphics.getHeight() then
			self.y = .4 * love.graphics.getHeight()
	end

end

function roth:draw()

	love.graphics.setColor(1, 1, 0, .5)
	love.graphics.rectangle("fill", self.x, self.y, self.bodyBox.width, self.bodyBox.height)
	love.graphics.reset()

end