-- Copyright 2014-2015 Greentwip. All Rights Reserved.

local testwrapper = import("app.core.gameplay.control.layout_base").create("testwrapper")

function testwrapper:onLoad()
    self.triggered_ = false
end

function testwrapper:step(dt)
    self:post_step(dt)

    if not self.triggered_ then
        local level = "levels.level_weapon"
        local physics = true

        local init = true

        local scene = self:getApp()
                          :enterScene(level, "FADE", 1, {physics = physics})

        if init then
            scene:prepare(self.exit_arguments_)
        end
    end
    return self
end

return testwrapper