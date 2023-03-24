cursor = {}

function cursor:load()
	
	self.sprite = love.graphics.newImage("sprite/cursor.png")

	
	self.x = 0
	self.y = 0

end

function cursor:update(dt)

	self.x = (ban.x + roth.x) /2
	self.y = love.graphics.getHeight() / 2
	if roth.y < self.y then
		self.y = roth.y
	end
	if ban.y < self.y then
		self.y = ban.y
	end
	

end

function cursor:draw()


	love.graphics.draw(self.sprite, self.x, self.y)

	
end