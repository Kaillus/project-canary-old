
--[[

				-- CANIVET'S EMERALD --

]]--

local carryotype = carryotype or function()
	local vr_character = managers.criminals:local_character_name()
	local vr_drill_random = { 'g61', 'g92', 'g13', 'null' }
	local vr_drill_random_clo = { 'g29', 's05x_sin', 'g13', 'null' }
	local vr_drill_random_wick = { 'g60', 'g13', 'g14', 'null' }
	local vr_drill_random_dragan = { 'g92', 'g13', 's05x_sin', 'null' }
	local current_map = managers.job:current_level_id()
if managers.player:get_my_carry_data() then
if managers.player:get_my_carry_data().carry_id == "lance_bag" then
		if vr_character == 'female_1' then
			managers.player:local_player():sound():say( vr_drill_random_clo[math.random( #vr_drill_random_clo )], true, true )
		elseif vr_character == 'jowi' then
			managers.player:local_player():sound():say( vr_drill_random_wick[math.random( #vr_drill_random_wick )], true, true )
		elseif vr_character == 'dragan' then
			managers.player:local_player():sound():say( vr_drill_random_dragan[math.random( #vr_drill_random_dragan )], true, true )
		else
			managers.player:local_player():sound():say( vr_drill_random[math.random( #vr_drill_random )], true, true )
		end
	end
end
end

if RequiredScript == 'lib/units/beings/player/states/playercarry' then
local PlayerCarry_old = PlayerCarry_old or PlayerCarry.enter

local function carrytype()
	return managers.player:get_my_carry_data().carry_id
end

function PlayerCarry:enter(state_data, enter_data)
	PlayerCarry_old(self, state_data, enter_data)
	DelayedCalls:Add("gotthedrill", 0, carryotype)
	--[[local vr_character = managers.criminals:local_character_name()
	local vr_drill_random = { 'g61', 'g92', 'g13', 'null' }
	local vr_drill_random_clo = { 'g29', 's05x_sin', 'g13', 'null' }
	local vr_drill_random_wick = { 'g60', 'g13', 'g14', 'null' }
	local vr_drill_random_dragan = { 'g92', 'g13', 's05x_sin', 'null' }
	local current_map = managers.job:current_level_id()]]
	
	--[[if carrytype() == "lance_bag" then
		if vr_character == 'female_1' then
			managers.player:local_player():sound():say( vr_drill_random_clo[math.random( #vr_drill_random_clo )], true, true )
		elseif vr_character == 'jowi' then
			managers.player:local_player():sound():say( vr_drill_random_wick[math.random( #vr_drill_random_wick )], true, true )
		elseif vr_character == 'dragan' then
			managers.player:local_player():sound():say( vr_drill_random_dragan[math.random( #vr_drill_random_dragan )], true, true )
		else
			managers.player:local_player():sound():say( vr_drill_random[math.random( #vr_drill_random )], true, true )
		end
	end]]
	
end

end