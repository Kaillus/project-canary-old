vr_prepare_first = nil
vr_prepare = nil
vr_prep_assault_check = nil
vr_ini_10s = nil
vr_ini_20s = nil
vr_10s = nil
vr_20s = nil
vr_assault = nil
vr_break = nil
vr_stop = nil

local mercurius_modifier
local ban_global = function() return CanaryOptions._data.ban_global end
local ban_toggle = function() return CanaryOptions._data.ban_toggle end
local ban_start = function() return CanaryOptions._data.ban_start_assault_toggle end
local ply_assault_toggle = function() return CanaryOptions._data.ply_assault_toggle end

--[[if ban_global == nil then
	ban_global = true
end

if ban_toggle == nil then
	ban_toggle = false
end

if ban_start == nil then
	ban_start = true
end

if ply_assault_toggle == nil then
	ply_assault_toggle = false
end]]

vr_10s_i = vr_10s_i or function()
	if ( Utils:IsInCustody() ~= true ) then
	if ban_global() then
	managers.player:local_player():sound():say( 'Play_ban_b02b', false, ban_toggle() )
	end
	DelayedCalls:Add("prep_10", 3, assault_prepare)
	end
end
vr_20s_i = vr_20s_i or function()
	if ( Utils:IsInCustody() ~= true ) then
	if ban_global() then
	managers.player:local_player():sound():say( 'Play_ban_b02a', false, ban_toggle() )
	end
	DelayedCalls:Add("prep_20", 3, assault_20s)
	end
end
vr_10s_f = vr_10s_f or function()
	if ( Utils:IsInCustody() ~= true ) then
	if ban_global() then
	managers.player:local_player():sound():say( 'Play_ban_b05x', false, ban_toggle() )
	end
	DelayedCalls:Add("prep_10", 3, assault_prepare)
	end
end
vr_20s_f = vr_20s_f or function()
	if ( Utils:IsInCustody() ~= true ) then
	if ban_global() then
	managers.player:local_player():sound():say( 'Play_ban_b04x', false, ban_toggle() )
	end
	DelayedCalls:Add("prep_20_FUCK", 1, assault_20s_f)
	end
end
assault_30s = assault_30s or function()
	if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "g62", false, ply_assault_toggle() )
	end
end

assault_20s = assault_20s or function()
	if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound_source():set_switch("int_ext", "third")
	managers.player:local_player():sound():say( "g70", false, ply_assault_toggle() )
	managers.player:local_player():sound_source():set_switch("int_ext", "first")
	end
end
assault_20s_f = assault_20s_f or function()
	if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "r01x_sin", false, ply_assault_toggle() )
	end
end
assault_prepare = assault_prepare or function()
	if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound_source():set_switch("int_ext", "third")
	managers.player:local_player():sound():say( "g50", false, ply_assault_toggle() )
	managers.player:local_player():sound_source():set_switch("int_ext", "first")
	DelayedCalls:Add("letsrockk", 4, letsrockk)
	end
end

letsrockk = letsrockk or function()
	managers.player:local_player():sound():say( 'a01x_any', false, false )
end

