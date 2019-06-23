vr_flashbang_check = nil
cableties_first = nil
vr_cam_notifier_1 = nil
vr_camera_count = 0
vr_fetch_count = nil
vr_said_hurt = nil
local vr_fixmeup = nil
letsrock = 0
cam_half = false
cam_gone = false

local Net = _G.LuaNetworking
local ban_global = function() return CanaryOptions._data.ban_global end
local ban_toggle = function() return CanaryOptions._data.ban_toggle end
local ban_pag_toggle = function() return CanaryOptions._data.ban_pag_toggle end
local ban_ponr = function() return CanaryOptions._data.ban_ponr_toggle end
local ply_inspire = function() return CanaryOptions._data.ply_inspire_toggle end
local ply_knees = function() return CanaryOptions._data.ply_knees_toggle end
local ply_spot = function() return CanaryOptions._data.ply_spot_toggle end
local ply_cams = function() return CanaryOptions._data.ply_cams_toggle end
local ply_detect = function() return CanaryOptions._data.ply_detect_toggle end

--[[if ban_global == nil then
	ban_global = true
end

if ban_toggle == nil then
	ban_toggle = false
end

if ban_pag_toggle == nil then
	ban_pag_toggle = false
end

if ban_ponr == nil then
	ban_ponr = true
end

if ply_inspire == nil then
	ply_inspire = true
end

if ply_knees == nil then
	ply_knees = true
end

if ply_spot == nil then
	ply_spot = true
end

if ply_cams == nil then
	ply_cams = true
end

if ply_detect == nil then
	ply_detect = true
end]]

local server_synchronized
local cloaker_count = 0
local shd_count = 0
local bdz_count = 0
local tsr_count = 0
local vr_cloaker


vr_c_suspicious = vr_c_suspicious or function()
	if Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	if ban_global() then
	managers.player:local_player():sound():say( 'Play_ban_b01a', false, ban_toggle() )
	end
	end
end
vr_c_alert = vr_c_alert or function()
	if Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	if ban_global() then
	managers.player:local_player():sound():say( 'pln_alm_cam_rob', false, ban_toggle() )
	end
	end
end
vr_c_first = vr_c_first or function()
	if not vr_cam_notifier_1 then
	if ban_global() then
	managers.player:local_player():sound():say( 'Play_ban_v01a', false, ban_toggle() )
	end
	vr_cam_notifier_1 = true
	end
end
vr_p_notify = vr_p_notify or function()
if Utils:IsInCustody() ~= true then
if ban_global() then
	managers.player:local_player():sound():say( 'Play_pln_pager_a', false, ban_toggle() )
end
end
end
vr_p_warning = vr_p_warning or function()
if ban_global() then
	managers.player:local_player():sound():say( 'Play_pln_pat_05', false, ban_toggle() )
end
end
vr_p_break = vr_p_break or function()
if ban_global() then
	managers.player:local_player():sound():say( 'Play_pln_radio_break', false, ban_toggle() )
end
end
vr_p_success = vr_p_success or function()
if ban_global() then
	managers.player:local_player():sound():say( 'Play_pln_radio_success', false, ban_toggle() )
end
end
vr_p_missed = vr_p_missed or function()
if ban_global() then
	managers.player:local_player():sound():say( 'Play_pln_radio_missed', false, ban_toggle() )
end
end
vr_p_suspicious = vr_p_suspicious or function()
if ban_global() then
	managers.player:local_player():sound():say( 'Play_pln_pat_04', false, ban_toggle() )
end
end
vr_p_failed = vr_p_failed or function()
if ban_global() then
	managers.player:local_player():sound():say( 'Play_pln_radio_failed', false, ban_toggle() )
end
end
vr_flashbang_alert = vr_flashbang_alert or function()
	if Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( 'g41x_any', true, true )
	end
end
vr_flashbang_check_2 = vr_flashbang_check_2 or function()
	vr_flashbang_check = nil
end
vr_trade_potential = vr_trade_potential or function()
	if Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( 'p07', true, true )
	end
end
vr_noreturn_delay = vr_noreturn_delay or function()
	if Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( 'g17', false, false )
	end
end
vr_noreturn_fifteen = vr_noreturn_fifteen or function()
	if Utils:IsInCustody() ~= true then
	if ban_global() then
	managers.player:local_player():sound():say( 'Play_ban_p01', false, ban_toggle() )
	end
	end
end
vr_noreturn_thirty = vr_noreturn_thirty or function()
	if Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( 'p19', false, true )
	end
end
vr_noreturn_45 = vr_noreturn_45 or function()
	if Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( 'p04', false, false )
	end
end
vr_noreturn_55 = vr_noreturn_55 or function()
	if Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( 'g29', false, false )
	end
end
vr_inbound = vr_inbound or function()
	if Utils:IsInGameState() and Utils:IsInHeist() then
	managers.dialog:queue_dialog( "Play_ban_s05", {} )
	end
end
incoming_clk = incoming_clk or function()
	if Utils:IsInGameState() and Utils:IsInHeist() then
	if ban_global() then
	managers.dialog:queue_dialog( "Play_ban_s04", {} )
	end
	end
end
incoming_tsr = incoming_tsr or function()
	managers.player:local_player():sound():say( "Play_ban_s01_a", false, ban_toggle() )
end
incoming_tsr_g = incoming_tsr_g or function()
	managers.player:local_player():sound():say( "Play_ban_s01_b", false, ban_toggle() )
end
incoming_shd = incoming_shd or function()
	managers.player:local_player():sound():say( "Play_ban_s03_a", false, ban_toggle() )
