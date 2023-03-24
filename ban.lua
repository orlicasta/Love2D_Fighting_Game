ban = {}

function ban:load()
	
	self.speed = 20
	
	self.bodyBox = {width = 100, height = 200}
	
	self.x = 500
	self.y = .4 * love.graphics.getHeight()
	
	maximumDistance = love.graphics.getWidth()
	currentDistance = 0


end

function ban:update(dt)

	if love.keyboard.isDown("d") then
		if currentDistance < maximumDistance and self.x < scale * background:getWidth() - self.bodyBox.width then
			self.x = self.x + self.speed
		end
	end
	if love.keyboard.isDown("a") then
		if currentDistance < maximumDistance and self.x > 0 then
			self.x = self.x - self.speed
		end
	end
	if love.keyboard.isDown("w") then
		self.y = self.y - self.speed
	end
	if love.keyboard.isDown("s") then
		self.y = self.y + self.speed
	end
	
	if self.y > .4 * love.graphics.getHeight() then
			self.y = .4 * love.graphics.getHeight()
	end

end

function ban:draw()

	love.graphics.setColor(1, 0, 1, .5)
	love.graphics.rectangle("fill", self.x, self.y, self.bodyBox.width, self.bodyBox.height)
	love.graphics.reset()

end