-- Copyright 2014-2015 Greentwip. All Rights Reserved.

local testwrapper = import("app.core.gameplay.control.layout_base").create("testwrapper")

function testwrapper:onLoad()

end

function testwrapper:step(dt)
--    if not self.triggered_ then
--        if cc.key_pressed(cc.key_code_.start) then
--            self.triggered_ = true
--            audio.playSound("sounds/sfx_selected.wav")
--            self:getApp():enterScene("gameplay.stage_select", "FADE", 1)
--        end
--    end
    self:post_step(dt)

    cc.current_level_ = cc.levels_[10]

    self:getApp()
        :enterScene("levels.level", "FADE", 2, {physics = true})
        :prepare()


    return self
end

return testwrapper