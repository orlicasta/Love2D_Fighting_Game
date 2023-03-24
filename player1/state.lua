
function player1:stepState()

		--jumpNeutral
		if self.currentState == 'jumpNeutral' then

			self:handleJumpNeutral()

			self.currentState = 'jumping'


		end

		if self.currentState == 'jumping' then

			if self.y >= background:getHeight() - GROUND_HEIGHT then
				self.currentState = 'idle'
			end

			self.stateTimer = self.stateTimer + 1

		end

		--WalkLeft state
		if self.currentState == 'walkLeft' then

			--Check for exit conditions
			if interpretPlayer1.targetState.crouch == true then
				self.stateTimer = 1
				self.currentState = 'crouch'

			elseif interpretPlayer1.targetState.jumpNeutral == true then
				self.stateTimer = 1
				self.currentState = 'jumpNeutral'

			--Continue walkRight cycle
			elseif interpretPlayer1.targetState.walkLeft == true then
				self:handleWalkLeft()
				self.stateTimer = self.stateTimer + 1
			--Otherwise return to idle state
			else
				self.stateTimer = 1
				self.currentState = 'idle'
			end

		end

		--WalkRight state
		if self.currentState == 'walkRight' then

			--Check for exit conditions
			if interpretPlayer1.targetState.crouch == true then
				self.stateTimer = 1
				self.currentState = 'crouch'

			elseif interpretPlayer1.targetState.jumpNeutral == true then
				self.stateTimer = 1
				self.currentState = 'jumpNeutral'

			--Continue walkRight cycle
			elseif interpretPlayer1.targetState.walkRight == true then
				self:handleWalkRight()
				self.stateTimer = self.stateTimer + 1
			--Otherwise return to idle state
			else
				self.stateTimer = 1
				self.currentState = 'idle'
			end

		end

	--Crouch state
	if self.currentState == 'crouch' then

		if interpretPlayer1.targetState.crouch == true then
			self:handleCrouch()
			self.stateTimer = self.stateTimer + 1
		else
			self.stateTimer = 1
			self.currentState = 'idle'
		end

	end

	--Idle state
	if self.currentState == 'idle' then
		--Check for exit condition
		if interpretPlayer1.targetState.crouch == true then
			self.stateTimer = 1
			self.currentState = 'crouch'
		elseif interpretPlayer1.targetState.jumpNeutral == true then
			self.stateTimer = 1
			self.currentState = 'jumpNeutral'
		elseif interpretPlayer1.targetState.walkLeft == true then
			self.stateTimer = 1
			self.currentState = 'walkLeft'
		elseif interpretPlayer1.targetState.walkRight == true then
			self.stateTimer = 1
			self.currentState = 'walkRight'
		else
			self:handleIdle()
			self.stateTimer = self.stateTimer + 1
		end

	end



end
