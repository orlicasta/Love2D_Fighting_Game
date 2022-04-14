
function player1:loadFrameData()

	self.sprite = {
		idle = love.graphics.newImage('player1/sprite/idle.png'),
		crouch = love.graphics.newImage('player1/sprite/crouch.png'),
		walkForward = love.graphics.newImage('player1/sprite/walkForward.png'),
		walkBackward = love.graphics.newImage('player1/sprite/walkBackward.png')
	}

	self.anim = {
		idle = {},
		crouch = {},
		walkForward = {},
		walkBackward = {}
	}

	self.pushbox = {
		idle = {},
		crouch = {},
		walkForward = {},
		walkBackward = {}
	}

	self.hurtbox = {
		idle = {},
		crouch = {},
		walkForward = {},
		walkBackward = {}
	}

	self.hitbox = {
		idle = {},
		crouch = {},
		walkForward = {},
		walkBackward = {}
	}

	--Idle Animation
	self.anim.idle[1] = {quad = love.graphics.newQuad(0, -16, 128, 128, self.sprite.idle:getDimensions()), lastFrame = 10}
	self.anim.idle[2] = {quad = love.graphics.newQuad(128, -16, 128, 128, self.sprite.idle:getDimensions()), lastFrame = 20}
	self.anim.idle[3] = {quad = love.graphics.newQuad(256, -16, 128, 128, self.sprite.idle:getDimensions()), lastFrame = 30}
	self.anim.idle[4] = {quad = love.graphics.newQuad(384, -16, 128, 128, self.sprite.idle:getDimensions()), lastFrame = 40}

	--Idle pushbox
	self.pushbox.idle[1] = {active = true, x = -10, y = -50, width = 20, height = 50}
	self.pushbox.idle[2] = {active = true, x = -10, y = -50, width = 20, height = 50}
	self.pushbox.idle[3] = {active = true, x = -10, y = -50, width = 20, height = 50}
	self.pushbox.idle[4] = {active = true, x = -10, y = -50, width = 20, height = 50}

	--Idle hurtbox
	self.hurtbox.idle[1] = {active = true}
	self.hurtbox.idle[2] = {active = true}
	self.hurtbox.idle[3] = {active = true}
	self.hurtbox.idle[4] = {active = true}

	self.hurtbox.idle[1][1] = {x = 80, y = 0, width = 20, height = 20}
	self.hurtbox.idle[1][2] = {x = -20, y = -80, width = 40, height = 80}
	self.hurtbox.idle[2][1] = {x = 80, y = 0, width = 20, height = 20}
	self.hurtbox.idle[2][2] = {x = -20, y = -80, width = 40, height = 80}
	self.hurtbox.idle[3][1] = {x = 80, y = 0, width = 20, height = 20}
	self.hurtbox.idle[3][2] = {x = -20, y = -80, width = 40, height = 80}
	self.hurtbox.idle[4][1] = {x = -20, y = 0, width = 20, height = 20}
	self.hurtbox.idle[4][2] = {x = -20, y = -80, width = 40, height = 80}

	--crouch
	self.anim.crouch[1] = {quad = love.graphics.newQuad(0, -16, 128, 128, self.sprite.crouch:getDimensions()), lastFrame = 1}

	--WalkForward
	self.anim.walkForward[1] = {quad = love.graphics.newQuad(0, -16, 128, 128, self.sprite.walkForward:getDimensions()), lastFrame = 5}
	self.anim.walkForward[2] = {quad = love.graphics.newQuad(128, -16, 128, 128, self.sprite.walkForward:getDimensions()), lastFrame = 10}

	--WalkBackward
	self.anim.walkBackward[1] = {quad = love.graphics.newQuad(0, -16, 128, 128, self.sprite.walkBackward:getDimensions()), lastFrame = 10}
	self.anim.walkBackward[2] = {quad = love.graphics.newQuad(128, -16, 128, 128, self.sprite.walkBackward:getDimensions()), lastFrame = 20}
	self.anim.walkBackward[3] = {quad = love.graphics.newQuad(256, -16, 128, 128, self.sprite.walkBackward:getDimensions()), lastFrame = 30}

end
