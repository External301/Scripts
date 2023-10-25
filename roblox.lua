local plr = game.Players.LocalPlayer
local plrs = game.Players
local char = plr.Character
local HumRp = char:WaitForChild("HumanoidRootPart")

local Configs = {
    AutoFarmMob = false,
}

local function GetMob()
    local currentMob = nil
    for i,v in workspace.Mobs:GetChildren() do
        currentMob = v
    end
    return currentMob
end

while true do task.wait()
task.spawn(function()
    if AutoFarmMob then
        local Mob = GetMob()
        if Mob and Mob:FindFirstChild("HumanoidRootPart") and HumRp then
            HumRp.CFrame = Mob:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,0,-3)
        end
    end
end)




end
