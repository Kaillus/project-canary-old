if Utils:IsInGameState() and Utils:IsInHeist() --[[) or Utils:IsInLoadingState()]] then
if not ITURIOWLET then
local Net = _G.LuaNetworking
local ban_toggle = CanaryOptions._data.ban_toggle
local vr_character = managers.criminals:local_character_name()
local current_map = managers.job:current_level_id()
local vr_fuck = { 'g60', 'g29', 'null' }
local vr_fuck_2 = { 'g22', 'g92', 'g61', 'p04' }
local vr_joker = { 'f38_any', 's21x_sin', 'f40_any' }
local vr_begin_random = { 'p24', 's21x_sin', 'g14' }
local vr_begin_hox = { 'p24', 'a01x_any', 'g14' }
local vr_begin_wolf = { 's21x_sin', 'a01x_any', 'g14' }
local vr_revive_table = { 's08x_sin', 's09a', 's09b' }
local peer_id = managers.network:session():local_peer():id()
	
	if ( vr_character == "german" ) then
		drill_1r = { "d01x_" }
	else
		drill_1 = { "d03_", "d01x_" }
		drill_1r = drill_1[math.random( #drill_1 )]
	end

	if ( vr_character == "german" ) then
		drill_2r = { "d02x_" }
	else
		drill_2 = { "d04_", "d02x_" }
		drill_2r = drill_2[math.random( #drill_2 )]
	end
	
	--[[if Net:IsMultiplayer() and Net:IsHost() and not vr_fetch_count then
		vr_camera_halfway = vr_camera_count / 2
		Net:SendToPeers( "C_CamHalf", vr_camera_halfway )
		vr_fetch_count = true
	end]]
	if not rt_07 then
		if (current_map == "alex_1") or (current_map == "rat") then
		DelayedCalls:Add("3bags", 15, pln_rt_07)
		rt_07 = true
		end
	end
	if rat_check04 then
		if (current_map == "alex_1") then
			if not rt04_l then
			if ban_global then
			DelayedCalls:Add("4bags", 1, pln_rt_30)
			end
			rt04_l = true
			end
		end
	end
	if rat_check31 then
		if (current_map == "alex_1") then
			if not rt31_l then
			DelayedCalls:Add("7bags", 1, pln_rt_31)
			rt31_l = true
			end
		end
	end
	if not j04 then
		if current_map == "jewelry_store" then
		DelayedCalls:Add("pln_jwl_04", 8, pln_jwl_04)
		j04 = true
		end
	end
	if not wd1_warning then
		if ( current_map == "watchdogs_1_night" ) or ( current_map == "watchdogs_1" ) then
			if ( vr_character == "russian" ) then
			DelayedCalls:Add("wd1_warn", 27.5, wd1_warn)
			wd1_warning = true
			elseif vr_character ~= "russian" then
			DelayedCalls:Add("wd1_fire", 30, wd1_fire)
			wd1_warning = true
			end
		end
	end
	--if ( objective_text_override == "STEAL AND SECURE THE JEWELRY" ) and ( objective_current_amount_override >= objective_amount_override / 2 ) and not halfway then
	if objective_current_amount_override and objective_amount_override then
	if ( objective_current_amount_override >= objective_amount_override / 2 ) and not halfway then
		DelayedCalls:Add("halfwaygot", 0, halfwaygot)
		halfway = true
	end
	end
	--[[if objective_text_override then
	if objective_text_override:find( "ESCAPE" ) and not all then
		if current_map == "jewelry_store" or current_map == "ukrainian_job" or current_map == "kosugi" then
		DelayedCalls:Add("gotemall", 0, gotemall)
		all = true
		end
	end
	end
	if objective_text_override then
	if objective_text_override:find( "ESCAPE" ) and not linger then
		DelayedCalls:Add("lingering", 30, lingering)
		linger = true
	end
	end]]
	if managers.player:has_category_upgrade("player", "morale_boost") then
		rev_time = 3
	else
		rev_time = 6
	end
	if alive(managers.interaction:active_object()) then
	local active_interaction = managers.interaction:active_object():interaction()
	local active_tweak = active_interaction.tweak_data
		if active_tweak == 'drill' then
		if managers.player:player_unit():movement():current_state():_interacting() then
			if not vr_drill_place then
				DelayedCalls:Add("drillplace", 2.95, drill_place)
				vr_drill_place = true
				vr_drill_fix = nil
				vr_drill_upg = nil
				vr_hacking = nil
				vr_lance_fix = nil
				vr_lockpick = nil
				vr_keycard = nil
			end
		end
		end
		if ( active_tweak == 'lance' ) or ( active_tweak == 'huge_lance' ) then
		if managers.player:player_unit():movement():current_state():_interacting() then
			if not vr_drill_place then
				DelayedCalls:Add("lanceplace", 2.95, lance_place)
				vr_drill_place = true
				vr_drill_fix = nil
				vr_drill_upg = nil
				vr_hacking = nil
				vr_lance_fix = nil
				vr_lockpick = nil
				vr_keycard = nil
			end
		end
		end
		if active_tweak == "drill_upgrade" then
		if managers.player:player_unit():movement():current_state():_interacting() then
			if not vr_drill_upg then
				managers.player:local_player():sound():say( 'g61', true, true )
				vr_drill_place = nil
				vr_drill_fix = nil
				vr_drill_upg = true
				vr_hacking = nil
				vr_lance_fix = nil
				vr_lockpick = nil
				vr_keycard = nil
			end
		end
		end
		if active_tweak == "lance_upgrade" then
		if managers.player:player_unit():movement():current_state():_interacting() then
			if not vr_drill_upg then
				managers.player:local_player():sound():say( 'g61', true, true )
				vr_drill_place = nil
				vr_drill_fix = nil
				vr_drill_upg = true
				vr_hacking = nil
				vr_lance_fix = nil
				vr_lockpick = nil
				vr_keycard = nil
			end
		end
		end
		if ( active_tweak == "drill_jammed" ) and managers.player:player_unit():movement():current_state():_interacting() then
			if not vr_drill_fix then
				managers.player:local_player():sound():say( vr_fuck[math.random( #vr_fuck )], true, true )
				vr_drill_place = nil
				vr_drill_fix = true
				vr_drill_upg = nil
				vr_hacking = nil
				vr_lance_fix = nil
				vr_lockpick = nil
				vr_keycard = nil

			end
		end
		if ( active_tweak == "lance_jammed" ) or ( active_tweak == "huge_lance_jammed" ) then
		if managers.player:player_unit():movement():current_state():_interacting() then
			if not vr_lance_fix then
				managers.player:local_player():sound():say( vr_fuck_2[math.random( #vr_fuck_2 )], true, true )
				vr_drill_place = nil
				vr_drill_fix = nil
				vr_drill_upg = nil
				vr_hacking = nil
				vr_lance_fix = true
				vr_lockpick = nil
				vr_keycard = nil
			end
		end
		end
		if active_tweak:find("comp") or active_tweak:find("computer") or active_tweak:find("hack") or active_tweak:find("hacking") or active_tweak:find("grab") or active_tweak:find("keyboard") then
		if managers.player:player_unit():movement():current_state():_interacting() then
			if not vr_hacking then
				managers.player:local_player():sound():say( 'g92', true, true )
				vr_drill_place = nil
				vr_drill_fix = nil
				vr_drill_upg = nil
				vr_hacking = true
				vr_lance_fix = nil
				vr_lockpick = nil
				vr_keycard = nil
			end
		end
		end
		if ( active_tweak == "intimidate" ) and managers.player:player_unit():movement():current_state():_interacting() then
			if not vr_cabletie and not cableties_first then
				managers.player:local_player():sound():say( 'g26', true, true )
				DelayedCalls:Add("cab_clbk", 1, tie_clbk)
				vr_cabletie = true
			elseif vr_cabletie and not vr_cabletie_cont and cableties_first then
				managers.player:local_player():sound():say( 'f03b_any', true, true )
				vr_cabletie_cont = true
			end
		end
		if ( active_tweak == "hostage_convert" ) and managers.player:player_unit():movement():current_state():_interacting() then
			if not vr_convert then
				managers.player:local_player():sound_source():set_switch("int_ext", "first")
				managers.player:local_player():sound():say( vr_joker[math.random( #vr_joker )], true, true )
				managers.player:local_player():sound_source():set_switch("int_ext", "third")
				vr_drill_place = nil
				vr_drill_fix = nil
				vr_drill_upg = nil
				vr_lance_fix = nil
				vr_convert = true
				vr_lockpick = nil
				vr_keycard = nil
			end
		end
		if active_tweak:find("lock") and managers.player:player_unit():movement():current_state():_interacting() then
		if active_tweak ~= "barcode_opa_locka" then
			if not vr_lockpick then
				managers.player:local_player():sound():say( 'p29', true, true )
				vr_drill_place = nil
				vr_drill_fix = nil
				vr_drill_upg = nil
				vr_hacking = nil
				vr_lance_fix = nil
				vr_lockpick = true
				vr_keycard = nil
			end
		end
		end
		if active_tweak:find("keycard") and managers.player:player_unit():movement():current_state():_interacting() then
			if not vr_keycard then
				managers.player:local_player():sound():say( 'p30', true, true )
				vr_drill_place = nil
				vr_drill_fix = nil
				vr_drill_upg = nil
				vr_hacking = nil
				vr_lance_fix = nil
				vr_lockpick = nil
				vr_keycard = true
			end
		end
		if ( active_tweak == "gen_pku_jewelry" ) and managers.player:player_unit():movement():current_state():_interacting() then
			if not vr_sapphire then
				if (vr_character == "russian") or (vr_character == "german") or (vr_character == "spanish") then
					if (current_map == "ukrainian_job") or (current_map == "jewelry_store") then
						managers.player:local_player():sound():say( 'Play_rbr_knk_jwl_b_dia_23', false, true )
						vr_sapphire = true
					end
				end
			end
		end
		
		if ( active_tweak == "revive" ) and managers.player:player_unit():movement():current_state():_interacting() then
				if not vr_revive then
					managers.player:local_player():sound_source():set_switch("int_ext", "third")
					managers.player:local_player():sound():say( vr_revive_table[math.random( #vr_revive_table )], true, true )
					managers.player:local_player():sound_source():set_switch("int_ext", "first")
					vr_drill_place = nil
					vr_drill_fix = nil
					vr_drill_upg = nil
					vr_hacking = nil
					vr_lance_fix = nil
					vr_lockpick = nil
					vr_keycard = nil
					DelayedCalls:Add("reviveclbk", rev_time, rev_clbk)
					vr_revive = true
				end
		end
		if (( active_tweak == "ammo_bag" ) or ( active_tweak == "doctor_bag" ) or ( active_tweak == "first_aid_kit" )) and managers.player:player_unit():movement():current_state():_interacting() then
			if not vr_healing then
				managers.player:local_player():sound():say( 's05x_sin', true, true )
				vr_drill_place = nil
				vr_drill_fix = nil
				vr_drill_upg = nil
				vr_hacking = nil
				vr_lance_fix = nil
				vr_lockpick = nil
				vr_keycard = nil
				vr_healing = true
			end
		end
		if ( ( active_tweak == "money_wrap" ) or ( active_tweak:find("gold") ) ) and managers.player:player_unit():movement():current_state():_interacting() then
			if not vr_vaultloot then
			if current_map == 'branchbank' then
				managers.player:local_player():sound():say( 'g24', true, true )
				vr_vaultloot = true
			end
			end
		end
		if ( active_tweak == "hostage_stay" ) and managers.player:player_unit():movement():current_state():_interacting() then
			if not vr_hostayge then
				managers.player:local_player():sound():say( 'f03a_sin', true, true )
				vr_hostayge = true
			end
		end
		if ( active_tweak == "sc_tape_loop" ) and managers.player:player_unit():movement():current_state():_interacting() then
			if not vr_tapeloop then
				DelayedCalls:Add("tape_cmon", 2, tape_cmon)
				DelayedCalls:Add("tape_move", 3.975, tape_move)
				vr_tapeloop = true
			end
		end
	else
	DelayedCalls:Remove("drillplace")
	DelayedCalls:Remove("lanceplace")
	DelayedCalls:Remove("tape_cmon")
	DelayedCalls:Remove("tape_move")
	vr_drill_place = nil
	vr_drill_fix = nil
	vr_drill_upg = nil
	vr_hacking = nil
	vr_cabletie_cont = nil
	vr_convert = nil
	vr_lance_fix = nil
	vr_lockpick = nil
	vr_keycard = nil
	vr_healing = nil
	vr_sapphire = nil
	vr_hostayge = nil
	vr_tapeloop = nil
	end
	if managers.player._global.synced_cable_ties[peer_id].amount == 1 then
		if not vr_tiecheck then
		vr_tiecheck = true
		end
	end
	if managers.player._global.synced_cable_ties[peer_id].amount == 0 then
		if not vr_outofties and vr_tiecheck then
			DelayedCalls:Add("outofties", 0.5, vr_outties)
		vr_outofties = true
		end
	end
	if managers.hud._hud.in_assault ~= true and not vr_prepare_first then
		if not vr_begin then
			if ( vr_character == 'german' ) or ( vr_character == 'russian' ) then
			managers.player:local_player():sound():say( vr_begin_wolf[math.random( #vr_begin_wolf )], true, false )
			vr_assault = nil
			vr_noreturn = nil
			vr_break = nil
			vr_begin = true
			vr_emergency = nil
			elseif ( vr_character == 'old_hoxton' ) or ( vr_character == 'jowi' ) or ( vr_character == 'female_1' ) or ( vr_character == 'dragan' ) then
			managers.player:local_player():sound():say( vr_begin_hox[math.random( #vr_begin_hox )], true, false )
			vr_assault = nil
			vr_noreturn = nil
			vr_break = nil
			vr_begin = true
			vr_emergency = nil
			elseif ( vr_character == 'american' ) or ( vr_character == 'spanish' ) then
			managers.player:local_player():sound():say( vr_begin_random[math.random( #vr_begin_random )], true, false )
			vr_assault = nil
			vr_noreturn = nil
			vr_break = nil
			vr_begin = true
			vr_emergency = nil
			end
		end
	end
	mercurius = true -- Set this to false to disable the easter egg.
	ITURIOWLET = true
	end
end