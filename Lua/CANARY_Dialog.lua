local gas = 0
--local pc_jammed = 0

stealing_bags = stealing_bags or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "p31", false, true )
end
end
holyshit = holyshit or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
local vr_character = managers.criminals:local_character_name()
	if vr_character == "american" then
	managers.player:local_player():sound():say( "g29", false, true )
	else
	managers.player:local_player():sound():say( "g60", false, true )
	end
end
end
gotemall = gotemall or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
local current_map = managers.job:current_level_id()
	if current_map == "jewelry_store" or current_map == "ukrainian_job" then
	managers.player:local_player():sound():say( "Play_rbr_knk_jwl_b_dia_71", false, true )
	else
	managers.player:local_player():sound():say( "p28", false, true )
	end
end
end
halfwaygot = halfwaygot or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "t02x_sin", false, true )
end
end
sniper_call_1 = sniper_call_1 or function()
	if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
			local sniper_randomizer_table = {"p43","Play_rbr_knk_jwl_b_fwb_54"}
			local sniper_randomizer = sniper_randomizer_table[math.random(#sniper_randomizer_table)]
			local current_map = managers.job:current_level_id()
			local vr_character = managers.criminals:local_character_name()
			if vr_character == "russian" then
				if current_map == "arena" or current_map == "red2" then
					managers.player:local_player():sound():say( sniper_randomizer, false, true )
				else
					managers.player:local_player():sound():say( "p43", false, true )
				end
			elseif vr_character == "german" then
				if current_map == "arena" or current_map == "red2" then
					managers.player:local_player():sound():say( "Play_rbr_knk_jwl_b_fwb_54", false, true )
				else
					managers.player:local_player():sound():say( "f34x_any", false, true )
				end
			elseif vr_character == "american" or vr_character == "old_hoxton" then
				managers.player:local_player():sound():say( "p43", false, true )
			else
				managers.player:local_player():sound():say( "f34x_any", false, true )
			end
				
			
	end
end

sniper_call = sniper_call or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "f34x_any", false, false )
end
end

rat_forest = rat_forest or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "p44", false, false )
end
end
rat_window = rat_window or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "p36", false, false )
end
end
rat_stairwell = rat_stairwell or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "g02", false, false )
end
end
rat_inside = rat_inside or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "g08", false, false )
end
end
rat_balcony = rat_balcony or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "p35", false, false )
end
end
pln_rt_07 = pln_rt_07 or function()
if Utils:IsInGameState() and Utils:IsInHeist() then
	managers.dialog:queue_dialog( 'pln_rt1_07', {})
end
end
pl_inside = pl_inside or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "g16", false, false )
end
end
pl_outside = pl_outside or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "p38", false, false )
end
end
pl_roofs = pl_roofs or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "p34", false, false )
end
end
pl_down = pl_down or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "p37", false, false )
end
end
snip_climbup = snip_climbup or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "p40", false, false )
end
end
snip_heli = snip_heli or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "p41", false, false )
end
end
pln_rt_30 = pln_rt_30 or function()
if Utils:IsInGameState() and Utils:IsInHeist() then
	managers.dialog:queue_dialog( 'pln_rat_stage1_30', {})
end
end
bain_risks = bain_risks or function()
if not bain_global then
	managers.dialog:queue_dialog( 'play_pln_gen_bfr_12', {})
end
end
lingering = lingering or function()
	if linger and not managers.groupai:state():whisper_mode() then
	managers.dialog:queue_dialog( 'play_pln_gen_bfr_09', {})
	end
end

pln_rt_31 = pln_rt_31 or function()
if Utils:IsInGameState() and Utils:IsInHeist() then
	managers.dialog:queue_dialog( 'pln_rat_stage1_31', {})
