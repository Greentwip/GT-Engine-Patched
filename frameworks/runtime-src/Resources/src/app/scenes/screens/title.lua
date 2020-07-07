-- Copyright 2014-2015 Greentwip. All Rights Reserved.

local title = import("app.core.gameplay.control.layout_base").create("title")

local sprite    = import("app.core.graphical.sprite")
local label     = import("app.core.graphical.label")
local selector  = import("app.objects.gameplay.level.ui.selector")

function title:onLoad()

    self.background_ = sprite:create("sprites/gameplay/screens/title_screen/title_screen", cc.p(0, 0))
                             :setPosition(cc.p(0,0))
                             :addTo(self)

    self.selector_ = selector:create("arrow", "right")
                             :setPosition(cc.p(64,96))
                             :addTo(self, 128)

    self.text_ = label:create("start game",
                              "fonts/megaman_2.ttf",
                              8,
                              cc.TEXT_ALIGNMENT_LEFT,
                              cc.VERTICAL_TEXT_ALIGNMENT_TOP)
                      :addTo(self, 128)

    self.text_:setPosition(cc.p(self.selector_:getPositionX() + self.selector_.sprite_:getContentSize().width,
                                self.selector_:getPositionY() + self.text_.label_:getContentSize().height * 0.5))

    ccexp.AudioEngine:play2d("sounds/bgm_title.mp3", true, 1)

    -- self variables
    self.triggered_ = false
end

function title:step(dt)
    if not self.triggered_ then
        if cc.key_pressed(cc.key_code_.a) then
            self.triggered_ = true

            ccexp.AudioEngine:stopAll()
            ccexp.AudioEngine:play2d("sounds/sfx_selected.mp3")

            local callback = cc.CallFunc:create(function()

                self.exit_arguments_ = {}
                self.exit_arguments_.demo_browner_id_ = cc.browners_.violet_.id_
    
                self:getApp()
                    :enterScene("screens.stage_select", "FADE", 0.5)
    
            end)
    
            local delay = cc.DelayTime:create(0.5)
    
            local sequence = cc.Sequence:create(delay, callback, nil)
    
            self:runAction(sequence)    

        end
    end

    self:post_step(dt)

    return self
end



return title