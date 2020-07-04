-- Copyright 2014-2015 Greentwip. All Rights Reserved.

local testwrapper = import("app.core.gameplay.control.layout_base").create("testwrapper")

function testwrapper:onLoad()

end

function testwrapper:step(dt)
    self:post_step(dt)

    cc.current_level_ = cc.levels_[13]

    self:getApp()
        :enterScene("levels.level", "FADE", 2, {physics = true})
        :prepare()

    return self
end

return testwrapper