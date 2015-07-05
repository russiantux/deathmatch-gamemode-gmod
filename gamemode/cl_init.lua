include ("shared.lua")

function TeamMenu()
	
	local ply = LocalPlayer()

	local BackGround = vgui.Create( "DFrame")
	BackGround:SetSize( 280,100)
	BackGround:SetPos( 5 , 300 )
	BackGround:SetTitle("Choose Teams")
	BackGround:SetVisible(true)
	BackGround:SetDraggable(true)
	BackGround:ShowCloseButton(true)
	BackGround.Paint = function( self, w, h )
		draw.RoundedBox( 0, 0, 0, w, h, Color( 231, 76, 60, 170 ) )
	end
	BackGround:MakePopup()

	local AButton = vgui.Create( "DButton", BackGround)
	AButton:SetSize(90, 40)
	AButton:SetText("Alpha")
	AButton:SetPos(50, 40)
	AButton.Paint = function( self, w, h )
		draw.RoundedBox(0, 0, 0, w, h,Color( 33,150,243,250 ))
	end
	AButton.DoClick = function ()
		ply:ConCommand("set_team 0")
	end

	local AButton2 = vgui.Create( "DButton", BackGround)
	AButton2:SetSize(90, 40)
	AButton2:SetText("Bravo")
	AButton2:SetPos(150, 40)
	AButton2.Paint = function( self, w, h )
		draw.RoundedBox(0, 0, 0, w, h,Color( 244, 67, 54, 250))
	end
	AButton2.DoClick = function ()
		ply:ConCommand("set_team 1")
		
	end

end
concommand.Add( "open_teams", TeamMenu)

usermessage.Hook("opening_the_team_menu", TeamMenu)