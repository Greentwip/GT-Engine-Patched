require "config"
require "cocos.init"

local device = require("cocos.framework.device")


cc.FileUtils:getInstance():setPopupNotify(false)
cc.FileUtils:getInstance():addSearchPath("src/")
cc.FileUtils:getInstance():addSearchPath("src/")
cc.FileUtils:getInstance():addSearchPath("res/")


if device.platform ~= "winrt" then
    require("lldebugger").start()
end

--
local function main()
    ccexp.AudioEngine:preload('sounds/bgm_boss_intro.mp3')
    ccexp.AudioEngine:preload('sounds/bgm_boss_victory.mp3')
    ccexp.AudioEngine:preload('sounds/bgm_boss_vineman.mp3')
    ccexp.AudioEngine:preload('sounds/bgm_gameover.mp3')
    ccexp.AudioEngine:preload('sounds/bgm_get_weapon.mp3')
    ccexp.AudioEngine:preload('sounds/bgm_level_boomerman.mp3')
    ccexp.AudioEngine:preload('sounds/bgm_level_militaryman.mp3')
    ccexp.AudioEngine:preload('sounds/bgm_level_nightman.mp3')
    ccexp.AudioEngine:preload('sounds/bgm_level_sheriffman.mp3')
    ccexp.AudioEngine:preload('sounds/bgm_level_test.mp3')
    ccexp.AudioEngine:preload('sounds/bgm_level_vineman.mp3')
    ccexp.AudioEngine:preload('sounds/bgm_load_screen.mp3')
    ccexp.AudioEngine:preload('sounds/bgm_opening.mp3')
    ccexp.AudioEngine:preload('sounds/bgm_stage_select.mp3')
    ccexp.AudioEngine:preload('sounds/bgm_stage_sheriffman.mp3')
    ccexp.AudioEngine:preload('sounds/bgm_stage_vineman.mp3')
    ccexp.AudioEngine:preload('sounds/bgm_title.mp3')
    ccexp.AudioEngine:preload('sounds/mus_password.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_buster_charging_high.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_buster_charging_mid.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_buster_shoot.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_buster_shoot_high.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_buster_shoot_mid.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_death.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_door.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_enemyhit.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_enemyland1.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_error.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_explosion1.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_getenergy.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_getlife.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_gyroattack.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_hit.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_land.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_land.ogg')
    ccexp.AudioEngine:preload('sounds/sfx_pause.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_ricochet.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_roar.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_select.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_selected.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_splash.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_taban.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_teleport1.mp3')
    ccexp.AudioEngine:preload('sounds/sfx_teleport2.mp3')
    ccexp.AudioEngine:preload('sounds/screens/boss_intro/bgm_boss_intro.mp3')
    ccexp.AudioEngine:preload('sounds/screens/common/belt/sfx_belt_join.mp3')
    ccexp.AudioEngine:preload('sounds/screens/common/belt/sfx_belt_join.ogg')

    cc.Director:getInstance():setAnimationInterval(1 / 60.0)
    require("app.MyApp"):create():run()

end

local status, msg = xpcall(main, __G__TRACKBACK__)
if not status then
    print(msg)
end