end
end
esc_230 = esc_230 or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "g66", false, false )
end
end
esc_200 = esc_200 or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "g65", false, false )
end
end
esc_100 = esc_100 or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "g63", false, false )
end
end
dia_bank_gas = dia_bank_gas or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "g42x_any", false, true )
end
end
civs = civs or function ()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "g27", false, true )
end
end
planb = planb or function ()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "p21", false, true )
end
end
waitforit = waitforit or function ()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "g67", false, true )
end
end
shootem = shootem or function ()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "g23", false, true )
end
end
hb1_timetogo = hb1_timetogo or function ()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "g17", false, true )
end
end
hurry = hurry or function ()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "g09", false, true )
end
end
car_letsgo = car_letsgo or function ()
local letsmove_table = { 'g13','p06',}
local letsmove = letsmove_table[math.random(#letsmove_table)]
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( letsmove, false, true )
end
end

vr_noreturn_delay = vr_noreturn_delay or function ()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( 'g17', false, true )
end
end

letsmove = letsmove or function ()
local letsmove_table = { 'g13','p06',}
local letsmove = letsmove_table[math.random(#letsmove_table)]
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( letsmove, false, true )
	end
end

cams = cams or function ()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( 'g25', false, true )
end
end

gotcha = gotcha or function ()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( 'p06', false, true )
end
end
maskup = maskup or function ()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( 'a01x_any', false, true )
end
end
bain_plan = bain_plan or function ()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( 'Play_pln_knk_jwl_a_01', false, true )
end
end
_30s = _30s or function ()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( 'g62', false, true )
end
end
_20s = _20s or function ()
	if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
		managers.player:local_player():sound_source():set_switch("int_ext", "third")
		managers.player:local_player():sound():say( 'g70', false, true )
		managers.player:local_player():sound_source():set_switch("int_ext", "first")
	end
end
defend = defend or function ()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( 'g16', false, true )
end
end
gogo = gogo or function ()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( 'p12', false, true )
end
end
downstairs = downstairs or function ()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( 'g01', false, true )
end
end
upstairs = upstairs or function ()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( 'g02', false, true )
end
end


--[[computer = computer or function ()
pc_jammed = pc_jammed + 1
local vr_character = managers.criminals:local_character_name()
	if vr_character ~= "german" then
		if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
			if pc_jammed == 1 then
				managers.player:local_player():sound():say( 'd03_plu', false, true )
			elseif pc_jammed > 1 then
				managers.player:local_player():sound():say( 'd04_plu', false, true )
			end
		end
	end
end]]

allc4 = allc4 or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
local current_map = managers.job:current_level_id()
local vr_character = managers.criminals:local_character_name()
local all_c4_table = {'Play_rbr_knk_jwl_b_dia_71', 'p28',}
local all_c4 = all_c4_table[math.random(#all_c4_table)]
	if current_map == "arena" then
		if vr_character == "russian" then
		managers.player:local_player():sound():say( all_c4, false, true )
		elseif vr_character == "german" then
		managers.player:local_player():sound():say( "Play_rbr_knk_jwl_b_dia_71", false, true )
		end
	end
end
end

comeon = comeon or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "g13", false, true )
	end
end
success = success or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "g24", false, true )
	end
end
almost = almost or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "g28", false, true )
	end
end
lootsec = lootsec or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "p27", false, true )
	end
end
thatsright = thatsright or function()
	if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "p04", false, true )
	end
end
coming = coming or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "r01x_sin", false, true )
	end
end
jumpdown = jumpdown or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "g20", false, true )
	end
end
oh_fuck = oh_fuck or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "g29", false, true )
	end
end
dallas_all = dallas_all or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
local vr_character = managers.criminals:local_character_name()
	if vr_character == "russian" then
	managers.player:local_player():sound():say( "p28", false, true )
	end
end
end
ohno = ohno or function()
local ohno_table = {'g29','g60',}
local ohno = ohno_table[math.random(#ohno_table)]
local vr_character = managers.criminals:local_character_name()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	if vr_character == 'old_hoxton' then
		managers.player:local_player():sound():say( "g29", false, true )
	else
		managers.player:local_player():sound():say( ohno, false, true )
	end
end
end
setupdrill = setupdrill or function()
local vr_character = managers.criminals:local_character_name()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	if vr_character == 'russian' or vr_character == 'german' then
		managers.player:local_player():sound():say( "Play_rbr_knk_jwl_b_slh_26", false, true )
	end
end
end
here_it_is = here_it_is or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
		managers.player:local_player():sound():say( "g14", false, true )
	end
end
cant_stay = cant_stay or function()
	if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
		managers.player:local_player():sound():say( "g69", false, true )
	end
end
few_min = few_min or function()
	if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
		managers.player:local_player():sound():say( "t01x_sin", false, true )
	end
end

swatvan = swatvan or function()
	if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
		managers.player:local_player():sound():say( "p42", false, true )
	end
end

beast_stuck = beast_stuck or function()
local beast_jam_table = {"v52","g22"}
local beast_jam = beast_jam_table[math.random(#beast_jam_table)]
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( beast_jam, false, true )
end
end

its_stuck = its_stuck or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "v52", false, true )
end
end

that_bang = that_bang or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "v54", false, true )
end
end

keep_looking = keep_looking or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "v44", false, true )
end
end

find_it = find_it or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "v43", false, true )
end
end