vr_letsrock = vr_letsrock or function()
	if Utils:IsInGameState() and Utils:IsInHeist() then
		local vr_letsrock = { 'g16', 'a01x_any', 'g18', 'g90' }
		letsrock = letsrock + 1
			if letsrock == 1 then
				managers.player:local_player():sound():say( 'a01x_any', false, false )
			elseif letsrock > 1 then
				managers.player:local_player():sound_source():set_switch("int_ext", "third")
				managers.player:local_player():sound():say( vr_letsrock[math.random( #vr_letsrock )], false, false )
				managers.player:local_player():sound_source():set_switch("int_ext", "first")
			end
	end
end
vr_warcry_check = vr_warcry_check or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
vr_wc_check = nil
	if not vr_wc_check and not vr_stop then
	vr_wc_check = true
	DelayedCalls:Add("warcry_rep", 0, vr_warcry_rep)
	end
end
end
vr_warcry = vr_warcry or function()
local cs = managers.player._current_state
	if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	if (cs ~= "bleed_out") or (cs ~= "incapacitated") or (cs ~= "arrested") or (cs ~= "tased") or (cs ~= "fatal") then
	managers.player:local_player():sound_source():set_switch("int_ext", "third")
	managers.player:local_player():sound():say( "g90", false, true )
	managers.player:local_player():sound_source():set_switch("int_ext", "first")
	end
	if not vr_stop then
	DelayedCalls:Add("warcry_check", 0, vr_warcry_check)
	end
	end
end
vr_warcry_rep = vr_warcry_rep or function()
	local time_warcry = {25, 30, 35, 40, 45, 55, 60, 65, 75, 80, 85, 90, 95 }
	local time_random = time_warcry[math.random( #time_warcry )]
	if not vr_stop then
	DelayedCalls:Add("warcry", time_random, vr_warcry)
	end
end

if RequiredScript == 'lib/managers/hudmanager' then

function HUDManager:sync_start_anticipation_music()
	managers.music:post_event(tweak_data.levels:get_music_event("anticipation"))
	local current_map = managers.job:current_level_id()
	if current_map ~= "watchdogs_1_night" then
		if current_map ~= "watchdogs_1" then
		if current_map ~= "alex_1" then
		if current_map ~= "rat" then
		if current_map ~= "firestarter_1" then
		if not vr_prepare_first then
			if not vr_ini_10s and not vr_ini_20s then
				DelayedCalls:Add("anticipation_ini_10", 20, vr_10s_i)
				vr_ini_10s = true
				DelayedCalls:Add("anticipation_ini_20", 10, vr_20s_i)
				vr_ini_20s = true
				if Utils:IsInCustody() ~= true then
				if ban_global() then
				managers.player:local_player():sound():say( 'Play_ban_b01b', false, ban_toggle() )
				--managers.dialog:queue_dialog("Play_ban_b01b", {})
				end
				DelayedCalls:Add("30sconfirm", 5, assault_30s)
				end
			vr_prepare_first = true
			end
		end
		elseif current_map == "firestarter_1" then
			if not vr_prepare_first then
				if not vr_ini_10s and vr_ini_20s then
					DelayedCalls:Add("anticipation_ini_10", 20, vr_10s_i)
					vr_ini_10s = true
					DelayedCalls:Add("anticipation_aft_20", 10, vr_20s_f)
					vr_ini_20s = true
				vr_prepare_first = true
				end
			end
		end
		if not vr_prepare and vr_prepare_first and vr_prep_assault_check then
		--local vr_prep_random = { 'Play_ban_b01b', 'Play_ban_b02a', 'Play_ban_b02b' }
		local vr_prep_random = { 'Play_ban_b03x', 'Play_ban_b04x', 'Play_ban_b05x' }
		local vr_prep_random_a = vr_prep_random[math.random( #vr_prep_random )]
			if ( vr_prep_random_a == 'Play_ban_b04x' ) and not vr_20s then
				DelayedCalls:Add("anticipation_aft_20", 10, vr_20s_f)
				DelayedCalls:Add("anticipation_ini_10", 20, vr_10s_i)
				vr_20s = true
			elseif ( vr_prep_random_a == 'Play_ban_b05x' ) and not vr_10s then
				DelayedCalls:Add("anticipation_aft_10", 20, vr_10s_f)
				vr_10s = true
			elseif ( vr_prep_random_a == 'Play_ban_b03x' ) then
				if Utils:IsInCustody() ~= true then
				if ban_global() then
				managers.player:local_player():sound():say( 'Play_ban_b03x', false, ban_toggle() )
				end
				DelayedCalls:Add("30sconfirm", 5, assault_30s)
				end
				DelayedCalls:Add("anticipation_ini_20", 10, vr_20s_i)
				DelayedCalls:Add("anticipation_ini_10", 20, vr_10s_i)
			end
		end
		end
		end
		end
	end
end

elseif RequiredScript == 'lib/managers/hudmanagerpd2' then

function HUDManager:sync_start_assault(data)
	managers.music:post_event(tweak_data.levels:get_music_event("assault"))
	local assault_diag = {
		"gen_ban_b02c",
		"Play_ban_s05"
	}
	if ban_start() then
	local assault_rand = assault_diag[math.random( #assault_diag )]
	if ( assault_rand == "gen_ban_b02c" ) then
		if not managers.groupai:state():get_hunt_mode() then		
			managers.dialog:queue_dialog("gen_ban_b02c", {})
		end
	elseif ( assault_rand == "Play_ban_s05" ) then
		if not managers.groupai:state():get_hunt_mode() then
		--	managers.dialog:queue_dialog("gen_ban_b02c", {})
			DelayedCalls:Add("specials_incoming", 0.5, vr_inbound)
		end
	end
	else
	if not managers.groupai:state():get_hunt_mode() then		
		managers.dialog:queue_dialog("gen_ban_b02c", {})
	end
	end
	self._hud_assault_corner:sync_start_assault(data)
	vr_prepare_first = true
	vr_prep_assault_check = true
	vr_prepare = nil
	vr_20s = nil
	vr_10s = nil
	vr_break = nil
	vr_stop = nil
	if not vr_assault then
	if Utils:IsInGameState() and Utils:IsInCustody() ~= true then
		--managers.player:local_player():sound():say( vr_letsrock[math.random( #vr_letsrock )], false, false )
		DelayedCalls:Add("letsrock", 0.1, vr_letsrock)
		DelayedCalls:Add("warcry_rep", 0.1, vr_warcry_rep)
		vr_noreturn = nil
		vr_assault = true
		vr_break = nil
		vr_emergency = nil
		if not Utils:IsInGameState() then
		if DLCManager_hasdlcpack(bonnie) then
		mercurius_exec()
		end
		end
	end
	end
end

function HUDManager:sync_end_assault(result)
	managers.music:post_event(tweak_data.levels:get_music_event("control"))
	local result_diag = {
		"gen_ban_b12",
		"gen_ban_b11",
		"gen_ban_b10"
	}
	if result then
		managers.dialog:queue_dialog(result_diag[result + 1], {})
	end
	self._hud_assault_corner:sync_end_assault(result)
	vr_assault = nil
	if not vr_break and Utils:IsInCustody() ~= true then
		vr_assault = nil
		vr_noreturn = nil
		vr_break = true
		vr_emergency = nil
	end
	DelayedCalls:Remove("warcry_rep")
	DelayedCalls:Remove("warcry")
	DelayedCalls:Remove("warcry_check")
	vr_stop = true
end

end