--[[

				-- LINNET --

]]--
if RequiredScript == 'lib/units/beings/player/playermovement' then
local PlayerUpdate_old = PlayerUpdate_old or PlayerMovement.update

function PlayerMovement:update(unit, t, dt)
	PlayerUpdate_old(self, unit, t, dt)
	local Net = _G.LuaNetworking
local vr_character = managers.criminals:local_character_name()
local current_map = managers.job:current_level_id()
local peer_id = managers.network:session():local_peer():id()

--Jewelry Store/Ukranian Job
local jstore = jstore or {}
jstore.safep1_x = -610
jstore.safep1_y = -831
jstore.safep2_x = -492
jstore.safep2_y = -1067

local ukjob = ukjob or {}
ukjob.safep1_x = 155
ukjob.safep1_y = -1768
ukjob.safep2_x = 475
ukjob.safep2_y = -1563
ukjob.detp1_x = 440
ukjob.detp1_y = 1141
ukjob.detp2_x = 55
ukjob.detp2_y = 1374

if current_map == "jewelry_store" or current_map == "ukrainian_job" then
if vr_character == "russian" or vr_character == "german" then
--local pos = managers.player:player_unit():managers.player:player_unit():position()

	if managers.player:player_unit():position().x >= jstore.safep1_x and managers.player:player_unit():position().x <= jstore.safep2_x and managers.player:player_unit():position().y <= jstore.safep1_y and managers.player:player_unit():position().y >= jstore.safep2_y then
		if not getdrillin then
		managers.player:local_player():sound():say( "Play_rbr_knk_jwl_b_slh_26", false, false )
		getdrillin = true
		end
	end
	if current_map == "ukrainian_job" then
	if managers.player:player_unit():position().x >= ukjob.safep1_x and managers.player:player_unit():position().x <= ukjob.safep2_x and managers.player:player_unit():position().y >= ukjob.safep1_y and managers.player:player_unit():position().y <= ukjob.safep2_y then
		if not getdrillin_uk then
		managers.player:local_player():sound():say( "Play_rbr_knk_jwl_b_slh_26", false, false )
		getdrillin_uk = true
		end
	end
	if managers.groupai:state():whisper_mode() then
	if managers.player:player_unit():position().x <= ukjob.detp1_x and managers.player:player_unit():position().x >= ukjob.detp2_x and managers.player:player_unit():position().y >= ukjob.detp1_y and managers.player:player_unit():position().y <= ukjob.detp2_y then
		if not detector_uk then
		managers.player:local_player():sound():say( "Play_rbr_knk_jwl_b_str_03", false, false )
		detector_uk = true
		end
	end
	end
	
	end
end
end
end
end