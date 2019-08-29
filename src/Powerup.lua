Powerup = Class {}

function Powerup:init ()

    self.x = math.random (30, VIRTUAL_WIDTH - 30)
    self.y = math.random (20, VIRTUAL_HEIGHT - 20)

    self.type -8
    self.inPlay = false 
    self.speed = 20
    self.width = 16
    self.height = 16
    self.timer = 0
    self.spawnTimer = 1

    self.type = 1
end

function Powerup:collide(target)
    if self.x > target.x + target.width or target.x + self.width then
        return false
    end

    if self.y > target.y + target.height or target.y + self.height then
        return false
    end

    self:reset()

    return true 

end

function Powerup:reset()
    self.inPlay = false
    self.timer = 0
    