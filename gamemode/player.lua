local ply = FindMetaTable("Player")

local teams = {}

teams[0] = {name = "Alpha", color = Vector(.2,.2,1.0), weapons = {"fas2_g3", "fas2_m1911"} }
teams[1] = {name = "Bravo", color = Vector(1.0,.2,.2), weapons = {"fas2_sks", "fas2_p226"} }


function ply:SetGamemodeTeam( n )
	if not teams[n] then return end

	self:SetTeam( n )

	self:SetPlayerColor( teams[n].color)

	ply:GiveGamemodeWeapons()

	return true
end

function ChangeMyTeam( ply, cmd, args )
	ply:SetTeam( args[1] )
	ply:Spawn()
end
concommand.Add( "set_team", ChangeMyTeam )

function ply:GiveGamemodeWeapons()
	local n = self:Team()
	self:StripWeapons()

	for k, wep in pairs(teams[n].weapons) do
		self:Give(wep)
	end
end