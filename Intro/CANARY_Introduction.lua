if not CANARY_Intro then
local menu_title = "YOU HAVE A NEW MESSAGE"
local text_message = "Gotcha"
local path = "mods/CANARYDEV/first.txt"

Hooks:Add("MenuManagerOnOpenMenu", "MenuManagerOnOpenMenu_Intro", function( menu_manager, menu, position )

	if menu == "menu_main" then

		local file = io.open( path, "r" )
		if file then

			file:close()

			local menu_options = {
				[1] = {
					text = text_message,
					is_cancel_button = true,
				}
			}
			local menu = QuickMenu:new(menu_title, can_intro_mail, menu_options)
			menu:show()
			managers.menu_component:post_event("stinger_levelup")

			CANARY_Intro = true
			os.remove( path )
			Hooks:Remove( "MenuManagerOnOpenMenu_Intro" )

		end

	end

end)

CANARY_Intro = true
end