
--[[
	We setup the global table for our mod, along with some path variables, and a data table.
	We cache the ModPath directory, so that when our hooks are called, we aren't using the ModPath from a
		different mod.
]]
_G.CanaryOptions = _G.CanaryOptions or {}
CanaryOptions._path = ModPath
CanaryOptions._data_path = SavePath .. "phoenix_data.txt"
CanaryOptions._data = {} 

--[[
	A simple save function that json encodes our _data table and saves it to a file.
]]
function CanaryOptions:Save()
	local file = io.open( self._data_path, "w+" )
	if file then
		file:write( json.encode( self._data ) )
		file:close()
	end
end

--[[
	A simple load function that decodes the saved json _data table if it exists.
]]
function CanaryOptions:Load()
	local file = io.open( self._data_path, "r" )
	if file then
		self._data = json.decode( file:read("*all") )
		file:close()
	end
end

--[[
	Load our localization keys for our menu, and menu items.
]]
Hooks:Add("LocalizationManagerPostInit", "LocalizationManagerPostInit_CanaryOptions", function( loc )
	loc:load_localization_file( CanaryOptions._path .. "Menu/en.txt")
end)

--[[
	Setup our menu callbacks, load our saved data, and build the menu from our json file.
]]
Hooks:Add( "MenuManagerInitialize", "MenuManagerInitialize_CanaryOptions", function( menu_manager )

	--[[
		Setup our callbacks as defined in our item callback keys, and perform our logic on the data retrieved.
	]]
	MenuCallbackHandler.callback_bain_tog_glo = function(self, item)
		--CanaryOptions._data.toggle_value = (item:value() == "on" and true or false)
		CanaryOptions._data.ban_global = (item:value() == "on" and true or false)
		CanaryOptions:Save()
		log("bain is: " .. item:value())
	end
	MenuCallbackHandler.callback_bain_tog = function(self, item)
		--CanaryOptions._data.toggle_value = (item:value() == "on" and true or false)
		CanaryOptions._data.ban_toggle = (item:value() == "on" and true or false)
		CanaryOptions:Save()
		log("bain's voice is: " .. item:value())
	end
	MenuCallbackHandler.callback_bain_ponr_tog = function(self, item)
		--CanaryOptions._data.toggle_value = (item:value() == "on" and true or false)
		CanaryOptions._data.ban_ponr_toggle = (item:value() == "on" and true or false)
		CanaryOptions:Save()
		log("bain's ponr is: " .. item:value())
	end
	MenuCallbackHandler.callback_bain_pag_tog = function(self, item)
		--CanaryOptions._data.toggle_value = (item:value() == "on" and true or false)
		CanaryOptions._data.ban_pag_toggle = (item:value() == "on" and true or false)
		CanaryOptions:Save()
		log("bain_pag is: " .. item:value())
	end
	MenuCallbackHandler.callback_ply_assault_tog = function(self, item)
		--CanaryOptions._data.toggle_value = (item:value() == "on" and true or false)
		CanaryOptions._data.ply_assault_toggle = (item:value() == "on" and true or false)
		CanaryOptions:Save()
		log("ply_assault is: " .. item:value())
	end
	MenuCallbackHandler.callback_ply_call_tog = function(self, item)
		--CanaryOptions._data.toggle_value = (item:value() == "on" and true or false)
		CanaryOptions._data.ply_call_toggle = (item:value() == "on" and true or false)
		CanaryOptions:Save()
		log("ply_call is: " .. item:value())
	end
	MenuCallbackHandler.callback_ply_knees_tog = function(self, item)
		--CanaryOptions._data.toggle_value = (item:value() == "on" and true or false)
		CanaryOptions._data.ply_knees_toggle = (item:value() == "on" and true or false)
		CanaryOptions:Save()
		log("ply_knees is: " .. item:value())
	end
	MenuCallbackHandler.callback_ply_spot_tog = function(self, item)
		--CanaryOptions._data.toggle_value = (item:value() == "on" and true or false)
		CanaryOptions._data.ply_spot_toggle = (item:value() == "on" and true or false)
		CanaryOptions:Save()
		log("ply_spot is: " .. item:value())
	end
	MenuCallbackHandler.callback_ply_cams_tog = function(self, item)
		--CanaryOptions._data.toggle_value = (item:value() == "on" and true or false)
		CanaryOptions._data.ply_cams_toggle = (item:value() == "on" and true or false)
		CanaryOptions:Save()
		log("ply_cams is: " .. item:value())
	end
	MenuCallbackHandler.callback_ply_ties_tog = function(self, item)
		--CanaryOptions._data.toggle_value = (item:value() == "on" and true or false)
		CanaryOptions._data.ply_ties_toggle = (item:value() == "on" and true or false)
		CanaryOptions:Save()
		log("ply_ties is: " .. item:value())
	end
	MenuCallbackHandler.callback_ply_ties_2_tog = function(self, item)
		--CanaryOptions._data.toggle_value = (item:value() == "on" and true or false)
		CanaryOptions._data.ply_ties_2_toggle = (item:value() == "on" and true or false)
		CanaryOptions:Save()
		log("ply_ties_2 is: " .. item:value())
	end
	MenuCallbackHandler.callback_ply_detect_tog = function(self, item)
		--CanaryOptions._data.toggle_value = (item:value() == "on" and true or false)
		CanaryOptions._data.ply_detect_toggle = (item:value() == "on" and true or false)
		CanaryOptions:Save()
		log("ply_detect is: " .. item:value())
	end
	MenuCallbackHandler.callback_ban_h_success_tog = function(self, item)
		--CanaryOptions._data.toggle_value = (item:value() == "on" and true or false)
		CanaryOptions._data.ban_h_success_toggle = (item:value() == "on" and true or false)
		CanaryOptions:Save()
		log("ban_hsuccess is: " .. item:value())
	end
	MenuCallbackHandler.callback_ban_h_failure_tog = function(self, item)
		--CanaryOptions._data.toggle_value = (item:value() == "on" and true or false)
		CanaryOptions._data.ban_h_failure_toggle = (item:value() == "on" and true or false)
		CanaryOptions:Save()
		log("ban_hfailure is: " .. item:value())
	end
	MenuCallbackHandler.callback_ban_start_assault_tog = function(self, item)
		--CanaryOptions._data.toggle_value = (item:value() == "on" and true or false)
		CanaryOptions._data.ban_start_assault_toggle = (item:value() == "on" and true or false)
		CanaryOptions:Save()
		log("ban_start_assault is: " .. item:value())
	end
	MenuCallbackHandler.callback_ply_inspire_tog = function(self, item)
		--CanaryOptions._data.toggle_value = (item:value() == "on" and true or false)
		CanaryOptions._data.ban_ply_inspire_toggle = (item:value() == "on" and true or false)
		CanaryOptions:Save()
		log("ply_inspire_tog is: " .. item:value())
	end
	--[[MenuCallbackHandler.callback_mail_tog = function(self, item)
		CanaryOptions._data.mail_toggle = (item:value() == "on" and true or false)
		CanaryOptions:Save()
		log("mail is: " .. item:value())
	end]]
	MenuCallbackHandler.callback_reset_options = function(self, item)
		local items_to_reset_1 = {
			["can_ban_global"] = true,
			["can_ban_start_assault_toggle"] = true,
			["can_ban_h_success_toggle"] = true,
			["can_ban_h_failure_toggle"] = true,
			["can_ply_inspire_toggle"] = true,
			["can_ply_call_toggle"] = true,
			["can_ply_knees_toggle"] = true,
			["can_ply_spot_toggle"] = true,
			["can_ply_cams_toggle"] = true,
			["can_ply_ties_toggle"] = true,
			["can_ply_ties_2_toggle"] = true,
			["can_ply_detect_toggle"] = true,
			["can_ban_ponr_toggle"] = true,
		}
		local default_value_1 = true
		local items_to_reset_2 = {
			["can_ban_toggle"] = true,
			["can_ply_assault_toggle"] = true,
			["can_ban_pag_toggle"] = true,
		}
		local default_value_2 = false
		MenuHelper:ResetItemsToDefaultValue( item, items_to_reset_1, default_value_1 )
		MenuHelper:ResetItemsToDefaultValue( item, items_to_reset_2, default_value_2 )
		log("Settings reset!")
	end
	
	MenuCallbackHandler.callback_test_multi = function(self, item)
		CanaryOptions._data.multi_value = item:value()
		CanaryOptions:Save()
		log("Multiple-choice value: " .. item:value())
	end

	--[[
		Load our previously saved data from our save file.
	]]
	CanaryOptions:Load()

	--[[
		Load our menu json file and pass it to our MenuHelper so that it can build our in-game menu for us.
		We pass our parent mod table as the second argument so that any keybind functions can be found and called
			as necessary.
		We also pass our data table as the third argument so that our saved values can be loaded from it.
	]]
	MenuHelper:LoadFromJsonFile( CanaryOptions._path .. "Menu/canary_menu.txt", CanaryOptions, CanaryOptions._data )

end )
