interpretPlayer1 = {}

function interpretPlayer1:load()

  self.targetState = {
    heavy = false,
    medium = false,
    jab = false,
		crouch = false,
    jumpNeutral = false,
    jumpLeft = false,
    jumpRight = false,
    walkLeft = false,
    walkRight = false
  }

end

function interpretPlayer1:update(dt)

  --Check for heavy
  --Note that the previous frame is checked so the player will not get repeating C_button attack by holding down the key
  if bufferPlayer1.buffer[1].C_button == true and bufferPlayer1.buffer[2].C_button == false then
    self.targetState.heavy = true
  else
    self.targetState.heavy = false
  end

  --Check for medium
  --Note that the previous frame is checked so the player will not get repeating B_button attack by holding down the key
  if bufferPlayer1.buffer[1].B_button == true  and bufferPlayer1.buffer[2].B_button == false then
    self.targetState.medium = true
  else
    self.targetState.medium = false
  end

  --Check for jab
  --Note that the previous frame is checked so the player will not get repeating A_button attack by holding down the key
  if bufferPlayer1.buffer[1].A_button == true  and bufferPlayer1.buffer[2].A_button == false then
    self.targetState.jab = true
  else
    self.targetState.jab = false
  end

	--Check for crounch
	if bufferPlayer1.buffer[1].down == true then
		self.targetState.crouch = true
	else
		self.targetState.crouch = false
	end

  --Check for jumpNeutral
  if bufferPlayer1.buffer[1].up == true and bufferPlayer1.buffer[1].left == false and bufferPlayer1.buffer[1].right == false
  and bufferPlayer1.buffer[2].left == false and bufferPlayer1.buffer[2].right == false then
    self.targetState.jumpNeutral = true
  else
    self.targetState.jumpNeutral = false
  end

  --Check for jumpLeft
  if bufferPlayer1.buffer[1].up == true and bufferPlayer1.buffer[1].left == true then
    self.targetState.jumpLeft = true
  else
    self.targetState.jumpLeft = false
  end

  --Check for jumpRight
  if bufferPlayer1.buffer[1].up == true and bufferPlayer1.buffer[1].right == true then
    self.targetState.jumpRight = true
  else
    self.targetState.jumpRight = false
  end

  --Check for walkLeft
  if bufferPlayer1.buffer[1].left == true and bufferPlayer1.buffer[1].right == false then
    self.targetState.walkLeft = true
  else
    self.targetState.walkLeft = false
  end

  --Check for walkRight
  if bufferPlayer1.buffer[1].right == true and bufferPlayer1.buffer[1].left == false then
    self.targetState.walkRight = true
  else
    self.targetState.walkRight = false
  end

end