end
incoming_shd_g = incoming_shd_g or function()
	managers.player:local_player():sound():say( "Play_ban_s03_b", false, ban_toggle() )
end
incoming_bdz = incoming_bdz or function()
	managers.player:local_player():sound():say( "Play_ban_s02_a", false, ban_toggle() )
end
incoming_bdz_g = incoming_bdz_g or function()
	managers.player:local_player():sound():say( "Play_ban_s02_b", false, ban_toggle() )
end
camera_upd = camera_upd or function()
	vr_fetch_count = true
	vr_camera_halfway = vr_camera_count / 2
	log(tostring(ban_global()))
	log(tostring(ply_spot()))
end
stopforabit = stopforabit or function()
	stopforabitv = nil
end
said_hurt = said_hurt or function()
vr_said_hurt = nil
end
r_fixmeup = r_fixmeup or function()
vr_fixmeup = nil
end

-- Pagers
if RequiredScript == 'lib/managers/group_ai_states/groupaistatebase' then
local PagerBluff_old = PagerBluff_old or GroupAIStateBase.on_successful_alarm_pager_bluff
function GroupAIStateBase:on_successful_alarm_pager_bluff()
	PagerBluff_old( self )
	PagerCount = self._nr_successful_alarm_pager_bluffs
	if ban_pag_toggle() == true then
		if PagerCount < 3 then
			DelayedCalls:Add("v_pager_success", 2, vr_p_success)
		elseif PagerCount == 3 then
			DelayedCalls:Add("v_pager_suspicious", 2, vr_p_suspicious)
		elseif PagerCount == 4 then
			DelayedCalls:Add("v_pager_warning", 4, vr_p_warning)
		elseif PagerCount == 5 then
			DelayedCalls:Add("v_pager_failed", 1, vr_p_failed)
		end
	elseif ban_pag_toggle() ~= true then
		local PagerRoll = math.random(1,100)
		if PagerCount == 1 then
			if PagerRoll == 1 then
				DelayedCalls:Add("v_pager_success", 2, vr_p_success)
			end
		elseif PagerCount == 2 then
			if PagerRoll <= 10 then
				DelayedCalls:Add("v_pager_success", 2, vr_p_success)
			end
		elseif PagerCount == 3 then
			if PagerRoll <= 50 then
				DelayedCalls:Add("v_pager_success", 2, vr_p_success)
			end
		elseif PagerCount == 4 then
			DelayedCalls:Add("v_pager_suspicious", 2, vr_p_suspicious)
		elseif PagerCount == 5 then
			DelayedCalls:Add("v_pager_failed", 1, vr_p_failed)
		end
	end
		
	if Net:IsMultiplayer() and Net:IsHost() then
	if ban_toggle() ~= true then
	log("pager_sent_to_peers")
		Net:SendToPeers( "C_PagerStatus", PagerCount )
	end
	end
	
end
function GroupAIStateBase:sync_event(event_id, blame_id)
	local event_name = self.EVENT_SYNC[event_id]
	local blame_name = self.BLAME_SYNC[blame_id]
	if event_name == "police_called" then
		self._police_called = true
		self:_call_listeners("police_called")
	elseif event_name == "enemy_weapons_hot" then
		self._police_called = true
		self._enemy_weapons_hot = true
		managers.music:post_event(tweak_data.levels:get_music_event("control"))
		self:_call_listeners("enemy_weapons_hot")
		managers.enemy:add_delayed_clbk("notify_bain_weapons_hot", callback(self, self, "notify_bain_weapons_hot", blame_name), Application:time() + 0)
		managers.enemy:set_corpse_disposal_enabled(true)
		managers.dialog:queue_dialog( 'play_pln_gen_bfr_10', {})
		--Net:SendToPeers( "C_Clock", '' )
	elseif event_name == "cloaker_spawned" then
		managers.hud:post_event("cloaker_spawn")
		cloaker_count = cloaker_count + 1
		if cloaker_count == 1 and not vr_cloaker then
		DelayedCalls:Add("incom_clk", 1, incoming_clk)
		end
		if cloaker_count == 4 then
		DelayedCalls:Add("incom_clk", 1, incoming_clk)
		cloaker_count = 0
		vr_cloaker = true
		end
		if cloaker_count == 3 and vr_cloaker then
		DelayedCalls:Add("incom_clk", 1, incoming_clk)
		cloaker_count = 0
		end
	end
end

function GroupAIStateBase:register_security_camera(unit, state)
	self._security_cameras[unit:key()] = state and unit or nil
	if not vr_fetch_count then
	vr_camera_count = vr_camera_count + 1
	DelayedCalls:Add("cam_upd", 3, camera_upd)
	end
end

local GASB_old = GASB_old or GroupAIStateBase.update
function GroupAIStateBase:update(t, dt)
	GASB_old(self, t, dt)

--[[local shieldCount = table.size(self._special_units.shield)
local taserCount = table.size(self._special_units.taser)
local cloakerCount = table.size(self._special_units.spooc)
local dozerCount = table.size(self._special_units.tank)]]

