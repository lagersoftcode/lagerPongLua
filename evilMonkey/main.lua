local physics = require( "physics" )
physics.start()

local background = display.newImage("img/background.jpg", display.contentWidth, display.contentHeight)
background.x, background.y = display.contentCenterX, display.contentCenterY

local ground = display.newImage("img/ground.png", 160, 480)
ground:scale(1.7, 1)
physics.addBody( ground, "static", { friction=0.5, bounce=0.3 } )

local evilMonkey = display.newImage("img/evil-monkey.png", 180, -180)
evilMonkey.rotation = 5

physics.addBody( evilMonkey, { density=3.0, friction=0.5, bounce=0.3 } )
