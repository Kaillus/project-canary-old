--[[

				-- ITURI OWLET --

]]--
local Net = _G.LuaNetworking
local ban_global = function() return CanaryOptions._data.ban_global end
local ban_toggle = function() return CanaryOptions._data.ban_toggle end
local ply_ties_1 = function() return CanaryOptions._data.ply_ties_toggle end
local ply_ties_2 = function() return CanaryOptions._data.ply_ties_2_toggle end

--[[if ban_global == nil then
	ban_global = true
end

if ban_toggle == nil then
	ban_toggle = false
end

if ply_ties_1 == nil then
	ply_ties_1 = true
end

if ply_ties_2 == nil then
	ply_ties_2 = true
end]]

local vr_revive
local cableties_first

local vr_begin
local vr_tiecheck
local vr_outofties
local stupidversioncheck

local function interacting()
	return tostring(managers.player:player_unit():movement():current_state():_interacting())
end

local function active_safe()
	local idealVersion = "1.32.0"
	local GameVersion = Application:version()
	if GameVersion ~= idealVersion then
		return managers.interaction:active_unit()
	else
		return managers.interaction:active_object()
	end
end

drill_place = drill_place or function()
	if not managers.interaction or not active_safe() or not active_safe():interaction() then
		return
	end
	local tweak_data = active_safe():interaction().tweak_data
	if tweak_data == "drill" and interacting() ~= "nil" then
		managers.player:local_player():sound():say( 'g21', true, true )
	end
end

lance_place = lance_place or function()
	if not managers.interaction or not active_safe() or not active_safe():interaction() then
		return
	end
	local tweak_data = active_safe():interaction().tweak_data
	if tweak_data == "lance" and interacting() ~= "nil" then
	managers.player:local_player():sound():say( 't01x_sin', true, true )
	end
end
tape_cmon = tape_cmon or function()
	if not managers.interaction or not active_safe() or not active_safe():interaction() then
		return
	end
	local tweak_data = active_safe():interaction().tweak_data
	if tweak_data == "sc_tape_loop" and interacting() ~= "nil" then
	managers.player:local_player():sound():say( 'p04', true, true )
	end
end
tape_move = tape_move or function()
	if not managers.interaction or not active_safe() or not active_safe():interaction() then
		return
	end
	local tweak_data = active_safe():interaction().tweak_data
	if tweak_data == "sc_tape_loop" and interacting() ~= "nil" then
	managers.player:local_player():sound():say( 'g18', true, true )
	end
end

rev_clbk = rev_clbk or function()
	vr_revive = nil
end

pln_jwl_04 = pln_jwl_04 or function()
	managers.dialog:queue_dialog("pln_jwl_04", {})
end

wd1_warn = wd1_warn or function()
	managers.player:local_player():sound():say( "Play_rb4_watchdogs_stage1_04", false, true )
end
wd1_fire = wd1_fire or function()
	managers.player:local_player():sound():say( "g23", false, true )
end