--[[	if chatter_tweak.queue == "shd" then
		shd_count = shd_count + 1
		if shd_count == 1 and not vr_shield then
		DelayedCalls:Add("incom_shd", 2, incoming_shd)
		end
		if shd_count == 4 then
			local value = math.random(1,2)
			if value == 1 then
			DelayedCalls:Add("incom_shd", 2, incoming_shd_g)
			elseif value == 2 then
			DelayedCalls:Add("incom_shd", 2, incoming_shd)
			end
		shd_count = 0
		vr_shield = true
		end
		if shd_count == 3 and vr_shield then
		DelayedCalls:Add("incom_shd", 2, incoming_shd)
		shd_count = 0
		end
	elseif chatter_tweak.queue == "tsr" then
		tsr_count = tsr_count + 1
		if tsr_count == 1 and not vr_taser then
		DelayedCalls:Add("incom_tsr", 2, incoming_tsr)
		end
		if tsr_count == 4 then
			local value = math.random(1,2)
			if value == 1 then
			DelayedCalls:Add("incom_tsr", 2, incoming_tsr_g)
			elseif value == 2 then
			DelayedCalls:Add("incom_tsr", 2, incoming_tsr)
			end
		tsr_count = 0
		vr_taser = true
		end
		if tsr_count == 3 and vr_taser then
		DelayedCalls:Add("incom_tsr", 2, incoming_tsr)
		tsr_count = 0
		end
	elseif chatter_tweak.queue == "bdz" then
		bdz_count = bdz_count + 1
		if bdz_count == 1 and not vr_dozer then
		DelayedCalls:Add("incom_bdz", 2, incoming_bdz)
		end
		if bdz_count == 4 then
			local value = math.random(1,2)
			if value == 1 then
			DelayedCalls:Add("incom_bdz", 2, incoming_bdz_g)
			elseif value == 2 then
			DelayedCalls:Add("incom_bdz", 2, incoming_bdz)
			end
		bdz_count = 0
		vr_dozer = true
		end
		if bdz_count == 3 and vr_dozer then
		DelayedCalls:Add("incom_bdz", 2, incoming_bdz)
		bdz_count = 0
		end
	end]]
end
elseif RequiredScript == 'lib/managers/mission/elementsecuritycamera' then
local Camdestroy_old = Camdestroy_old or ElementSecurityCamera.on_destroyed
function ElementSecurityCamera:on_destroyed()
	Camdestroy_old( self )
	vr_camera_count = vr_camera_count - 1
	--[[if Net:IsMultiplayer() and Net:IsHost() then
		log("camct_sent_to_peers")
		Net:SendToPeers( "C_CamNumber", vr_camera_count )
	end]]
	if ( vr_camera_count <= vr_camera_halfway ) and not cam_half and not cam_gone then
		if Utils:IsInCustody() ~= true then
		if ban_global() then
		managers.player:local_player():sound():say( 'Play_ban_v02x', false, ban_toggle() )
		end
		if ban_toggle() ~= true then
		Net:SendToPeers( "C_CamHalf", "" )
		end
		end
		cam_half = true
	end
	if ( vr_camera_count == 0 ) and not cam_gone then
		if Utils:IsInCustody() ~= true then
		if ban_global() then
		managers.player:local_player():sound():say( 'Play_ban_v03x', false, ban_toggle() )
		end
		if ban_toggle() ~= true then
		Net:SendToPeers( "C_CamGone", "" )
		end
		end
		cam_gone = true
	end
end

elseif RequiredScript == 'lib/units/interactions/interactionext' then

function IntimitateInteractionExt:_at_interact_interupt(player, complete)
	IntimitateInteractionExt.super._at_interact_interupt(self, player, complete)
	if self.tweak_data == "corpse_alarm_pager" then
		if not self._in_progress then
			return
		end
		player:sound():say("dsp_stop_all", false, true)
		if not complete then
			self._unit:base():set_material_state(true)
			if Network:is_server() then
				self._nbr_interactions = self._nbr_interactions - 1
				if self._nbr_interactions == 0 then
					self._in_progress = nil
					self._unit:brain():on_alarm_pager_interaction("interrupted", player)
					DelayedCalls:Add("v_pager_broken", 2, vr_p_break)
				end
			else
				self._in_progress = nil
				if managers.enemy:get_corpse_unit_data_from_key(self._unit:key()) then
					local u_id = managers.enemy:get_corpse_unit_data_from_key(self._unit:key()).u_id
					managers.network:session():send_to_host("alarm_pager_interaction", u_id, self.tweak_data, 2)
					DelayedCalls:Add("v_pager_broken", 2, vr_p_break)
				else
					managers.network:session():send_to_host("sync_interacted", self._unit, self._unit:id(), self.tweak_data, 2)
				end
			end
		end
	end