carry_them = carry_them or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "v51", false, true )
end
end

payday = payday or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "v21", false, true )
end
end

hoorah_cash = hoorah_cash or function()
if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
	managers.player:local_player():sound():say( "v46", false, true )
end
end

if RequiredScript == "lib/managers/menu/menuscenemanager" then

if not PackageManager:load( "levels/narratives/vlad/ukrainian_job/world_sounds" ) then
	PackageManager:load( "levels/narratives/vlad/ukrainian_job/world_sounds" )
	PackageManager:load( "levels/narratives/vlad/jewelry_store/world_sounds" )
end

elseif RequiredScript == "lib/managers/dialogmanager" then
function DialogManager:canary_dialog(id)

	local whis = managers.groupai:state():whisper_mode()
	--Rats (Cook Off)
	if (id == "pln_rat_stage1_13" ) then
		DelayedCalls:Add("rat_forest", 1, rat_forest)
	end
	if (id == "play_pln_gen_att_11") then
		DelayedCalls:Add("rat_window", 1, rat_window)
	end
	if (id == "pln_rt1_14") then
		DelayedCalls:Add("rat_upwalls", 1, snip_climbup)
	end
	if (id == "pln_rat_stage1_14") then
		DelayedCalls:Add("snipers", 2, sniper_call)
	end
	if (id == "play_pln_gen_att_01") then
		DelayedCalls:Add("inside", 1, pl_inside)
	end
	if (id == "play_pln_gen_att_13") then
		DelayedCalls:Add("rat_stair", 1, rat_stairwell)
	end
	if (id == 'pln_rt1_05') then
		DelayedCalls:Add("rat_inside", 2.75, rat_inside)
	end
	if (id == 'pln_rt1_15') then
		DelayedCalls:Add("rat_balc", 1, rat_balcony)
	end
	if (id == 'pln_rat_stage1_27') then
		DelayedCalls:Add("timetogo", 2.5, vr_noreturn_delay)
	end
	if (id == "play_pln_gen_count_04") or (id == "Play_dr1_a16") then
		rat_check04 = true
	end
	if (id == "play_pln_gen_count_07") or (id == "Play_dr1_a20") then
		rat_check31 = true
	end
	if (id == "play_rat_stage3_06") then
		DelayedCalls:Add("timetogo", 0, ohno)
	end
	--The Big Bank
	if (id == "Play_pln_bb1_02") then
		DelayedCalls:Add("big_01a", 8, cams)
		DelayedCalls:Add("big_01b", 10, civs)
	end
	if (id == "Play_pln_bb1_03") then
		DelayedCalls:Add("big_02", 0, here_it_is)
	end
	if (id == "Play_pln_bb1_06") then
		DelayedCalls:Add("big_03", 7, thatsright)
	end
	if (id == "Play_pln_bb1_07") or (id == "Play_pln_bb1_08") then
		DelayedCalls:Add("big_04", 10, thatsright)
	end
	if (id == "Play_pln_bb1_12") then
		DelayedCalls:Add("big_04_2", 3, find_it)
	end
	if (id == "Play_pln_bb1_09") or (id == "Play_pln_bb1_10") then
		DelayedCalls:Add("big_04_3", 6, keep_looking)
	end
	if (id == "Play_pln_bb1_13") then
		DelayedCalls:Add("big_05a", 2.25, ohno)
		DelayedCalls:Add("big_05b", 7.5, comeon)
		DelayedCalls:Add("big_05c", 9, upstairs)
	end
	if (id == "Play_pln_bb1_14") then
		DelayedCalls:Add("big_06", 10.75, thatsright)
	end
	if (id == "Play_pln_bb1_15") then
		DelayedCalls:Add("big_07",3.5, defend)
	end
	if (id == "Play_pln_bb1_19") then
		DelayedCalls:Add("big_08",3.25, defend)
	end
	if (id == "Play_pln_bb1_21") then
		DelayedCalls:Add("big_09",3, its_stuck)
	end
	if (id == "Play_pln_bb1_23") then
		DelayedCalls:Add("big_10",4.5, defend)
	end
	if (id == "Play_pln_bb1_30") then
		DelayedCalls:Add("big_11",0, that_bang)
	end
	if (id == "Play_pln_bb1_34") then
		DelayedCalls:Add("big_12",0, setupdrill)
	end
	if (id == "Play_pln_bb1_36") then
		DelayedCalls:Add("big_13",5, beast_stuck)
	end
	if (id == "Play_pln_bb1_39") then
		DelayedCalls:Add("big_13a",1, payday)
	end
	--Escape (Twitch)
	if (id == "Play_dr1_a03") then
		DelayedCalls:Add("230", 30, esc_230)
	end
	if (id == "Play_dr1_a04") then
		DelayedCalls:Add("200", 2, esc_200)
	end
	if (id == "Play_dr1_a05") then
		DelayedCalls:Add("100", 2, esc_100)
	end
	if (id == "Play_dr1_a06") then
		DelayedCalls:Add("030", 2, _30s)
	end
	if (id == "Play_dr1_a07") then
		DelayedCalls:Add("timetogo", 2.5, comeon)
	end
	--Big Oil
	if (id == "Play_bo1_05") then
		DelayedCalls:Add("timetogo", 2.5, comeon)
	end
	if (id == "Play_plt_a07") then
		DelayedCalls:Add("30s", 3.75, _30s)
	end	
	if (id == "Play_pln_bo2_27") then
		DelayedCalls:Add("defend", 3, defend)
	end	
	if (id == "Play_pln_bo2_46") then
		DelayedCalls:Add("getout", 4, comeon)
	end	
	if (id == "Play_pln_bo2_21") then
		DelayedCalls:Add("maskup", 4, maskup)
	end
	--Alesso Heist
	if (id == "Play_pln_al1_01") then
		DelayedCalls:Add("civs", 7.5, civs)
	end	
	if (id == "Play_pyr_al1_16") then
		DelayedCalls:Add("shit", 7.5, holyshit)
	end	
	if (id == "Play_pln_al1_08") then
		DelayedCalls:Add("timetogo_2", 7.5, comeon)
	end	
	if (id == "Play_pln_al1_28") then
		DelayedCalls:Add("ok", 5.25, gotcha)
	end
	if (id == "Play_pln_al1_53") then
		DelayedCalls:Add("gogo", 6.5, gogo)
	end	
	if (id == "Play_pln_al1_49") then
		DelayedCalls:Add("hurry_1", 5, hurry)
	end	
	if (id == "Play_pln_al1_14") then
		DelayedCalls:Add("ok_1", 5, gotcha)
	end	
	if (id == "Play_pln_al1_25") or (id == "Play_pln_al1_03") then
		DelayedCalls:Add("ok_3", 5, downstairs)
	end	
	if (id == "Play_pln_al1_18") then
		DelayedCalls:Add("ok_4", 2.5, almost)
	end	
	if (id == "Play_pln_al1_26") then
		DelayedCalls:Add("ok_5", 3.5, upstairs)
	end
	if (id == "Play_pln_al1_04") then
		DelayedCalls:Add("ok_6", 2.75, upstairs)
		DelayedCalls:Add("ok_7", 3.5, comeon)
	end
	if (id == "Play_pln_al1_37") then
		DelayedCalls:Add("ok_8", 3, gotcha)
	end
	-- Numbers
	if (id == "play_pln_gen_count_09") then
		DelayedCalls:Add("ok_10", 1.25, gotemall)
		DelayedCalls:Add("ok_11", 3.5, comeon)		
	end		
	if (id == "play_pln_gen_count_17") then
		DelayedCalls:Add("ok_20", 1.25, hurry)	
	end	
	--Escape (Bile)
	if (id == "Play_plt_a04") then
		DelayedCalls:Add("230", 30, esc_230)
	end
	if (id == "Play_plt_a05") then
		DelayedCalls:Add("200", 2, esc_200)
	end
	if (id == "Play_plt_a06") then
		DelayedCalls:Add("100", 2, esc_100)
	end
	if (id == "Play_plt_a07") then
		DelayedCalls:Add("030", 2, _30s)
	end
	if (id == "Play_plt_a08") then
		DelayedCalls:Add("timetogo", 2.5, vr_noreturn_delay)
	end
	--Escape (Bain)
	if (id == "pln_esc_02_to_arrival") then
		DelayedCalls:Add("esc1", 2.75, esc_200)
		DelayedCalls:Add("esc2", 3.5, esc_200)
	end
	if (id == "pln_esc_01_to_arrival_van") or (id == "pln_esc_01_to_arrival_heli")  then
		DelayedCalls:Add("esc3", 2.5, esc_100)
		DelayedCalls:Add("esc4", 4, esc_100)
	end
	if (id == "pln_esc_30secs_to_arrival_van") then
		DelayedCalls:Add("esc5", 2, _30s)
		DelayedCalls:Add("esc6", 3.5, _30s)
	end
	if (id == "pln_esc_04_to_departure") then
		DelayedCalls:Add("esc7", 3, cant_stay)
	end
	if (id == "pln_esc_03_to_arrival") then
		DelayedCalls:Add("esc8", 1.75, few_min)
	end
	if (id == "pln_esc_03_to_departure") then
		DelayedCalls:Add("esc9", 3.25, few_min)
	end
	if (id == "pln_esc_02_to_departure") then
		DelayedCalls:Add("esc10", 3.5, esc_200)
		DelayedCalls:Add("esc11", 5, esc_200)
	end
	if (id == "pln_esc_01_to_departure_van") then
		DelayedCalls:Add("esc12", 1.5, esc_100)
		DelayedCalls:Add("esc13", 3, esc_100)
		DelayedCalls:Add("esc14", 4, hurry)
	end
	if (id == "pln_esc_10secs_to_departure") then
		DelayedCalls:Add("esc15", 1.25, hurry)
		DelayedCalls:Add("esc16", 2.75, hb1_timetogo)
	end
	--Golden Grin Casino
	if (id == "Play_pln_ca1_67") then
		DelayedCalls:Add("cas_1", 3.75, gotcha)
	end	
	if (id == "Play_pln_ca1_29") then
		DelayedCalls:Add("cas_2", 2.75, maskup)
	end
	if (id == "Play_pln_ca1_01") then
		DelayedCalls:Add("cas_3", 10, civs)
	end
	if (id == "Play_pln_ca1_02") then
		DelayedCalls:Add("cas_4", 5.85, gotcha)
	end
	if (id == "Play_pln_ca1_03") then
		DelayedCalls:Add("cas_5", 4.75, hurry)
	end
	if (id == "Play_pln_ca1_05") then
		DelayedCalls:Add("cas_6", 9.85, gotcha)
	end
	if (id == "Play_pln_ca1_15") then
		DelayedCalls:Add("cas_7", 4.85, comeon)
	end
	if (id == "Play_pln_ca1_18") then
		DelayedCalls:Add("cas_8", 7, comeon)
	end
	if (id == "Play_pln_ca1_24") then
		DelayedCalls:Add("cas_9", 2.5, thatsright)
	end
	if (id == "Play_pln_ca1_26") then
		DelayedCalls:Add("cas_10", 10, comeon)
	end
	if (id == "Play_pln_ca1_30") then
		DelayedCalls:Add("cas_11", 5, planb)
	end
	if (id == "Play_pln_ca1_31") then
		DelayedCalls:Add("cas_12", 6, comeon)
	end
	if (id == "Play_pln_ca1_35") then
		DelayedCalls:Add("cas_13", 1.75, dallas_all)
	end
	if (id == "Play_pln_ca1_41") then
		DelayedCalls:Add("cas_14", 1.75, comeon)
	end
	if (id == "Play_pln_ca1_43") then
		DelayedCalls:Add("cas_15", 5, coming)
	end
	if (id == "Play_pln_ca1_48") then
		DelayedCalls:Add("cas_16", 3.95, defend)
	end
	if (id == "Play_pln_ca1_50") then
		DelayedCalls:Add("cas_18", 15, thatsright)
	end
	if (id == "Play_pln_ca1_55") then
		DelayedCalls:Add("cas_19", 5, defend)
	end
	if (id == "Play_pln_ca1_63") then
		DelayedCalls:Add("cas_20", 3.5, jumpdown)
	end
	if (id == "Play_pln_ca1_71") then
		DelayedCalls:Add("cas_21", 8, thatsright)
	end
	if (id == "Play_pln_ca1_76") then
		DelayedCalls:Add("cas_22", 10, thatsright)
	end
	if (id == "Play_pln_ca1_78") then
		DelayedCalls:Add("cas_22", 1.25, gogo)
	end
	--Shadow Raid
	if (id == "Play_pln_ko1_22") then
		DelayedCalls:Add("holyshit", 1, holyshit)
	end
	--Ukraine Job
	if (id == "Play_pln_ukranian_stage1_22") then
		DelayedCalls:Add("bain_plan", 4.25, bain_plan)
	end
	
	--Civilian casualties
	if (id == "Play_ban_c01") then
	DelayedCalls:Add("civilian_killed", 1.5, ohno)
	end
    --Meltdown
    if (id == "Play_vld_ko1b_03") then
		DelayedCalls:Add("melt_01", 0, oh_fuck)
	end	
	--Bank Heist
	if (id == "pln_branchbank_stage1_37") or (id == "Play_pln_hb2_18") then
		DelayedCalls:Add("tear_gas", 1, dia_bank_gas)
	end	
	if (id == "pln_branchbank_stage1_86") and whis == true then
		DelayedCalls:Add("civs_check", 2.85, civs)
	end	
	if (id == "pln_branchbank_stage1_35") then
		DelayedCalls:Add("planb", 3.5, planb)
	end	
	if (id == "pln_branchbank_stage1_03") then
		DelayedCalls:Add("pln_branchbank_stage1_03", 3.5, comeon)
	end	
	--Hoxton Breakout (The Breakout)
	if (id == "Play_pln_hb1_20") then
		DelayedCalls:Add("waiforit", 1.85, waitforit)
	end	
	if (id == "Play_pln_hb1_21") then
		DelayedCalls:Add("shootem", 1.75, function()
		if Utils:IsInGameState() and Utils:IsInHeist() and Utils:IsInCustody() ~= true then
			managers.player:local_player():sound():say( "v18", false, true )
		end
		end)
	end		
	if (id == "Play_pln_hb1_22") then
		DelayedCalls:Add("clear_car", 3, gotcha)
	end	
	if (id == "Play_pln_hb1_25") then
		DelayedCalls:Add("hox_timetogo", 3, hb1_timetogo)
	end
	if (id == "Play_dr1_hb1_06") then
		DelayedCalls:Add("hox_hurry", 3, hurry)
	end	
	if (id == "Play_dr1_hb1_07") then
		DelayedCalls:Add("letsmove_1", 2, letsmove)
	end	
	if (id == "Play_pln_hb1_23") then
		DelayedCalls:Add("letsmove_2", 3.5, gotcha)
	end	
	if (id == "Play_pln_hb1_24") then
		DelayedCalls:Add("letsmove_3", 10, defend)
	end
	--Hoxton Breakout (The Search)
	if (id == "Play_rb5_hb2_05") then
		DelayedCalls:Add("hox1", 4.75, ohno)
		DelayedCalls:Add("hox2", 9, comeon)
	end	
	if (id == "Play_rb5_hb2_06") then
		DelayedCalls:Add("hox4", 10, comeon)
	end	
	if (id == "Play_rb5_hb2_11") then
		DelayedCalls:Add("hox5", 6.5, downstairs)
	end	
	if (id == "Play_rb5_hb2_12") then
		DelayedCalls:Add("hox6", 8.5, comeon)
	end	
	if (id == "Play_rb5_hb2_13") then
		DelayedCalls:Add("hox7", 6, comeon)
	end	
	if (id == "Play_rb5_hb2_17") then
		DelayedCalls:Add("hox10", 3.75, defend)
	end		
	if (id == "Play_rb5_hb2_21") then
		DelayedCalls:Add("hox11", 6.5, oh_fuck)
	end		
	if (id == "Play_rb5_hb2_24") then
		DelayedCalls:Add("hox12", 2.5, defend)
	end		
	if (id == "Play_rb5_hb2_04") then
		DelayedCalls:Add("hox13", 4.25, defend)
	end		
	if (id == "Play_rb5_hb2_03") then
		DelayedCalls:Add("hox13", 3.75, shootem)
	end			
	--[[if (id == "Play_rb5_hb2_10") or (id == "Play_rb5_hb2_13")or (id == "Play_rb5_hb2_05")or (id == "Play_rb5_hb2_06")or (id == "Play_rb5_hb2_11")or (id == "Play_rb5_hb2_12")or (id == "Play_rb5_hb2_13") then
		local pc_jammed = 0
	end	]]

	--Hotline Miami	(PART 1)
	if (id == "Play_pln_hm1_40") then
		DelayedCalls:Add("1mia_01", 3, _30s)
	end

	if (id == "Play_pln_hm1_27") then
		DelayedCalls:Add("1mia_02", 3, hurry)
	end
	
	if (id == "Play_pln_hm1_32") then
		DelayedCalls:Add("1mia_03", 0, here_it_is)
	end	
	if (id == "Play_pln_hm1_41") then
		DelayedCalls:Add("1mia_04", 3, thatsright)
	end
	--Hotline Miami	(PART 2)
	if (id == "Play_pln_hm2_02") then
		DelayedCalls:Add("2mia_01", 3, hurry)
	end
	if (id == "Play_pln_hm2_03") then
		DelayedCalls:Add("2mia_02", 1.5, gogo)
	end

	if (id == "Play_pln_hm2_04") then
		DelayedCalls:Add("2mia_03", 3, hurry)
	end
	if (id == "Play_pln_hm2_08") then
		DelayedCalls:Add("2mia_04", 3, hurry)
	end
	if (id == "Play_pln_hm2_20") then
		DelayedCalls:Add("2mia_05", 1.85, hurry)
	end
	if (id == "Play_pln_hm2_21") then
		DelayedCalls:Add("2mia_06", 1.85, ohno)
		DelayedCalls:Add("2mia_06_a", 5.75, gogo)
	end
	if (id == "Play_pln_hm2_22") then
		DelayedCalls:Add("2mia_07", 1.85, gogo)
	end
	if (id == "Play_pln_hm2_23") then
		DelayedCalls:Add("2mia_08", 2, ohno)
	end
	if (id == "Play_pln_hm2_25") then
		DelayedCalls:Add("2mia_09", 2, gogo)
	end
	if (id == "Play_pln_hm2_34") then
		DelayedCalls:Add("2mia_10", 1.25, here_it_is)
	end
	
	--The Forest
	if (id == "Play_pln_cr3_02") then
		DelayedCalls:Add("cr3_01", 5, gotcha)
		DelayedCalls:Add("cr3_02", 20, hurry)
	end
	--Hoxton Revenge
	if (id == "Play_pln_hb3_03") then
		DelayedCalls:Add("maskup", 5, maskup)
	end
	
	--Car shop 
	if (id == "Play_pln_ch1_01") then
		DelayedCalls:Add("letsgo", 8, car_letsgo)
	end	
	--Police
	if (id == "play_pln_gen_pol_01") or (id == "play_pln_gen_att_06") then
		DelayedCalls:Add("theres_the_police", 1, _20s)
	end
	if (id == "play_pln_gen_snip_01") or (id == "play_pln_gen_snip_02") or (id == "pln_esc_street_lookout_sniper_01") then
		DelayedCalls:Add("snipers", 2, sniper_call_1)
	end
	if (id == "Play_pln_ukranian_stage1_25") then
		DelayedCalls:Add("theres_the_police", 2, _20s)
	end
	if (id == "play_pln_gen_bgst_01") then
		DelayedCalls:Add("takingbags", 1.5, stealing_bags)
	end
	if (id == "play_pln_heli_01") then
		DelayedCalls:Add("takingbags", 1.5, snip_heli)
	end
	
	--Police (Location)
	if (id == "Play_pln_polin_02") or (id == "Play_fs1_03") then
		DelayedCalls:Add("police_30s_a", 2, _30s)
	end
	if (id == "play_pln_gen_att_02") then
		DelayedCalls:Add("roofs", 2, pl_roofs)
	end
	if (id == "play_pln_gen_att_08") then
		DelayedCalls:Add("outside", 2, pl_outside)
	end
	if (id == "play_pln_gen_att_10") then
		DelayedCalls:Add("down", 2, pl_down)
	end
	if (id == "play_pln_gen_pol_02") then
		DelayedCalls:Add("armored_units", 2, swatvan)
	end

	if (id == "play_pln_gen_snip_05") then
		DelayedCalls:Add("snipers", 3, sniper_call)
		DelayedCalls:Add("roofs", 4.5, pl_roofs)
	end
	if (id == "play_pln_gen_snip_04") then
		DelayedCalls:Add("snipers", 3, sniper_call)
		DelayedCalls:Add("snip_climbup", 4.5, snip_climbup)
	end
	if (id == "play_pln_gen_snip_03") then
		DelayedCalls:Add("snipers", 3, sniper_call)
		DelayedCalls:Add("snip_heli", 4.5, snip_heli)
	end
	
