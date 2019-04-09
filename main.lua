-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

display.setDefault("background", 200, 130, 0)

local agebutton = display.newImageRect( "calculator-buttons-png-17.png", 180, 60 )
agebutton.x = display.contentCenterX
agebutton.y = 250
agebutton.id = "answer button"

local ageTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 180, 100, 70 )
ageTextField.id = "age textField"

print( "What is your age:" )

function ratedTouch(event)

		local numberage=tonumber(ageTextField.text)
	
	if numberage >=17 then
	    print( "You Can Watch an R rated movie!" .. tostring(numberage) )
	    local seventeen =  display.newText( "You can watch an R rated movie", display.contentCenterX, display.contentCenterY + 150, native.systemFont, 18 )
	    seventeen: setFillColor  (0,1,0)
	elseif numberage >=13 then 
		print("You can watch a PG rated movie!" .. tostring(numberage) )
		local thirteen = display.newText( "You can watch a PG rated movie", display.contentCenterX, display.contentCenterY + 150, native.systemFont, 18 )
	    thirteen: setFillColor (0,1,2)
	else 
		print("You can watch a G rated movie")
		local underage = display.newText( "You can watch a G rated movie", display.contentCenterX, display.contentCenterY + 150, native.systemFont, 18 )
	    underage: setFillColor (1,0,1)
	end
	print("Do again")
end

print( "Program done." )

agebutton:addEventListener( 'touch', ratedTouch)