end
elseif RequiredScript == 'lib/units/enemies/cop/copbrain' then
function CopBrain:clbk_alarm_pager(ignore_this, data)
	local pager_data = self._alarm_pager_data
	local clbk_id = pager_data.pager_clbk_id
	pager_data.pager_clbk_id = nil
	if not managers.groupai:state():whisper_mode() then
		self:end_alarm_pager()
		return
	end
	if pager_data.nr_calls_made == 0 then
		if managers.groupai:state():is_ecm_jammer_active("pager") then
			self:end_alarm_pager()
			self:begin_alarm_pager(true)
			return
		end
		self._unit:sound():stop()
		if self._unit:character_damage():dead() then
			self._unit:sound():corpse_play("dsp_radio_query_1", nil, true)
			DelayedCalls:Add("v_pager_notify", 0.25, vr_p_notify)
		else
			self._unit:sound():play("dsp_radio_query_1", nil, true)
			DelayedCalls:Add("v_pager_notify", 0.25, vr_p_notify)
		end
		self._unit:interaction():set_tweak_data("corpse_alarm_pager")
		self._unit:interaction():set_active(true, true)
	elseif pager_data.nr_calls_made < pager_data.total_nr_calls then
		self._unit:sound():stop()
		if self._unit:character_damage():dead() then
			self._unit:sound():corpse_play("dsp_radio_reminder_1", nil, true)
		else
			self._unit:sound():play("dsp_radio_reminder_1", nil, true)
		end
	elseif pager_data.nr_calls_made == pager_data.total_nr_calls then
		self._unit:interaction():set_active(false, true)
		managers.groupai:state():on_police_called("alarm_pager_not_answered")
		self._unit:sound():stop()
		if self._unit:character_damage():dead() then
		DelayedCalls:Add("v_pager_missed", 0, vr_p_missed)
		else
		DelayedCalls:Add("v_pager_missed", 0, vr_p_missed)
		end
		self:end_alarm_pager()
	end
	if pager_data.nr_calls_made == pager_data.total_nr_calls - 1 then
		self._unit:interaction():set_outline_flash_state(true, true)
	end
	pager_data.nr_calls_made = pager_data.nr_calls_made + 1
	if pager_data.nr_calls_made <= pager_data.total_nr_calls then
		local duration_settings = tweak_data.player.alarm_pager.call_duration[math.min(#tweak_data.player.alarm_pager.call_duration, pager_data.nr_calls_made)]
		local call_delay = math.lerp(duration_settings[1], duration_settings[2], math.random())
		self._alarm_pager_data.pager_clbk_id = clbk_id
		managers.enemy:add_delayed_clbk(self._alarm_pager_data.pager_clbk_id, callback(self, self, "clbk_alarm_pager"), TimerManager:game():time() + call_delay)
	end
end

-- Security Cameras
elseif RequiredScript == 'lib/units/props/securitycamera' then
local vr_camera_robber
local Camalarm_old = Camalarm_old or SecurityCamera._sound_the_alarm
function SecurityCamera:_sound_the_alarm(detected_unit)
	Camalarm_old( self, detected_unit )
	local current_map = managers.job:current_level_id()
	if not vr_camera_robber and current_map ~= "firestarter_1" then
	DelayedCalls:Add("suspicious_camera_warning", 2, vr_c_suspicious)
	DelayedCalls:Add("suspicious_camera_alerted", 5, vr_c_alert)
	vr_camera_robber = true
	end
end

--Security Camera Interaction
elseif RequiredScript == 'lib/units/beings/player/states/playerstandard' then

function PlayerStandard:_get_interaction_target(char_table, my_head_pos, cam_fwd)
	local prime_target
	local ray = World:raycast("ray", my_head_pos, my_head_pos + cam_fwd * 100 * 100, "slot_mask", self._slotmask_long_distance_interaction)
	if ray then
		for _, char in pairs(char_table) do
			if ray.unit == char.unit then
				prime_target = char
			else
			end
		end
	end
	if not prime_target then
		local low_wgt
		for _, char in pairs(char_table) do
			local inv_wgt = char.inv_wgt
			if not low_wgt or low_wgt > inv_wgt then
				low_wgt = inv_wgt
				prime_target = char
			end
		end
	end
	
	--log(tostring(( managers.criminals:character_name_by_unit(prime_target.unit) )))
	
	if prime_target then
	local target_name = tostring(( managers.criminals:character_name_by_unit(prime_target.unit) ))
	local cs = managers.player._current_state
		if target_name then
		if target_name ~= tostring(nil) then
			if (cs == "bleed_out") or (cs == "incapacitated") or (cs == "arrested") or (cs == "tased") then
			Net:SendToPeers( "C_Call_desp", target_name )
			else
			Net:SendToPeers( "C_Call", target_name )
			end
		end
		end
	end
	return prime_target
end

local stop
getdown = getdown or function()
	stop = nil
end

function PlayerStandard:_start_action_intimidate(t)
local vr_character = managers.criminals:local_character_name()
--local diff = Global.game_settings and Global.game_settings.difficulty or "hard"
	if not self._intimidate_t or t - self._intimidate_t > tweak_data.player.movement_state.interaction_delay then
		local skip_alert = managers.groupai:state():whisper_mode()
		local voice_type, plural, prime_target = self:_get_unit_intimidation_action(true, true, true, false, true, nil, nil, nil)
		local interact_type, sound_name
		local sound_suffix = plural and "plu" or "sin"
		local down_old = "f02x_" .. sound_suffix
		local down_table = { down_old, "l02x_sin", "f02b_sin" }
		local down_random = down_table[math.random( #down_table )]
		local cameras_table = { 'f39_any', 'g25' }
		local cameras_random = cameras_table[math.random( #cameras_table )]
		local mark_table = { "g15", "g10" }
		local mark_random = mark_table[math.random( #mark_table )]
		if voice_type == "stop" then
			interact_type = "cmd_stop"
			sound_name = "f02x_" .. sound_suffix
			stop = true
			DelayedCalls:Add("stopremove", 2, getdown)
		elseif voice_type == "stop_cop" then
			interact_type = "cmd_stop"
			sound_name = "l01x_" .. sound_suffix
		elseif voice_type == "mark_cop" or voice_type == "mark_cop_quiet" then
			interact_type = "cmd_point"
			if voice_type == "mark_cop_quiet" then
			local mark_old = tweak_data.character[prime_target.unit:base()._tweak_table].silent_priority_shout .. '_any'
			local mark_table_2 = { "g15", "g10", mark_old }
			local mark_random_2 = mark_table_2[math.random( #mark_table_2 )]
				if ply_spot() then
					if vr_character == 'american' then
					sound_name = mark_random
					elseif (vr_character == 'old_hoxton') or (vr_character == 'female_1') then
					sound_name = tweak_data.character[prime_target.unit:base()._tweak_table].silent_priority_shout .. '_any'
					else
					--sound_name = tweak_data.character[prime_target.unit:base()._tweak_table].silent_priority_shout .. "_any"
					sound_name = mark_random_2
					end
				else
				sound_name = mark_old
				end
			else
				sound_name = tweak_data.character[prime_target.unit:base()._tweak_table].priority_shout .. "x_any"
			end
			if managers.player:has_category_upgrade("player", "special_enemy_highlight") then
				prime_target.unit:contour():add(managers.player:has_category_upgrade("player", "marked_enemy_extra_damage") and "mark_enemy_damage_bonus" or "mark_enemy", true, managers.player:upgrade_value("player", "mark_enemy_time_multiplier", 1))
			end
		elseif voice_type == "down" then
			interact_type = "cmd_down"
			if ply_knees() then
			if managers.hud._hud.in_assault and stop then
			sound_name = "f02b_sin"
			else
			sound_name = down_random
			end
			else
			sound_name = "f02x_" .. sound_suffix
			end
			self._shout_down_t = t
		elseif voice_type == "down_cop" then
			interact_type = "cmd_down"
			sound_name = "l02x_" .. sound_suffix
		elseif voice_type == "cuff_cop" then
			interact_type = "cmd_down"
			sound_name = "l03x_" .. sound_suffix
		elseif voice_type == "down_stay" then
			interact_type = "cmd_down"
			if self._shout_down_t and t < self._shout_down_t + 2 then
				sound_name = "f03b_any"
			else
			local randomdown = math.random(1,100)
				if randomdown <= 10 then
					sound_name = "f02b_sin"
				else
				sound_name = "f03a_" .. sound_suffix
				end
			end
		elseif voice_type == "come" then
			interact_type = "cmd_come"
			local static_data = managers.criminals:character_static_data_by_unit(prime_target.unit)
			if static_data then
				local character_code = static_data.ssuffix
				sound_name = "f21" .. character_code .. "_sin"
			elseif vr_character == 'old_hoxton' then
				if mercurius then
				local la_mer = math.random(1, 1000)
					if la_mer == 850 then
					sound_name = "f21l_sin"
					else
					sound_name = "f38_any"
					end
				end
			else
				sound_name = "f38_any"
			end
		elseif voice_type == "revive" then
			interact_type = "cmd_get_up"
			local static_data = managers.criminals:character_static_data_by_unit(prime_target.unit)
			if not static_data then
				return
			end
			local character_code = static_data.ssuffix
			local revive_table = { "f36x_any", "g13" }
			local revive_random = revive_table[math.random( #revive_table )]
			if ply_inspire() then
			if vr_character == 'american' or vr_character == 'spanish' then
			sound_name = revive_random
			else
			sound_name = "f36x_any"
			end
			else
			sound_name = "f36x_any"
			end
			if math.random() < self._ext_movement:rally_skill_data().revive_chance then
				prime_target.unit:interaction():interact(self._unit)
			end
			self._ext_movement:rally_skill_data().morale_boost_delay_t = managers.player:player_timer():time() + (self._ext_movement:rally_skill_data().morale_boost_cooldown_t or 3.5)
		elseif voice_type == "boost" then
			interact_type = "cmd_gogo"
			local static_data = managers.criminals:character_static_data_by_unit(prime_target.unit)
			if not static_data then
				return
			end
			local character_code = static_data.ssuffix
			if vr_character == "jacket" then
			local move_table = { "g09", "g18" }
			local move_random = move_table[math.random( #move_table )]
			sound_name = move_random
			log(move_random)
			else
			local move_table_2 = { "g09", "g18", "f40_any"  }
			local move_random_2 = move_table_2[math.random( #move_table_2 )]
			sound_name = move_random_2
			end
			self._ext_movement:rally_skill_data().morale_boost_delay_t = managers.player:player_timer():time() + (self._ext_movement:rally_skill_data().morale_boost_cooldown_t or 3.5)
		elseif voice_type == "escort" then
			sound_name = "f41_" .. sound_suffix
		elseif voice_type == "escort_keep" or voice_type == "escort_go" then
			interact_type = "cmd_point"
			sound_name = "f40_any"
		elseif voice_type == "bridge_codeword" then
			sound_name = "bri_14"
			interact_type = "cmd_point"
		elseif voice_type == "bridge_chair" then
			sound_name = "bri_29"
			interact_type = "cmd_point"
		elseif voice_type == "undercover_interrogate" then
			sound_name = "und_18"
			interact_type = "cmd_point"
		elseif voice_type == "manager_spot" then
			sound_name = "f37_any"
			interact_type = "cmd_point"
		elseif voice_type == "mark_camera" then
			--sound_name = "quiet"
			interact_type = "cmd_point"
			if ply_cams() then
				if vr_character == 'american' then
				sound_name = cameras_random
				elseif (vr_character == 'old_hoxton') or (vr_character == 'female_1') or (vr_character == 'jowi') or (vr_character == 'jacket') then
				sound_name = "f39_any"
				else
				sound_name = cameras_random
				end
			else
			sound_name = "f39_any"
			end
			prime_target.unit:contour():add("mark_unit", true)
			DelayedCalls:Add("bain_c_all", 1, vr_c_first)
		elseif voice_type == "mark_turret" then
			sound_name = "f42_any"
			interact_type = "cmd_point"
			prime_target.unit:contour():add("mark_unit_dangerous", true)
		end
		self:_do_action_intimidate(t, interact_type, sound_name, skip_alert)
	end
end

function PlayerStandard:_do_action_intimidate(t, interact_type, sound_name, skip_alert)
	if sound_name then
		self._intimidate_t = t
		if ( sound_name == "f03a_plu" ) or ( sound_name == "f03a_sin" ) then
		managers.player:local_player():sound_source():set_switch("int_ext", "third")
		self:say_line(sound_name, skip_alert)
		managers.player:local_player():sound_source():set_switch("int_ext", "first")
		else
		self:say_line(sound_name, skip_alert)
		end
		if interact_type then
			self:_play_distance_interact_redirect(t, interact_type)
		end
	end
end

elseif RequiredScript == 'lib/units/beings/player/states/playermaskoff' then

function PlayerMaskOff:mark_units(line, t, no_gesture, skip_alert)
local vr_character = managers.criminals:local_character_name()
local cameras_table = { 'f39_any', 'g25' }
local cameras_random = cameras_table[math.random( #cameras_table )]
	local mark_sec_camera = managers.player:has_category_upgrade("player", "sec_camera_highlight_mask_off")
	local mark_special_enemies = managers.player:has_category_upgrade("player", "special_enemy_highlight_mask_off")
	local voice_type, plural, prime_target = self:_get_unit_intimidation_action(mark_special_enemies, false, false, false, false)
	local interact_type, sound_name
	if voice_type == "mark_cop" or voice_type == "mark_cop_quiet" then
		interact_type = "no_gesture"
		if voice_type == "mark_cop_quiet" then
		local mark_table = { "g15", "g10" }
		local mark_random = mark_table[math.random( #mark_table )]
		local mark_old = tweak_data.character[prime_target.unit:base()._tweak_table].silent_priority_shout .. '_any'
		local mark_table_2 = { "g15", "g10", mark_old }
		local mark_random_2 = mark_table_2[math.random( #mark_table_2 )]
		if ply_spot() then
			if vr_character == 'american' then
				sound_name = mark_random
				elseif (vr_character == 'old_hoxton') or (vr_character == 'female 1') then
				sound_name = tweak_data.character[prime_target.unit:base()._tweak_table].silent_priority_shout .. '_any'
				else
				sound_name = mark_random_2
				--sound_name = tweak_data.character[prime_target.unit:base()._tweak_table].silent_priority_shout .. "_any"
			end
		end
		else
			sound_name = tweak_data.character[prime_target.unit:base()._tweak_table].priority_shout .. "x_any"
		end
		if managers.player:has_category_upgrade("player", "special_enemy_highlight") then
			prime_target.unit:contour():add(managers.player:has_category_upgrade("player", "marked_enemy_extra_damage") and "mark_enemy_damage_bonus" or "mark_enemy", true, managers.player:upgrade_value("player", "mark_enemy_time_multiplier", 1))
		end
	elseif voice_type == "mark_camera" and mark_sec_camera then
		sound_name = "f39_any"
		interact_type = "no_gesture"
		if ply_cams() then
			if vr_character == 'american' then
			sound_name = cameras_random
			elseif (vr_character == 'old_hoxton') or (vr_character == 'female_1') or (vr_character == 'jowi') or (vr_character == 'jacket') then
			sound_name = "f39_any"
			else
			sound_name = cameras_random
			end
		else
		sound_name = "f39_any"
		end
		prime_target.unit:contour():add("mark_unit", true)
		DelayedCalls:Add("bain_c_all", 1, vr_c_first)
	end
	if interact_type then
		if not no_gesture then
		else
		end
		self:_do_action_intimidate(t, interact_type or nil, sound_name, skip_alert)
		return true
	end
	return mark_sec_camera or mark_special_enemies
end
elseif RequiredScript == 'lib/units/beings/player/playerequipment' then
FAK_old = FAK_old or PlayerEquipment.use_first_aid_kit

function PlayerEquipment:use_first_aid_kit()
local vr_character = managers.criminals:local_character_name()
	local ray = self:valid_shape_placement("first_aid_kit")
	if ray then
		local pos = ray.position
		local rot = self._unit:movement():m_head_rot()
		rot = Rotation(rot:yaw(), 0, 0)
		PlayerStandard.say_line(self, "s12")
		if vr_character == "american" or vr_character == "german" then
		PlayerStandard.say_line(self, "s02x_plu")
		end
		managers.statistics:use_first_aid()
		local upgrade_lvl = managers.player:has_category_upgrade("first_aid_kit", "damage_reduction_upgrade") and 1 or 0
		if Network:is_client() then
			managers.network:session():send_to_host("place_deployable_bag", "FirstAidKitBase", pos, rot, upgrade_lvl)
		else
			local unit = FirstAidKitBase.spawn(pos, rot, upgrade_lvl, managers.network:session():local_peer():id())
		end
		return true
	end
	return false
end
--Flashbangs
elseif RequiredScript == 'lib/units/beings/player/playerdamage' then
local Flashbanged_old = Flashbanged_old or PlayerDamage.on_flashbanged
function PlayerDamage:on_flashbanged(sound_eff_mul)
	Flashbanged_old( self, sound_eff_mul )
	if not vr_flashbang_check then
		if Utils:IsInCustody() ~= true then
		DelayedCalls:Add("flashbang_alert_team", 0.5, vr_flashbang_alert)
		DelayedCalls:Add("flashbang_alert_nullperiod", 10, vr_flashbang_check_2)
		vr_flashbang_check = true
		end
	end
end

function PlayerDamage:grenade_on_flashbanged(sound_eff_mul)
	if self._downed_timer then
		return
	end
	self:_start_tinnitus(sound_eff_mul)
end


function PlayerDamage:_check_bleed_out(can_activate_berserker)
	if self:get_real_health() == 0 and not self._check_berserker_done then
		if self._unit:movement():zipline_unit() then
			self._bleed_out_blocked_by_zipline = true
			return
		end
		if can_activate_berserker and not self._check_berserker_done then
			local has_berserker_skill = managers.player:has_category_upgrade("temporary", "berserker_damage_multiplier")
			if has_berserker_skill then
				managers.hud:set_teammate_condition(HUDManager.PLAYER_PANEL, "mugshot_swansong", managers.localization:text("debug_mugshot_downed"))
				managers.player:activate_temporary_upgrade("temporary", "berserker_damage_multiplier")
				self._check_berserker_done = true
			end
		end
		self._hurt_value = 0.2
		managers.environment_controller:set_downed_value(0)
		SoundDevice:set_rtpc("downed_state_progression", 0)
		if not self._check_berserker_done or not can_activate_berserker then
			self._revives = Application:digest_value(Application:digest_value(self._revives, false) - 1, true)
			self._check_berserker_done = nil
			managers.environment_controller:set_last_life(Application:digest_value(self._revives, false) <= 1)
			if Application:digest_value(self._revives, false) == 0 then
				self._down_time = 0
			end
			self._bleed_out = true
			managers.player:set_player_state("bleed_out")
			self._critical_state_heart_loop_instance = self._unit:sound():play("critical_state_heart_loop")
			self._slomo_sound_instance = self._unit:sound():play("downed_slomo_fx")
			self._bleed_out_health = Application:digest_value(tweak_data.player.damage.BLEED_OUT_HEALTH_INIT * managers.player:upgrade_value("player", "bleed_out_health_multiplier", 1), true)
			if managers.player:has_category_upgrade("temporary", "pistol_revive_from_bleed_out") then
				local upgrade_value = managers.player:upgrade_value("temporary", "pistol_revive_from_bleed_out")
				if upgrade_value == 0 then
				else
					local time = upgrade_value[2]
					managers.player:activate_temporary_upgrade("temporary", "pistol_revive_from_bleed_out")
				end
			end
			self:_drop_blood_sample()
			self:on_downed()
		end
	elseif (not self._said_hurt or not vr_said_hurt) and 0.2 > self:get_real_health() / self:_max_health() then
		self._said_hurt = true
		vr_said_hurt = true
		DelayedCalls:Add("said_hurt_reset", 30, said_hurt)
		PlayerStandard.say_line(self, "g80x_plu")
	end
end

function PlayerDamage:pause_downed_timer(timer)
	self._downed_paused_counter = self._downed_paused_counter + 1
	if self._downed_paused_counter == 1 then
		managers.hud:pd_pause_timer()
		managers.hud:pd_start_progress(0, timer or tweak_data.interaction.revive.timer, "debug_interact_being_revived", "interaction_help")
		if not vr_fixmeup then
		managers.player:local_player():sound_source():set_switch("int_ext", "third")
			managers.player:local_player():sound():say( "s05a_sin", true, true )
		managers.player:local_player():sound_source():set_switch("int_ext", "first")
		DelayedCalls:Add("fixmeup", tweak_data.interaction.revive.timer, r_fixmeup)
		vr_fixmeup = true
		end
	end
end
local Revive_old = Revive_old or PlayerDamage.revive
function PlayerDamage:revive(helped_self)
	Revive_old( self, helped_self )
	DelayedCalls:Remove("fixmeup")
	vr_fixmeup = nil
end

elseif RequiredScript == 'lib/units/beings/player/states/playerbleedout' then
local Helpcall_old = Helpcall_old or PlayerBleedOut.enter
function PlayerBleedOut:enter(state_data, enter_data)
	Helpcall_old(self, state_data, enter_data)
	PlayerStandard.say_line(self, "f11e_plu")
end

elseif RequiredScript == 'lib/managers/explosionmanager' then

function ExplosionManager:player_feedback(position, normal, range, custom_params)
	local player = managers.player:player_unit()
	if player then
		local range = custom_params and custom_params.feedback_range or range
		local feedback = managers.feedback:create("mission_triggered")
		local distance = mvector3.distance_sq(position, player:position())
		local mul = math.clamp(1 - distance / (range * range), 0, 1)
		local camera_shake_mul = custom_params and custom_params.camera_shake_mul or mul * (custom_params and custom_params.camera_shake_max_mul or 1)
		feedback:set_unit(player)
		feedback:set_enabled("camera_shake", true)
		feedback:set_enabled("rumble", true)
		feedback:set_enabled("above_camera_effect", false)
		local params = {
			"camera_shake",
			"multiplier",
			camera_shake_mul,
			"camera_shake",
			"amplitude",
			0.5,
			"camera_shake",
			"attack",
			0.05,
			"camera_shake",
			"sustain",
			0.15,
			"camera_shake",
			"decay",
			0.5,
			"rumble",
			"multiplier_data",
			mul,
			"rumble",
			"peak",
			0.5,
			"rumble",
			"attack",
			0.05,
			"rumble",
			"sustain",
			0.15,
			"rumble",
			"release",
			0.5
		}
		feedback:play(unpack(params))
		if custom_params and custom_params.sound_muffle_effect then
			local sound_eff_range = range / 4
			local sound_eff_mul = math.clamp(1 - distance / (sound_eff_range * sound_eff_range), 0, 1)
			if sound_eff_mul >= 0.3 then
				player:character_damage():grenade_on_flashbanged(sound_eff_mul)
			end
		end
	end
end

-- Gotta release that hostage
elseif RequiredScript == 'lib/managers/trademanager' then
function TradeManager:sync_hostage_trade_dialog(i)
	if game_state_machine:current_state_name() == "ingame_waiting_for_respawn" or not managers.groupai:state():bain_state() then
		return
	end
	if i == 1 then
		self:_get_megaphone_sound_source():post_event("mga_t01a_con_plu")
	elseif i == 2 then
		managers.dialog:queue_dialog("ban_h02a", {})
		DelayedCalls:Add("trade_reminder_player", 5, vr_trade_potential)
	elseif i == 3 then
		managers.dialog:queue_dialog("ban_h02b", {})
		DelayedCalls:Add("trade_reminder_player", 5, vr_trade_potential)
	elseif i == 4 then
		managers.dialog:queue_dialog("ban_h02c", {})
		DelayedCalls:Add("trade_reminder_player", 5, vr_trade_potential)
	elseif i == 5 then
		managers.dialog:queue_dialog("ban_h02d", {})
		DelayedCalls:Add("trade_reminder_player", 5, vr_trade_potential)
	elseif i == 6 then
		managers.dialog:queue_dialog("Play_ban_h50x", {})
	elseif i == 7 then
		managers.dialog:queue_dialog("Play_ban_h02", {})
		DelayedCalls:Add("trade_reminder_player", 5, vr_trade_potential)
	end
end

--Point of No Return
elseif RequiredScript == 'lib/managers/hudmanagerpd2' then
local thirtyseconds_warning

function HUDManager:show_point_of_no_return_timer()
	self._hud_assault_corner:show_point_of_no_return_timer()
	if ( Utils:IsInCustody() == false ) or not Utils:IsInCustody() then
	local current_map = managers.job:current_level_id()
	local noreturn = noreturn or function()
	local returnsuccess, returnfailure = pcall(function()
		managers.player:local_player():sound():say( 'g69', false, false )
		DelayedCalls:Add("noreturn_timetogo", 8, vr_noreturn_delay)
		DelayedCalls:Add("noreturn_fifteen", 15, vr_noreturn_fifteen)
		DelayedCalls:Add("noreturn_thirty", 30, vr_noreturn_thirty)
		DelayedCalls:Add("noreturn_fortyfive", 45, vr_noreturn_45)
		DelayedCalls:Add("noreturn_dealsealer", 55, vr_noreturn_55)
	end)
	if not returnsuccess then
		DelayedCalls:Remove("noreturn_timetogo")
		DelayedCalls:Remove("noreturn_fifteen")
		DelayedCalls:Remove("noreturn_thirty")
		DelayedCalls:Remove("noreturn_fortyfive")
		DelayedCalls:Remove("noreturn_dealsealer")
	end
	end
		if current_map == "kosugi" then
			if ban_ponr() then
			noreturn()
			end
		end
	end
end

elseif RequiredScript == 'lib/units/props/drill' then

function Drill:_drill_remind_clbk()
	local vr_character = managers.criminals:local_character_name()
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
	if not self.is_hacking_device then
		local suffix = Drill.active_drills > 1 --[[and "plu"]] or "sin"
		if 1 >= self._jammed_count then
			--managers.groupai:state():teammate_comment(nil, (self.is_saw and "d03_" or "d01x_") .. suffix, nil, false, nil, false)
			if (Utils:IsInCustody() ~= true) and (vr_character == "german") then
			managers.player:local_player():sound():say( "d01x_sin", false, false )
			elseif (Utils:IsInCustody() ~= true) then
			managers.player:local_player():sound():say( drill_1r .. "sin", false, false )
			end
		else
			--managers.groupai:state():teammate_comment(nil, (self.is_saw and "d04_" or "d02x_") .. suffix, nil, false, nil, false)
			if (Utils:IsInCustody() ~= true) and (vr_character == "german") then
			managers.player:local_player():sound():say( "d02x_sin", false, false )
			elseif (Utils:IsInCustody() ~= true) then
			managers.player:local_player():sound():say( drill_2r .. "sin", false, false )
			end
		end
	elseif managers.groupai:state():bain_state() then
	end
	managers.enemy:add_delayed_clbk(Drill._drill_remind_clbk_id, Drill._drll_remind_clbk, Application:time() + 30)
	if not Utils:IsInGameState() then
	if DLCManager_hasdlcpack(hoxton_traitor) and server_synchronised then
		mercurius_exec()
	end
	end
end

elseif RequiredScript == 'lib/managers/hud/hudsuspicion' then
local discovered = 0
local HUDDetected_old = HUDDetected_old or HUDSuspicion.discovered
function HUDSuspicion:discovered()
	HUDDetected_old(self)
	local vr_character = managers.criminals:local_character_name()
	local vr_fuck = { 'g60', 'g29' }
	if not stopforabitv then
	if ply_detect() then
	if vr_character == "old_hoxton" then
	managers.player:local_player():sound():say( "g29", false, true )
	else
	managers.player:local_player():sound():say( vr_fuck[math.random( #vr_fuck )], false, true )
	end
	end
	discovered = discovered + 1
	end
	if discovered > 3 then
		DelayedCalls:Add("stopforabit", 10, stopforabit)
		stopforabitv = true
		discovered = 0
	end
end

end