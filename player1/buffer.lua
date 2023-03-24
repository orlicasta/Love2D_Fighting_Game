bufferPlayer1 = {}

function bufferPlayer1:load()

  self.buffer = {}
  for i = 1, 15 do
    self.buffer[i] = {
      left = false,
      right = false,
      up = false,
      down = false,
      A_button = false,
      B_button = false,
      C_button = false
    }
  end

end

function bufferPlayer1:update(dt)

  --Shift buffer
  for i = 15, 2, -1 do
    self.buffer[i].left = self.buffer[i - 1].left
    self.buffer[i].right = self.buffer[i - 1].right
    self.buffer[i].up = self.buffer[i - 1].up
    self.buffer[i].down = self.buffer[i - 1].down
    self.buffer[i].A_button = self.buffer[i - 1].A_button
    self.buffer[i].B_button = self.buffer[i - 1].B_button
    self.buffer[i].C_button = self.buffer[i - 1].C_button
  end
  --Poll for Left
  if love.keyboard.isDown('a') then
    self.buffer[1].left = true
  else
    self.buffer[1].left = false
  end
  --Poll for Right
  if love.keyboard.isDown('d') then
    self.buffer[1].right = true
  else
    self.buffer[1].right = false
  end
  --Poll for Up
  if love.keyboard.isDown('w') then
    self.buffer[1].up = true
  else
    self.buffer[1].up = false
  end
  --Poll for Down
  if love.keyboard.isDown('s') then
    self.buffer[1].down = true
  else
    self.buffer[1].down = false
  end
  --Poll for A_button
  if love.keyboard.isDown('j') then
    self.buffer[1].A_button = true
  else
    self.buffer[1].A_button = false
  end
  --Poll for B_button
  if love.keyboard.isDown('k') then
    self.buffer[1].B_button = true
  else
    self.buffer[1].B_button = false
  end
  --Poll for C_button
  if love.keyboard.isDown('l') then
    self.buffer[1].C_button = true
  else
    self.buffer[1].C_button = false
  end

end
