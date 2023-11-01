repeat task.wait() until game.Players.LocalPlayer.Character
local plr = game.Players.LocalPlayer
local plrs = game.Players
local char = plr.Character
local HumRp = char:WaitForChild("HumanoidRootPart")
local Humanoid = char:WaitForChild("Humanoid")
local MobFolder = workspace:WaitForChild("Mobs")

getgenv().Farm = false

local Configs = {
    AutoFarmMob = false,
    Busy = false,
    
    Stats = {
        Deaths = 0,
    },
}

local function GetMob()
    local currentMob = nil
    for i,v in MobFolder:GetChildren() do
        currentMob = v
    end
    return currentMob
end

task.spawn(function()
while true do task.wait()
--//MobFarm
task.spawn(function()
    if AutoFarmMob or getgenv().Farm then
        local Mob = GetMob()
        if Mob and Mob:FindFirstChild("HumanoidRootPart") and HumRp then
            HumRp.CFrame = Mob:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0,0,-3)
        end
    end
end)
-----------------------------------
task.spawn(function()

end)



end
end)