-- CANARY FUNCTIONS
if not ABYSSINIANCATBIRD then
local Net = _G.LuaNetworking
_G.CanaryOptions = _G.CanaryOptions or {}
local ban_global = CanaryOptions._data.ban_global
local ban_toggle = CanaryOptions._data.ban_toggle
local ban_pag_toggle = CanaryOptions._data.ban_pag_toggle
local ply_assault_toggle = CanaryOptions._data.ply_assault_toggle

--

randomize_dc = randomize_dc or function()
end
mercurius_exec = mercurius_exec or function()
end
ABYSSINIANCATBIRD = true
end