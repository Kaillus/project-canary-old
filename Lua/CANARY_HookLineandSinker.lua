if not HOODEDROBIN then
local Net = _G.LuaNetworking
local ban_global = function() return CanaryOptions._data.ban_global end
local ban_toggle = function() return CanaryOptions._data.ban_toggle end
local ban_pag_toggle = function() return CanaryOptions._data.ban_pag_toggle end
local ply_call_toggle = function() return CanaryOptions._data.ply_call_toggle end
local idealVersion = "1.32.0"
local GameVersion = Application:version()

if ( file.DirectoryExists( "mods/HUDRestoration/" ) or file.DirectoryExists( "mods/HUDRESTORATION/" ) ) and not HUDRestorationExists then
	HUDRestorationExists = true
elseif ( not file.DirectoryExists( "mods/HUDRestoration/" ) or not file.DirectoryExists( "mods/HUDRESTORATION/" ) )  and not HUDRestorationExists then
	HUDRestorationExists = false
end

--local title_text = "PROJECT: Phoenix Desynchronised!"
local title_text = "PROJECT: Phoenix Up-to-Date!"
--local message_text = "You are running the Open Beta. Bugs may occur. \nPlease visit our Steam group page for compatibility notice."
local message_text = "PROJECT: Phoenix is ready for use."

local function DisplayNotification()
	
	if GameVersion ~= idealVersion then
		if not NotificationsManager:NotificationExists( "canary_updates_desynchronised" ) then
			local id = "canary_updates_desynchronised"
			local title = title_text
			local message = message_text
			local priority = 100

			NotificationsManager:AddNotification( id, title, message, priority )	
		end
	elseif GameVersion == idealVersion then
		if NotificationsManager:NotificationExists( "canary_updates_desynchronised" ) then
		NotificationsManager:RemoveNotification( "canary_updates_desynchronised" )
		end
	end

end

Hooks:Add("MenuManagerOnOpenMenu", "MenuManagerOnOpenMenu_CanaryWarning", function( menu_manager, menu, position )

	if menu == "menu_main" then
		DisplayNotification()
	end

end)



local pcheck = "C_PagerStatus"

Hooks:Add("NetworkReceivedData", "NetworkReceivedData_PagerResponse", function(sender, id, data)
    if id == pcheck then
	local p_data = tonumber(data)
	if ban_pag_toggle() then
		if p_data < 3 then
			DelayedCalls:Add("v_pager_success", 2, vr_p_success)
		elseif p_data == 3 then
			DelayedCalls:Add("v_pager_suspicious", 2, vr_p_suspicious)
		elseif p_data == 4 then
			DelayedCalls:Add("v_pager_warning", 4, vr_p_warning)
		elseif p_data == 5 then
			DelayedCalls:Add("v_pager_failed", 1, vr_p_failed)
		end
	elseif ban_pag_toggle() ~= true then
		local PagerRoll = math.random(1,100)
		if p_data == 1 then
			if PagerRoll == 1 then
				DelayedCalls:Add("v_pager_success", 2, vr_p_success)
			end
		elseif p_data == 2 then
			if PagerRoll <= 10 then
				DelayedCalls:Add("v_pager_success", 2, vr_p_success)
			end
		elseif p_data == 3 then
			if PagerRoll <= 50 then
				DelayedCalls:Add("v_pager_success", 2, vr_p_success)
			end
		elseif p_data == 4 then
			DelayedCalls:Add("v_pager_suspicious", 2, vr_p_suspicious)
		elseif p_data == 5 then
			DelayedCalls:Add("v_pager_failed", 1, vr_p_failed)
		end
	end
	end
end)

local hcheck = "C_CamHalf"

Hooks:Add("NetworkReceivedData", "NetworkReceivedData_CamHalf", function(sender, id, data)
	if not Net:IsHost() then
		if id == hcheck then
		if ban_global() then
		managers.player:local_player():sound():say( 'Play_ban_v02x', false, false )
		end
		end
	end
end)

local gcheck = "C_CamGone"

Hooks:Add("NetworkReceivedData", "NetworkReceivedData_CamGone", function(sender, id, data)
	if not Net:IsHost() then
		if id == gcheck then
		if ban_global() then
		managers.player:local_player():sound():say( 'Play_ban_v03x', false, false )
		end
		end
	end
end)

local ccheck = "C_Clock"

Hooks:Add("NetworkReceivedData", "NetworkReceivedData_Clock", function(sender, id, data)
	if not Net:IsHost() then
		if id == ccheck then
		if ban_global() then
			managers.dialog:queue_dialog( 'play_pln_gen_bfr_10', {})
		end
		end
	end
end)

local calling_me = "C_Call"
local calling_des = "C_Call_desp"

Hooks:Add("NetworkReceivedData", "NetworkReceivedData_Calling", function(sender, id, data)
	if id == calling_me then
		local vr_character = managers.criminals:local_character_name()
		local cs = managers.player._current_state
		if data == vr_character then
		if ply_call_toggle() then
		if (cs ~= "bleed_out") or (cs ~= "incapacitated") or (cs ~= "arrested") or (cs ~= "tased") then
		managers.player:player_unit():sound():say( 'r01x_sin', false, true )
		end
		end
		end
	end
end)

Hooks:Add("NetworkReceivedData", "NetworkReceivedData_Calling_desp", function(sender, id, data)
	if id == calling_des then
		local vr_character = managers.criminals:local_character_name()
		local cs = managers.player._current_state
		if data == vr_character then
		if ply_call_toggle() then
		if (cs ~= "bleed_out") or (cs ~= "incapacitated") or (cs ~= "arrested") or (cs ~= "tased") then
		managers.player:player_unit():sound():say( 'r02a_sin', false, true )
		end
		end
		end
	end
end)


HOODEDROBIN = true
end