local function drilling(tweakdata)
local vr_fuck = { 'g60', 'g29', 'null' }
local vr_fuck_2 = { 'g22', 'g92', 'g61', 'p04' }
	if tweakdata == "drill" then
		DelayedCalls:Add("placindadrill", 3, drill_place)

	elseif tweakdata == "lance" or tweakdata == "huge_lance" then
		DelayedCalls:Add("lanceplace", 2.95, lance_place)
		
	elseif tweakdata == "drill_upgrade" or tweakdata == "lance_upgrade" then
		managers.player:local_player():sound():say( 'g61', true, true )
		
	elseif tweakdata == "drill_jammed" or tweakdata == "lance_jammed" or tweakdata == "huge_lance_jammed" then
		managers.player:local_player():sound():say( vr_fuck_2[math.random( #vr_fuck_2 )], true, true )
	end
end

local function intimidating(tweakdata)
local vr_joker = { 'f38_any', 's21x_sin', 'f40_any', }
if tweakdata == "intimidate" then
		if not cableties_first then
			if ply_ties_1() then
			managers.player:local_player():sound():say( 'g26', true, true )
			end
			cableties_first = true
		else
			if ply_ties_2() then
			managers.player:local_player():sound():say( 'f03b_any', true, true )
			end
		end
		DelayedCalls:Add("ties", 4, tiecount)
elseif tweakdata == "hostage_convert" then
		managers.player:local_player():sound():say( vr_joker[math.random( #vr_joker )], true, true )
elseif tweakdata == "hostage_stay" then
		managers.player:local_player():sound():say( 'f03a_sin', true, true )
end
end

local function hacking(tweakdata)
local vr_character = managers.criminals:local_character_name()
local comp_do_table = {'g92','g72',}
local comp_do = comp_do_table[math.random(#comp_do_table)]
if tweakdata:find("comp") or tweakdata:find("computer") or tweakdata:find("hack") or tweakdata:find("hacking") or tweakdata:find("grab") or tweakdata:find("keyboard") then
if vr_character == "german" then
		managers.player:local_player():sound():say( comp_do, true, true )
else 
		managers.player:local_player():sound():say( "g92", true, true )
end
elseif tweakdata == "sc_tape_loop" then
		DelayedCalls:Add("tape_cmon", 2, tape_cmon)
		DelayedCalls:Add("tape_move", 3.975, tape_move)
elseif tweakdata:find("lock") and tweakdata ~= "barcode_opa_locka" then
		managers.player:local_player():sound():say( 'p29', true, true )
end
end

local function planks(tweakdata)
local vr_character = managers.criminals:local_character_name()
		if vr_character == "german" then
			if tweakdata == "connect_hose" then
			managers.player:local_player():sound():say( 'g72', true, true )
			end
		end
end


local function hose(tweakdata)
if tweakdata:find("stash_planks") then
managers.player:local_player():sound():say( 'g92', true, true )
end
end


local function bagging(tweakdata)
	local current_map = managers.job:current_level_id()
	local vr_character = managers.criminals:local_character_name()
	local peer_id = managers.network:session():local_peer():id()
	
	
if tweakdata == "gen_pku_jewelry" then
		if (vr_character == "russian") or (vr_character == "german") then
			if (current_map == "ukrainian_job") or (current_map == "jewelry_store") then
				managers.player:local_player():sound():say('Play_rbr_knk_jwl_b_dia_23', false, true )
			end
		end
end


if tweakdata == "money_wrap" or tweakdata == "gold_pile" and not cheer_once then
		if current_map == "branchbank" or current_map == "big" then
		managers.player:local_player():sound():say( 'v46', true, true )
		cheer_once = true
end


end
end

local function healing(tweakdata)
if tweakdata == "revive" then
local vr_revive_table = { 's08x_sin', 's09a', 's09b' }
		if managers.player:has_category_upgrade("player", "morale_boost") then
		rev_time = 3
		else
		rev_time = 6
		end
		if not vr_revive then
		managers.player:local_player():sound_source():set_switch("int_ext", "third")
		managers.player:local_player():sound():say( vr_revive_table[math.random( #vr_revive_table )], true, true )
		managers.player:local_player():sound_source():set_switch("int_ext", "first")
		vr_revive = true
		end
		DelayedCalls:Add("reviveclbk", rev_time, rev_clbk)
elseif tweakdata == "ammo_bag" or tweakdata == "doctor_bag" or tweakdata == "first_aid_kit" then
	--[[local peer_id = managers.network:session():local_peer():id()
	local doc = managers.network:session():peer(doctor_bag._owner_id)
	local ammo = managers.network:session():peer(ammo_bag._owner_id)
	local fuck = managers.network:session():peer(first_aid_kit._owner_id)
	if doc == peer_id or ammo == peer_id or fuck == peer_id then]]
		managers.player:local_player():sound():say( 's05x_sin', true, true )
	--end
end
end

local function tweakdatachecker()
        if not managers.interaction or not active_safe() or not active_safe():interaction() then
                return
        end
        local tweakdata = active_safe():interaction().tweak_data
        drilling(tweakdata)
        intimidating(tweakdata)
        hacking(tweakdata)
        bagging(tweakdata)
        healing(tweakdata)
        planks(tweakdata)
        hose(tweakdata)
		log(tweakdata)
end

local said

tiecount = tiecount or function()
local peer_id = managers.network:session():local_peer():id()
	if managers.player._global.synced_cable_ties[peer_id].amount == 0 and not said then
		managers.player:local_player():sound():say( "s32x_sin", true, false )
		said = true
	end
end

local begin = begin or function()
local vr_begin_random = { 'p24', 's21x_sin', 'g14' }
local vr_begin_hox = { 'p24', 'a01x_any', 'g14' }
local vr_begin_wolf = { 's21x_sin', 'a01x_any', 'g14' }
		if managers.hud._hud.in_assault ~= true and not vr_prepare_first then
		local vr_character = managers.criminals:local_character_name()
			if not vr_begin then
				if ( vr_character == 'german' ) or ( vr_character == 'russian' ) then
				managers.player:local_player():sound():say( vr_begin_wolf[math.random( #vr_begin_wolf )], true, false )
				vr_begin = true
				elseif ( vr_character == 'old_hoxton' ) or ( vr_character == 'jowi' ) or ( vr_character == 'female_1' ) or ( vr_character == 'dragan' ) then
				managers.player:local_player():sound():say( vr_begin_hox[math.random( #vr_begin_hox )], true, false )
				vr_begin = true
				elseif ( vr_character == 'american' ) or ( vr_character == 'spanish' ) then
				managers.player:local_player():sound():say( vr_begin_random[math.random(#vr_begin_random )], true, false )
				vr_begin = true
				end
			end
		end
end

if RequiredScript == 'lib/units/interactions/interactionext' then

local vr_fuck = { 'g60', 'g29', 'null' }
local vr_fuck_2 = { 'g22', 'g92', 'g61', 'p04' }
local vr_joker = { 'f38_any', 's21x_sin', 'f40_any' }

--local AtInteractStart_old = AtInteractStart_old or BaseInteractionExt._at_interact_start
local AtInteractStart_old = AtInteractStart_old or BaseInteractionExt._at_interact_start
function BaseInteractionExt:_at_interact_start(player, time)
	AtInteractStart_old(self, player, time)
	tweakdatachecker()
end

local AtInteractInterrupt_old = AtInteractInterrupt_old or BaseInteractionExt._at_interact_interupt

function BaseInteractionExt:_at_interact_interupt(player, complete)
	AtInteractInterrupt_old(self, player, complete)
	DelayedCalls:Remove("placindadrill")
	DelayedCalls:Remove("tape_cmon")
	DelayedCalls:Remove("tape_move")
	DelayedCalls:Remove("tiecount")
end

elseif RequiredScript == 'lib/managers/hud/hudblackscreen' then
local HUDBlack_old = HUDBlack_old or HUDBlackScreen._animate_fade_out

function HUDBlackScreen:_animate_fade_out(mid_text)
	HUDBlack_old(self, mid_text)

	DelayedCalls:Add("begin", 0.25, begin)
	local current_map = managers.job:current_level_id()
	if current_map == "jewelry_store" then
	DelayedCalls:Add("pln_jwl_04", 8, pln_jwl_04)
	end
	
	if ( current_map == "watchdogs_1_night" ) or ( current_map == "watchdogs_1" ) then
		if ( vr_character == "russian" ) then
			DelayedCalls:Add("wd1_warn", 27.5, wd1_warn)
		elseif vr_character ~= "russian" then
			DelayedCalls:Add("wd1_fire", 30, wd1_fire)
		end
	end

end
end