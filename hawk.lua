--leaked by 8nzrq (blatant.cc is better!!)

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/6HMp1NDn"))()

local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))()
local Notify = AkaliNotif.Notify
Notify({
    Description = "made by hawk tuah girl",
    Title = "Hawk.Tuah",
    Duration = 7, 
})

wait(5)

getgenv().wzmh = {
    CamlockState = false,
    AutoPredState = true,
    Prediction = 0.120689385
}

local TargetPlayer = nil -- Set TargetPlayer to the chosen target player object

game:GetService("RunService").Heartbeat:Connect(function()
    if wzmh.CamlockState and TargetPlayer and TargetPlayer.Character and TargetPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local targetPosition = TargetPlayer.Character.HumanoidRootPart.Position
        if wzmh.AutoPredState then
            targetPosition = targetPosition + (TargetPlayer.Character.HumanoidRootPart.Velocity * wzmh.Prediction)
        end

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
            game.Players.LocalPlayer.Character.HumanoidRootPart.Position,
            Vector3.new(
                targetPosition.X,
                game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,
                targetPosition.Z
            )
        )
        
        game.Players.LocalPlayer.Character.Humanoid.AutoRotate = false
    else
        game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
    end
end)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local function UpdatePredictionBasedOnPing()
    local ping = LocalPlayer:GetNetworkPing()
    if ping > 225 then
        getgenv().wzmh.Prediction = 0.166547
    elseif ping > 215 then
        getgenv().wzmh.Prediction = 0.15692
    elseif ping > 205 then
        getgenv().wzmh.Prediction = 0.165732
    elseif ping > 190 then
        getgenv().wzmh.Prediction = 0.169
    elseif ping > 185 then
        getgenv().wzmh.Prediction = 0.1235666
    elseif ping > 180 then
        getgenv().wzmh.Prediction = 0.16779123
    elseif ping > 175 then
        getgenv().wzmh.Prediction = 0.165455312399999
    elseif ping > 170 then
        getgenv().wzmh.Prediction = 0.16
    elseif ping > 165 then
        getgenv().wzmh.Prediction = 0.15
    elseif ping > 160 then
        getgenv().wzmh.Prediction = 0.1223333
    elseif ping > 155 then
        getgenv().wzmh.Prediction = 0.125333
    elseif ping > 150 then
        getgenv().wzmh.Prediction = 0.1652131
    elseif ping > 145 then
        getgenv().wzmh.Prediction = 0.129934
    elseif ping > 140 then
        getgenv().wzmh.Prediction = 0.1659921
    elseif ping > 135 then
        getgenv().wzmh.Prediction = 0.1659921
    elseif ping > 130 then
        getgenv().wzmh.Prediction = 0.12399
    elseif ping > 125 then
        getgenv().wzmh.Prediction = 0.15465
    elseif ping > 110 then
        getgenv().wzmh.Prediction = 0.142199
    elseif ping > 105 then
        getgenv().wzmh.Prediction = 0.141199
    elseif ping > 100 then
        getgenv().wzmh.Prediction = 0.134143
    elseif ping > 90 then
        getgenv().wzmh.Prediction = 0.1433333333392
    elseif ping > 80 then
        getgenv().wzmh.Prediction = 0.143214443
    elseif ping > 70 then
        getgenv().wzmh.Prediction = 0.14899911
    elseif ping > 60 then
        getgenv().wzmh.Prediction = 0.148325
    elseif ping > 50 then
        getgenv().wzmh.Prediction = 0.128643
    elseif ping > 40 then
        getgenv().wzmh.Prediction = 0.12766
    elseif ping > 30 then
        getgenv().wzmh.Prediction = 0.124123
    elseif ping > 20 then
        getgenv().wzmh.Prediction = 0.12435
    elseif ping > 10 then
        getgenv().wzmh.Prediction = 0.1234555
    else
        getgenv().wzmh.Prediction = 0.1332
    end
end

local function FindNearestEnemy()
    local ClosestDistance, ClosestPlayer = math.huge, nil
    local CenterPosition = Vector2.new(
        game:GetService("GuiService"):GetScreenResolution().X / 2, 
        game:GetService("GuiService"):GetScreenResolution().Y / 2
    )

    for _, Player in ipairs(Players:GetPlayers()) do
        if Player ~= LocalPlayer then
            local Character = Player.Character
            if Character and Character:FindFirstChild("UpperTorso") and Character:FindFirstChild("Humanoid") and Character.Humanoid.Health > 0 then
                local Position, IsVisibleOnViewport = workspace.CurrentCamera:WorldToViewportPoint(Character.UpperTorso.Position)
                if IsVisibleOnViewport then
                    local Distance = (CenterPosition - Vector2.new(Position.X, Position.Y)).Magnitude
                    if Distance < ClosestDistance then
                        ClosestPlayer = Character.UpperTorso
                        ClosestDistance = Distance
                    end
                end
            end
        end
    end

    return ClosestPlayer
end

local enemy = nil

RunService.Heartbeat:Connect(function()
    if getgenv().wzmh.CamlockState then
        if getgenv().wzmh.AutoPredState then
            UpdatePredictionBasedOnPing()
        end

        if enemy then
            local camera = workspace.CurrentCamera
            local enemyVelocity = enemy.Velocity
            local enemyPosition = enemy.Position
            local predictedPosition = enemyPosition + enemyVelocity * getgenv().wzmh.Prediction
            
            camera.CFrame = CFrame.new(camera.CFrame.Position, predictedPosition)
        else
            enemy = FindNearestEnemy()
        end
    end
end)

local Wowo = Instance.new("ScreenGui")
Wowo.Name = "Wowo"
Wowo.Parent = game.CoreGui
Wowo.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local CamlockButton = Instance.new("ImageButton")
CamlockButton.Parent = Wowo
CamlockButton.BackgroundTransparency = 0.35
CamlockButton.Position = UDim2.new(0.5, -50, 0.5, -25)
CamlockButton.Size = UDim2.new(0, 75, 0, 75)
CamlockButton.Image = "rbxassetid://78342062013795"
CamlockButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
CamlockButton.BackgroundColor3 = Color3.new(0, 0, 0)
CamlockButton.ImageTransparency = 0
CamlockButton.Active = true
CamlockButton.Draggable = true

local cornerCamlock = Instance.new("UICorner")
cornerCamlock.CornerRadius = UDim.new(0, 10)
cornerCamlock.Parent = CamlockButton

CamlockButton.MouseButton1Click:Connect(function()
    getgenv().wzmh.CamlockState = not getgenv().wzmh.CamlockState
    enemy = getgenv().wzmh.CamlockState and FindNearestEnemy() or nil
end)