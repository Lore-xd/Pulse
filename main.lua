print("Pulse loader is active!")
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100

-- Inställningar
local settings = {
    SilentAim = true,
    TriggerBot = true,
    HitChance = 100,
    TriggerKey = Enum.UserInputType.MouseButton1,
    AimbotKey = Enum.KeyCode.Q,
}

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

-- Triggerbot
if settings.TriggerBot then
    RunService.RenderStepped:Connect(function()
        local target = Mouse.Target
        if target and target.Parent:FindFirstChild("Humanoid") and target.Parent ~= LocalPlayer.Character then
            mouse1press()
            wait(0.05)
            mouse1release()
        end
    end)
end

-- Silent Aim (väldigt basic "Closest Player" till muspekare)
if settings.SilentAim then
    local function getClosestPlayer()
        local closest, distance = nil, math.huge
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local pos = workspace.CurrentCamera:WorldToScreenPoint(player.Character.HumanoidRootPart.Position)
                local dist = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(pos.X, pos.Y)).magnitude
                if dist < distance then
                    distance = dist
                    closest = player
                end
            end
        end
        return closest
    end

    -- Simulera "aim"
    RunService.RenderStepped:Connect(function()
        if UIS:IsKeyDown(settings.AimbotKey) then
            local target = getClosestPlayer()
            if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                Mouse.TargetFilter = target.Character
                Mouse.Hit = CFrame.new(target.Character.HumanoidRootPart.Position)
            end
        end
    end)
end
