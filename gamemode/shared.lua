GM.Name = "Deathmatch"
GM.Author = "russiantux"
GM.Email = "vguy.lazarev@gmail.com"
GM.Website = "N/A :c"

team.SetUp(0, "Alpha", Color(0, 0, 255) )
team.SetUp(1, "Bravo", Color(255, 0, 0) )


function GM:Initialize()
	self.BaseClass.Initialize( self )
end