end
local DialogQueue_old = DialogQueue_old or DialogManager.queue_dialog
function DialogManager:queue_dialog(id, params)
	DialogQueue_old(self, id, params)
	self:canary_dialog(id)
	log(id)
end
 
elseif RequiredScript == "lib/managers/hud/hudobjectives" then
if HUDRestorationExists == true then
local halfway
local all
local linger

function HUDObjectives:activate_objective( data )
	self._active_objective_id = data.id
	local objectives_panel = self._hud_panel:child( "objectives_panel" )
	local objective_text = objectives_panel:child( "objective_text" )
	local amount_text = objectives_panel:child( "amount_text" )
	objective_text:set_text( utf8.to_upper( data.text ) )
	local _,_,w,_ = objective_text:text_rect()
	amount_text:set_x( objective_text:x() + 4 + w )
	objectives_panel:set_visible( true )
	self._bg_box:set_h( 38 )
	local w2 = 0
	amount_text:set_visible( false )
	if data.amount then
		self:update_amount_objective( data )
		local _, _, wide, _ = amount_text:text_rect()
		w2 = wide + 4
	end
	objective_text:set_visible( false )
	self._bg_box:stop()
	self._bg_box:animate( callback( nil, _G, "HUDBGBox_animate_open_right" ), 0.66, w + 8*2 + w2 + 8, callback( self, self, "open_right_done", data.amount and true or false ) )
	objectives_panel:stop()
	objectives_panel:animate( callback( self, self, "_animate_activate_objective" ) )
	
	local objective_text_override = utf8.to_upper( data.text )
	log( utf8.to_upper( data.text) )
	local current_map = managers.job:current_level_id()
	if objective_text_override:find( "ESCAPE" ) and not all then
		if current_map == "jewelry_store" or current_map == "ukrainian_job" or current_map == "kosugi" then
		DelayedCalls:Add("gotemall", 0, gotemall)
		all = true
		end
	end
	
	if objective_text_override:find( "ESCAPE" ) and not linger then
		DelayedCalls:Add("lingering", 30, lingering)
		linger = true
	end
