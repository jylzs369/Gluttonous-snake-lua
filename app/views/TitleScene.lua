
local TitleScene = class("TitleScene", cc.load("mvc").ViewBase)
local mainScene = require('MainScene')
function TitleScene:onCreate()
  -- 添加游戏标题
  --[[ cc.Label:createWithSystemFont('贪吃蛇', 'Microsoft Yahei', 32)
    :move(display.cx, display.top - 50)
    :addTo(self) ]]
  display.newSprite('title.png')
    :move(display.cx + 55, display.top - 100)
    :addTo(self)

  -- 添加开始按钮
  self.startBtn = ccui.Button:create('start-normal.png', 'start-hover.png')
  self.startBtn:move(display.cx, display.cy - 50):addTo(self)

  self.startBtn:addTouchEventListener(function ()
    
    display.replaceScene(display.newScene(mainScene), 'crossFade', 0.5)
  end)
end

return TitleScene