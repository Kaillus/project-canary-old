--End States
local vr_gameover
local vr_gamewin

local ban_global = function() return CanaryOptions._data.ban_global end
local s_tog = function() return CanaryOptions._data.ban_h_success_toggle end
local f_tog = function() return CanaryOptions._data.ban_h_failure_toggle end

--[[if ban_global == nil then
	ban_global = true
end

if s_tog == nil then
	s_tog = true
end

if f_tog == nil then
	f_tog = true
end]]

local VictoryStateEnter_old = VictoryStateEnter_old or VictoryState.at_enter
local GameOverStateEnter_old = GameOverStateEnter_old or GameOverState.at_enter

local vr_b_success = vr_b_success or function()
if ban_global() then
	managers.dialog:queue_dialog('Play_ban_g02x', {})
end
end
local vr_b_failed = vr_b_failed or function()
if ban_global() then
	managers.dialog:queue_dialog('Play_ban_g01x', {})
end
end

function VictoryState:at_enter( ... )
	VictoryStateEnter_old( self, ...)
	if not vr_gamewin then
	if s_tog() then
	DelayedCalls:Add("bain_missionsuccess", 20, vr_b_success)
	end
	vr_gamewin = true
	end
	DelayedCalls:Remove("warcry_rep")
	DelayedCalls:Remove("warcry")
	DelayedCalls:Remove("warcry_check")
	DelayedCalls:Remove("anticipation_ini_10")
	DelayedCalls:Remove("anticipation_ini_20")
	DelayedCalls:Remove("anticipation_aft_10")
	DelayedCalls:Remove("anticipation_aft_20")
	DelayedCalls:Remove("noreturn_timetogo")
	DelayedCalls:Remove("noreturn_fifteen")
	DelayedCalls:Remove("noreturn_thirty")
	DelayedCalls:Remove("noreturn_fortyfive")
	DelayedCalls:Remove("noreturn_dealsealer")
end

function GameOverState:at_enter(...)
	GameOverStateEnter_old( self, ...)
	if not vr_gameover then
	if f_tog() then
	DelayedCalls:Add("bain_missionfailure", 2, vr_b_failed)
	end
	vr_gameover = true
	end
	DelayedCalls:Remove("warcry_rep")
	DelayedCalls:Remove("warcry")
	DelayedCalls:Remove("warcry_check")
	DelayedCalls:Remove("anticipation_ini_10")
	DelayedCalls:Remove("anticipation_ini_20")
	DelayedCalls:Remove("anticipation_aft_10")
	DelayedCalls:Remove("anticipation_aft_20")
	DelayedCalls:Remove("noreturn_timetogo")
	DelayedCalls:Remove("noreturn_fifteen")
	DelayedCalls:Remove("noreturn_thirty")
	DelayedCalls:Remove("noreturn_fortyfive")
	DelayedCalls:Remove("noreturn_dealsealer")
end