end

function HUDObjectives:update_amount_objective( data )
	if data.id ~= self._active_objective_id then
		return
	end
	local current = data.current_amount or 0
	objective_current_amount_override = data.current_amount
	local amount = data.amount
	objective_amount_override = data.amount
	local objectives_panel = self._hud_panel:child( "objectives_panel" )
	objectives_panel:child( "amount_text" ):set_text( current.."/"..amount)
	
	local objective_current_amount_override = data.current_amount
	local objective_amount_override = data.amount
	local current_map = managers.job:current_level_id()
	if ( objective_current_amount_override >= objective_amount_override / 2 ) and not halfway then
		DelayedCalls:Add("halfwaygot", 0, halfwaygot)
		halfway = true
	end
end

elseif HUDRestorationExists == false then

local HUDactivate_old = HUDactivate_old or HUDObjectives.activate_objective
local halfway
local all
local linger

function HUDObjectives:activate_objective(data)
	HUDactivate_old(self, data)
	local objective_text_override = utf8.to_upper( data.text )
	log( utf8.to_upper( data.text) )
	local current_map = managers.job:current_level_id()
	if objective_text_override:find( "ESCAPE" ) and not all then
		if current_map == "jewelry_store" or current_map == "ukrainian_job" or current_map == "kosugi" then
		DelayedCalls:Add("gotemall", 0, gotemall)
		all = true
		end
	end
	
	if objective_text_override:find( "ESCAPE" ) and not linger then
		DelayedCalls:Add("lingering", 30, lingering)
		linger = true
	end
end
local HUDamount_old = HUDamount_old or HUDObjectives.update_amount_objective
function HUDObjectives:update_amount_objective(data)
	HUDamount_old(self, data)
	local objective_current_amount_override = data.current_amount
	local objective_amount_override = data.amount
	local current_map = managers.job:current_level_id()
	if ( objective_current_amount_override >= objective_amount_override / 2 ) and not halfway then
		DelayedCalls:Add("halfwaygot", 0, halfwaygot)
		halfway = true
	end
end

end
end