local plr = game.Players.LocalPlayer
local plrs = game.Players
local char = plr.Character

local function GetMob()
    local currentMob = nil
    for i,v in workspace.Mobs:GetChildren() do
        currentMob = v
    end
    return currentMob
end