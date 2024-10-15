getgenv().jamkles = {
    camlock = {
        Enabled = true,
        Toggled = true,
        prediction = 0.14285,
        smoothness = 1,
        AimPart = "HumanoidRootPart",
        AutoReload = true,
        AntiAimView = true
    },
    Aimlock = {
        Enabled = false,
        AimPart = "Head",
        Prediction = 0.123
    },
    Autopred = {
        Enabled = true,
        Method = "Custom", -- Options: Simple, Advanced, Custom
        ping_20 = 0.127,
        ping_25 = 0.125,
        ping_30 = 0.12483,
        ping_40 = 0.1373,
        ping_50 = 0.122742,
        ping_60 = 0.132642,
        ping_70 = 0.1374722,
        ping_80 = 0.1252255,
        ping_90 = 0.13575744,
        ping_100 = 0.13637537,
        ping_105 = 0.13537548,
        ping_110 = 0.12584864,
        ping_125 = 0.13284385,
        ping_130 = 0.14964859,
        ping_135 = 0.13586496,
        ping_140 = 0.12496486,
        ping_145 = 0.1469649679,
        ping_150 = 0.1285853846,
        ping_155 = 0.1538482,
        ping_160 = 0.1648584,
        ping_165 = 0.16485845,
        ping_170 = 0.17485835,
        ping_175 = 0.1753754,
        ping_180 = 0.18475395,
        ping_185 = 0.18486496,
        ping_190 = 0.1940573959,
        ping_205 = 0.248538,
        ping_215 = 0.25848583
    },
    CframeSpeed = {
        Enabled = false,
        Speed = 3
    },
    Fov = {
        Visable = true,
        Mode = "Middle", -- Options: Middle, Follow
        Transparency = 1,
        Size = 40,
        Filled = false,
        Thickness = 2.5,
        Color = Color3.fromRGB(255, 255, 255)
    },
    Offsets = {
        Enabled = true,
        jumpOffset = 3,
        fallOffset = -6
    },
    Resolver = {
        Enabled = true,
        Method = "RecalculateVelocity",
        PredictionSettings = {
            HitPart = "Head"
        }
    },
    Reach = {
        Enabled = false
    },
    Hitbox = {
        Color = Color3.fromRGB(0, 0, 0),
        Material = Enum.Material.ForceField,
        Size = Vector3.new(10, 10, 10),
        Transparency = 0
    },
    BringAll = {
        Enabled = true,
        Distance = 6
    },
    Trashtalk = {
        trashtalkonkill = false,
        delay = 0.1
    },
    Textures = {
        Enabled = false,
        Material = Enum.Material.Brick,
        UseColor = true,
        Color = Color3.fromRGB(0, 0, 0)
    },
    Line = {
        Visable = false,
        Transparency = 1,
        Thickness = 3,
        Color = Color3.fromRGB(255, 0, 0)
    },
    TargetStrafe = {
        Enabled = false,
        Speed = 10,
        Height = 7,
        Radius = 7,
        Randomiser = false
    },
    TriggerBot = {
        Enabled = false,
        ClickDelay = 0
    },
    AutoAir = {
        Enabled = false
    },
    VisualEffects = {
        ColorCorrection = false,
        ColorCorrectionBrightness = 0,
        ColorCorrectionSaturation = 5,
        ColorCorrectionContrast = 2
    },
    Easing = {
        EasingStyle = Enum.EasingStyle.Quad,
        EasingDirection = Enum.EasingDirection.InOut
    },
    Checks = {
        Death = true,
        Knocked = true,
        NoGroundShots = true
    },
    Lockposition = {
        Enabled = true,
        Xpos = true,
        Ypos = true,
        Zpos = true
    },
    HitEffects = {
        Enabled = true,
        Effects = "Electric",
        Color = Color3.fromRGB(100, 255, 100)
    },
    FogModifications = {
        Enabled = true,
        Color = Color3.fromRGB(4, 0, 255),
        Start = 25,
        End = 100
    },
    JumpPred = {
        Enabled = true,
        X = 0,
        Y = -15,
        Z = 0
    },
    NoRecoil = {
        Enabled = false
    },
    Animations = {
        Enabled = false,
        Running = "http://www.roblox.com/asset/?id=",
        Walking = "http://www.roblox.com/asset/?id=",
        Jumping = "http://www.roblox.com/asset/?id=",
        Falling = "http://www.roblox.com/asset/?id=",
        Idle = "http://www.roblox.com/asset/?id="
    },
    AutoReload = {
        Enabled = false,
        AmmoAmount = 0
    },
    Settings = {
        RightClick = true,
        AntiLog = true,
        NoDelay = true,
        MuteBoomBox = true
    },
    Mouse_TP = {
        Enabled = true,
        UsePrediction = false,
        Method = "Health", -- Options: Health, Jumping
        Part = "HumanoidRootPart",
        Prediction = 0.12,
        Health_Value = 100,
        Jump_Wait = 0.8
    },
    ESP = {
        Enabled = true,
        Name = false,
        DisplayName = false,
        HealthText = true,
        Distance = true
    },
    Desync = {
        Toggled = false,
        Speed = 0,
        Mode = "Walkable", -- Options: Walkable, Default
        Velocity = {
            X = 5000,
            Y = 5000,
            Z = 5000
        },
        CSync = {
            Enabled = false,
            Method = "Strafe",
            Spoof = true,
            Strafe = {
                Height = 15,
                Distance = 15,
                Speed = 50
            }
        }
    }
}

loadstring([[
    function LPH_NO_VIRTUALIZE(f) return f end;
]])();


local TargetTracer = Drawing.new("Line")
TargetTracer.Visible = jamkles.Line.Visable
TargetTracer.Transparency = jamkles.Line.Transparency
TargetTracer.Thickness = jamkles.Line.Thickness
TargetTracer.Color = jamkles.Line.Color
TargetTracer.From = Vector2.new(0, 0)
TargetTracer.To = Vector2.new(0, 0)

for Key, Object in pairs(getgc(true)) do
    if type(Object) == "table" then
        setreadonly(Object, false)
        local indexInstance = rawget(Object, "indexInstance")
        if type(indexInstance) == "table" and indexInstance[1] == "kick" then
            setreadonly(indexInstance, false)
            rawset(
                Object,
                "Table",
                {
                    "kick",
                    function()
                        coroutine.yield()
                    end
                }
            ) --> By using coroutine.yield() we are preventing script table from communicating with the server.
            warn(
                "\n---[ INFO ]---\nBypassed Adonis Anti-Cheat/Anti-Exploit.\nBypass Method: Preventing Script Table From Communicating With The Server."
            )
            break
        end
    end
end

local NotificationHolder =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

Notification:Notify(
    {Title = "jamkles.lua", Description = "loaded"},
    {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 3, Type = "default"},
    {
        Image = "http://www.roblox.com/asset/?id=6023426923",
        ImageColor = Color3.fromRGB(255, 84, 84),
        Callback = function(State)
            print(tostring(State))
        end
    }
)

if getgenv().Loaded == true then
    Notification:Notify(
        {Title = "jamkles.lua", Description = "loaded"},
        {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 3, Type = "default"},
        {
            Image = "http://www.roblox.com/asset/?id=6023426923",
            ImageColor = Color3.fromRGB(255, 84, 84),
            Callback = function(State)
                print(tostring(State))
            end
        }
    )
    return
end

getgenv().Loaded = true

local Tool = Instance.new("Tool")
Tool.RequiresHandle = false
Tool.Name = "Lock Tool"
Tool.Parent = game.Players.LocalPlayer.Backpack

local player = game.Players.LocalPlayer

local function connectCharacterAdded()
    player.CharacterAdded:Connect(
        function()
        end
    )
end

connectCharacterAdded()

player.CharacterRemoving:Connect(
    function()
        Tool.Parent = game.Players.LocalPlayer.Backpack
    end
)

local Players = game:GetService("Players")
local RS = game:GetService("RunService")
local WS = game:GetService("Workspace")
local GS = game:GetService("GuiService")
local UIS = game:GetService("UserInputService")
local l = game:GetService("Lighting")

local ColorCorrection = Instance.new("ColorCorrectionEffect", l)

local VirtualInputManager = Game:GetService("VirtualInputManager")
local StarterGui = Game:GetService("StarterGui")


local player = Players.LocalPlayer
local playerCamera = Workspace.CurrentCamera

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local playerCharacter = player.Character
local playerHumanoidRootPart =
    playerCharacter:FindFirstChild("HumanoidRootPart") or playerCharacter:WaitForChild("HumanoidRootPart")


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")


local player = Players.LocalPlayer
local playerCharacter = player.Character or player.CharacterAdded:Wait()
local playerHumanoid = playerCharacter:WaitForChild("Humanoid")
local playerHumanoidRootPart = playerCharacter:WaitForChild("HumanoidRootPart")

local jamklestarget = nil
local jamklestargetCharacter = nil 
local jamklestargetHumanoidRootPart = nil
local TargetedPlayer
local cframespeeding = true


local playerHumanoidRootPartCFrame = playerHumanoidRootPart.CFrame

local LP = Players.LocalPlayer
local Mouse = LP:GetMouse()
local Camera =
    Workspace.CurrentCamera or Workspace:FindFirstChildWhichIsA("Camera") or Workspace:FindFirstChildOfClass("Camera")
local GetGuiInset = GS.GetGuiInset


local TexturesEnabled = getgenv().jamkles.Textures.Enabled
local TexturesMaterial = getgenv().jamkles.Textures.Material
local TexturesUseColor = getgenv().jamkles.Textures.UseColor
local TexturesColor = getgenv().jamkles.Textures.Color

local HitEffectModule = {
    Locals = {
        Type = {
            ["Dots"] = nil,
            ["Electric"] = nil
        }
    },
    Functions = {},
    Settings = {HitEffect = {Color = jamkles.HitEffects.Color}}
}

RS.RenderStepped:Connect(
    function(deltaTime)
        if
            jamklestarget and jamklestarget.Character and
                jamklestarget.Character:FindFirstChild(jamkles.camlock.AimPart)
         then
            local aimPart = jamklestarget.Character[jamkles.camlock.AimPart]
            local targetPosition = aimPart.Position + aimPart.Velocity * jamkles.camlock.prediction
            local lookPosition = CFrame.new(Camera.CFrame.p, targetPosition)
            Camera.CFrame =
                Camera.CFrame:Lerp(
                lookPosition,
                jamkles.camlock.smoothness,
                jamkles.Easing.EasingStyle,
                jamkles.Easing.EasingDirection
            )

            if jamkles.TargetStrafe.Enabled then
                local lp = player.Character
                local targpos = jamklestarget.Character.HumanoidRootPart.Position
                local strafeOffset

                if jamkles.TargetStrafe.Randomiser then
                    strafeOffset =
                        Vector3.new(
                        math.random(-jamkles.TargetStrafe.Radius, jamkles.TargetStrafe.Radius),
                        math.random(0, jamkles.TargetStrafe.Height),
                        math.random(-jamkles.TargetStrafe.Radius, jamkles.TargetStrafe.Radius)
                    )
                else
                    strafeOffset =
                        Vector3.new(
                        math.cos(tick() * jamkles.TargetStrafe.Speed) * jamkles.TargetStrafe.Radius,
                        jamkles.TargetStrafe.Height,
                        math.sin(tick() * jamkles.TargetStrafe.Speed) * jamkles.TargetStrafe.Radius
                    )
                end

                local strafePosition = targpos + strafeOffset
                strafePosition = Vector3.new(strafePosition.X, math.max(strafePosition.Y, targpos.Y), strafePosition.Z)

                lp:SetPrimaryPartCFrame(CFrame.new(strafePosition))
                player.Character.HumanoidRootPart.CFrame =
                    CFrame.new(
                    player.Character.HumanoidRootPart.CFrame.Position,
                    Vector3.new(targpos.X, player.Character.HumanoidRootPart.CFrame.Position.Y, targpos.Z)
                )
            end
        end
    end
)

if jamkles.JumpPred.Enabled == true then
    player.Character:WaitForChild("Humanoid").StateChanged:Connect(
        function(old, new)
            if new == Enum.HumanoidStateType.Freefall == true then
                wait(0.27)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity =
                    Vector3.new(jamkles.JumpPred.X, jamkles.JumpPred.Y, jamkles.JumpPred.Z)
            end
        end
    )

    if jamkles.Lockposition.Enabled == true then
        if getgenv().jamkles.Lockposition.Ypos then
            targetPosition = Vector3.new(targetPosition, player.Character.HumanoidRootPart.Position.Y, targetPosition)
        end
        if getgenv().jamkles.Lockposition.Xpos then
            targetPosition = Vector3.new(player.Character.HumanoidRootPart.Position.X, targetPosition, targetPosition)
        end
        if getgenv().jamkles.Lockposition.Zpos then
            targetPosition = Vector3.new(targetPosition, targetPosition, player.Character.HumanoidRootPart.Position.Z)
        end
    end

    local function UpdateFog()
        if jamkles.FogModifications.Enabled == true then
            game:GetService("Lighting").FogColor = jamkles.FogModifications.Color
            game:GetService("Lighting").FogStart = jamkles.FogModifications.Start
            game:GetService("Lighting").FogEnd = jamkles.FogModifications.End
        end
    end

    RS.Heartbeat:Connect(
        function(deltaTime)
            if
                jamkles.camlock.Enabled and jamkles.Desync.CSync.Enabled and jamkles.Desync.CSync.Method == "Strafe" and
                    playerCharacter and
                    playerHumanoid and
                    playerHumanoidRootPart and
                    jamklestarget
             then
                local TickTime = tick() * jamkles.Desync.CSync.Strafe.Speed
                local Strafe =
                    Vector3.new(
                    math.cos(TickTime) * jamkles.Desync.CSync.Strafe.Distance,
                    jamkles.Desync.CSync.Strafe.Height,
                    math.sin(TickTime) * jamkles.Desync.CSync.Strafe.Distance
                )
                playerHumanoidRootPartCFrame = playerHumanoidRootPart.CFrame

                playerHumanoid.AutoRotate = true
                playerHumanoidRootPart.CFrame = CFrame.new(jamklestarget.Character.Humanoid.RootPart.Position + Strafe)
                playerHumanoidRootPart.CFrame =
                    CFrame.lookAt(
                    playerHumanoidRootPart.Position,
                    Vector3.new(
                        jamklestarget.Character.Humanoid.RootPart.Position.X,
                        playerHumanoidRootPart.Position.Y,
                        jamklestarget.Character.Humanoid.RootPart.Position.Z
                    )
                )

                if jamkles.Desync.CSync.Spoof then
                    RunService.RenderStepped:Wait()
                    playerHumanoidRootPart.CFrame = playerHumanoidRootPartCFrame
                    playerHumanoidRootPartCFrame = playerHumanoidRootPart.CFrame
                end
            elseif
                not jamkles.camlock.Enabled or not jamkles.Desync.CSync.Enabled or not playerCharacter or
                    not playerHumanoid or
                    not playerHumanoidRootPart or
                    not jamklestarget
             then
            end
        end
    )

    RS.RenderStepped:Connect(
        function()
            if
                jamklestarget and jamklestarget.Character and jamklestarget.Character:FindFirstChildOfClass("Humanoid") and
                    jamklestarget.Character:FindFirstChildOfClass("Humanoid").RootPart
             then
                local TargetHumanoid = jamklestarget.Character:FindFirstChildOfClass("Humanoid")
                local TargetRootPart = TargetHumanoid.RootPart
                local ViewportPointPosition, OnScreen = Camera:WorldToViewportPoint(TargetRootPart.Position)
                if OnScreen then
                    TargetTracer.Visible = true
                    TargetTracer.Transparency = 1
                    TargetTracer.Thickness = 2.5
                    TargetTracer.Color = Color3.fromRGB(255, 255, 255)
                    TargetTracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y + 10)
                    TargetTracer.To = Vector2.new(ViewportPointPosition.X, ViewportPointPosition.Y)
                elseif not OnScreen then
                    TargetTracer.Visible = false
                end
            elseif
                not jamklestarget or not jamklestarget.Character or
                    not jamklestarget.Character:FindFirstChildOfClass("Humanoid") or
                    not jamklestarget.Character:FindFirstChildOfClass("Humanoid").RootPart
             then
                TargetTracer.Visible = false
            end
        end
    )

    do
        local OriginalIndex
        OriginalIndex =
            hookmetamethod(
            Game,
            "__index",
            function(Instance, Property)
                if
                    jamkles.Desync.CSync.Enabled and jamkles.Desync.CSync.Spoof and not checkcaller() and jamklestarget and
                        playerCharacter and
                        playerHumanoidRootPart and
                        Instance == playerHumanoidRootPart and
                        Property == "CFrame"
                 then
                    return playerHumanoidRootPartCFrame
                end
                return OriginalIndex(Instance, Property)
            end
        )
    end

    local GameReference = cloneref(Game)

    if not GameReference:IsLoaded() then
        GameReference.Loaded:Wait()
    end

    local Workspace = GameReference:GetService("Workspace")
    local RunService = GameReference:GetService("RunService")
    local Players = GameReference:GetService("Players")
    local CoreGui = GameReference:GetService("CoreGui")

    local LocalPlayer = Players.LocalPlayer
    local Camera =
        Workspace.CurrentCamera or Workspace:FindFirstChildWhichIsA("Camera") or
        Workspace:FindFirstChildOfClass("Camera")

    function WTVP(arg)
        return Camera:WorldToViewportPoint(arg)
    end

    function WTSP(arg)
        return Camera.WorldToScreenPoint(Camera, arg)
    end

    local function WallCheck(Part)
        local Direction =
            (Part.Position - playerCamera.CFrame.Position).Unit *
            (Part.Position - playerCamera.CFrame.Position).Magnitude
        local NewRay = Ray.new(playerCamera.CFrame.Position, Direction)
        local Hit, Position = Workspace:FindPartOnRay(NewRay, playerCharacter, false, true)

        if Hit and Hit:IsDescendantOf(Part.Parent) and Part.Parent:IsA("Model") then
            return true
        end
        return false
    end

    local dragActive = false
    local dragOffset = Vector2.new()

    local FOVCircle = Drawing.new("Circle")
    FOVCircle.Visible = jamkles.Fov.Visable
    FOVCircle.Color = jamkles.Fov.Color
    FOVCircle.Transparency = jamkles.Fov.Transparency
    FOVCircle.Thickness = jamkles.Fov.Thickness
    FOVCircle.NumSides = 1000000
    FOVCircle.Radius = jamkles.Fov.Size
    FOVCircle.Filled = jamkles.Fov.Filled
    FOVCircle.Position = Vector2.new(playerCamera.ViewportSize.X / 2, playerCamera.ViewportSize.Y / 2)

    local UserInputService = game:GetService("UserInputService")
    local Camera = game.Workspace.CurrentCamera
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer

    local function GetClosestPlayer()
        local ClosestPlayer = nil
        local ShortestDistance = math.huge

        for _, Player in ipairs(Players:GetPlayers()) do
            if Player ~= player and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
                local humanoidRootPart = Player.Character.HumanoidRootPart
                local ViewportPointPosition, OnScreen = Camera:WorldToViewportPoint(humanoidRootPart.Position)

                local MagnitudeDistance =
                    (Vector2.new(ViewportPointPosition.X, ViewportPointPosition.Y) - FOVCircle.Position).Magnitude

                if OnScreen and MagnitudeDistance < ShortestDistance and MagnitudeDistance <= FOVCircle.Radius then
                    ClosestPlayer = Player
                    ShortestDistance = MagnitudeDistance
                end
            end
        end
        return ClosestPlayer
    end

    local function UpdateFOVPosition()
        if jamkles.Fov.Mode == "Middle" then
            UserInputService.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if
                            (Vector2.new(input.Position.X, input.Position.Y) - FOVCircle.Position).Magnitude <=
                                FOVCircle.Radius
                         then
                            dragActive = true
                            dragOffset = FOVCircle.Position - Vector2.new(input.Position.X, input.Position.Y)
                        end
                    end
                end
            )

            UserInputService.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragActive = false
                    end
                end
            )

            UserInputService.InputChanged:Connect(
                function(input)
                    if dragActive and input.UserInputType == Enum.UserInputType.MouseMovement then
                        FOVCircle.Position = Vector2.new(input.Position.X, input.Position.Y) + dragOffset
                    end
                end
            )
        elseif jamkles.Fov.Mode == "Follow" then
            local closestPlayer = GetClosestPlayer()
            if closestPlayer and closestPlayer.Character then
                local humanoidRootPart = closestPlayer.Character:FindFirstChild("HumanoidRootPart")
                if humanoidRootPart then
                    local playerPosition, OnScreen = Camera:WorldToViewportPoint(humanoidRootPart.Position)

                    if OnScreen then
                        FOVCircle.Position = Vector2.new(playerPosition.X, playerPosition.Y)
                    else
                        FOVCircle.Position =
                            Vector2.new(playerCamera.ViewportSize.X / 2, playerCamera.ViewportSize.Y / 2)
                    end
                end
            else
                FOVCircle.Position = Vector2.new(playerCamera.ViewportSize.X / 2, playerCamera.ViewportSize.Y / 2)
            end
        end
    end

    game:GetService("RunService").RenderStepped:Connect(
        function()
            UpdateFOVPosition()
        end
    )

    spawn(
        function()
            RS.Heartbeat:Connect(
                function()
                    if jamkles.camlock.Enabled and jamkles.CframeSpeed.Enabled then
                        player.Character.HumanoidRootPart.CFrame =
                            player.Character.HumanoidRootPart.CFrame +
                            player.Character.Humanoid.MoveDirection * jamkles.CframeSpeed.Speed
                    end
                end
            )
        end
    )
    player.CharacterAdded:Connect(
        function(NewCharacter)
            playerCharacter = NewCharacter
            playerHumanoidRootPart =
                playerCharacter:FindFirstChild("HumanoidRootPart") or playerCharacter:WaitForChild("HumanoidRootPart")
        end
    )


    RunService.Heartbeat:Connect(
        function()
            if jamkles.Desync.Toggled then
                if jamkles.Desync.Mode == "Default" then
                    local playerHumanoidRootPartVelocity = playerHumanoidRootPart.Velocity

                    playerHumanoidRootPart.CFrame =
                        playerHumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(jamkles.Desync.Speed), 0)
                    playerHumanoidRootPart.Velocity =
                        Vector3.new(jamkles.Desync.Velocity.X, jamkles.Desync.Velocity.Y, jamkles.Desync.Velocity.Z)
                    RunService.RenderStepped:Wait()
                    playerHumanoidRootPart.Velocity = playerHumanoidRootPartVelocity
                elseif jamkles.Desync.Mode == "Random" then
                    local playerHumanoidRootPartVelocity = playerHumanoidRootPart.Velocity

                    playerHumanoidRootPart.CFrame =
                        playerHumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(jamkles.Desync.Speed), 0)
                    playerHumanoidRootPart.Velocity =
                        Vector3.new(
                        math.random(-jamkles.Desync.Velocity.X, jamkles.Desync.Velocity.X),
                        math.random(-jamkles.Desync.Velocity.Y, jamkles.Desync.Velocity.Y),
                        math.random(-jamkles.Desync.Velocity.Z, jamkles.Desync.Velocity.Z)
                    )
                    RunService.RenderStepped:Wait()
                    playerHumanoidRootPart.Velocity = playerHumanoidRootPartVelocity
                elseif jamkles.Desync.Mode == "Walkable" then
                    local playerHumanoidRootPartVelocity = playerHumanoidRootPart.Velocity
                    playerHumanoidRootPart.CFrame = playerHumanoidRootPart.CFrame * CFrame.Angles(0, 0, 0)
                    playerHumanoidRootPart.Velocity =
                        Vector3.new(
                        math.random(-jamkles.Desync.Velocity.X, jamkles.Desync.Velocity.X),
                        math.random(-jamkles.Desync.Velocity.Y, jamkles.Desync.Velocity.Y),
                        math.random(-jamkles.Desync.Velocity.Z, jamkles.Desync.Velocity.Z)
                    )
                    playerHumanoidRootPart.CFrame =
                        playerHumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(jamkles.Desync.Speed), 0)
                    RunService.RenderStepped:Wait()
                    playerHumanoidRootPart.Velocity = playerHumanoidRootPartVelocity
                end
            end
        end
    )

    local mt = getrawmetatable(game)
    local oldNameCall = mt.__namecall
    setreadonly(mt, false)

    mt.__namecall =
        newcclosure(
        function(Self, ...)
            local args = {...}
            local methodName = getnamecallmethod()
            if not checkcaller() and methodName == "FireServer" and jamkles.Aimlock.Enabled then
                for i, Argument in ipairs(args) do
                    if typeof(Argument) == "Vector3" and jamklestarget and jamklestarget.Character then
                        args[i] =
                            jamklestarget.Character[jamkles.Aimlock.AimPart].Position +
                            (jamklestarget.Character[jamkles.Aimlock.AimPart].Velocity * jamkles.Aimlock.Prediction)
                        return oldNameCall(Self, unpack(args))
                    end
                end
            end
            return oldNameCall(Self, ...)
        end
    )

    setreadonly(mt, true)

    RS.RenderStepped:Connect(
        function()
            TargetedPlayer = GetClosestPlayer()
            local player = game.Players.LocalPlayer
            local isLockToolEquipped = player.Character:FindFirstChild("Lock Tool")

            if
                jamkles.TriggerBot.Enabled and TargetedPlayer and TargetedPlayer.Character and
                    TargetedPlayer.Character:FindFirstChildOfClass("Humanoid").Health ~= 0
             then
                if not isLockToolEquipped then
                    task.wait(jamkles.TriggerBot.ClickDelay)
                    for Index, BodyPart in ipairs(TargetedPlayer.Character:GetChildren()) do
                        if BodyPart:IsA("MeshPart") or BodyPart:IsA("Part") then
                            if
                                BodyPart.Name == "Head" or BodyPart.Name == "UpperTorso" or
                                    BodyPart.Name == "LowerTorso" or
                                    BodyPart.Name == "LeftUpperArm" or
                                    BodyPart.Name == "LeftLowerArm" or
                                    BodyPart.Name == "LeftHand" or
                                    BodyPart.Name == "RightUpperArm" or
                                    BodyPart.Name == "RightLowerArm" or
                                    BodyPart.Name == "RightHand" or
                                    BodyPart.Name == "LeftUpperLeg" or
                                    BodyPart.Name == "LeftLowerLeg" or
                                    BodyPart.Name == "LeftFoot" or
                                    BodyPart.Name == "RightUpperLeg" or
                                    BodyPart.Name == "RightLowerLeg" or
                                    BodyPart.Name == "RightFoot"
                             then
                                local ViewportPointPosition, OnScreen =
                                    playerCamera:WorldToViewportPoint(BodyPart.Position)
                                if OnScreen then
                                    local MagnitudeDistance =
                                        (Vector2.new(ViewportPointPosition.X, ViewportPointPosition.Y) -
                                        FOVCircle.Position).Magnitude
                                    if MagnitudeDistance <= FOVCircle.Radius then
                                        VirtualInputManager:SendMouseButtonEvent(
                                            playerCamera.ViewportSize.X / 2,
                                            playerCamera.ViewportSize.Y / 2,
                                            0,
                                            true,
                                            game,
                                            0
                                        )
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    )

    Tool.Activated:Connect(
        function(deltaTime)
            jamkles.camlock.Toggled = not jamkles.camlock.Toggled

            if jamkles.camlock.Toggled then
                jamklestarget = GetClosestPlayer()
                if jamklestarget then
                    Notification:Notify(
                        {Title = "jamkles.lua", Description = "Locked on: " .. tostring(jamklestarget.DisplayName)},
                        {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 3, Type = "default"},
                        {
                            Image = "http://www.roblox.com/asset/?id=6023426923",
                            ImageColor = Color3.fromRGB(255, 84, 84),
                            Callback = function(State)
                                print(tostring(State))
                            end
                        }
                    )
                end
            elseif not jamkles.camlock.Toggled then
                if jamklestarget ~= nil then
                    jamklestarget = nil
                    Notification:Notify(
                        {Title = "jamkles.lua", Description = "unlocked"},
                        {OutlineColor = Color3.fromRGB(80, 80, 80), Time = 3, Type = "default"},
                        {
                            Image = "http://www.roblox.com/asset/?id=6023426923",
                            ImageColor = Color3.fromRGB(255, 84, 84),
                            Callback = function(State)
                                print(tostring(State))
                            end
                        }
                    )
                end
            end
        end
    )

    local OriginalMaterials = {}
    local OriginalColors = {}

    local function changeParts(model, applyChanges)
        for _, part in ipairs(model:GetChildren()) do
            if part:IsA("BasePart") then
                local isPlayerCharacter = false
                for _, player in ipairs(game.Players:GetPlayers()) do
                    if part:IsDescendantOf(player.Character) then
                        isPlayerCharacter = true
                        break
                    end
                end

                if not isPlayerCharacter then
                    if applyChanges then
                        OriginalMaterials[part] = part.Material
                        OriginalColors[part] = part.Color

                        part.Material = TexturesMaterial
                        if TexturesUseColor then
                            part.Color = TexturesColor
                        end
                    else
                        if OriginalMaterials[part] then
                            part.Material = OriginalMaterials[part]
                            part.Color = OriginalColors[part]
                        end
                    end
                end
            end
            changeParts(part, applyChanges)
        end
    end

    if TexturesEnabled then
        changeParts(game.Workspace, true)
    end

    RS.RenderStepped:Connect(
        function(deltaTime)
            if jamkles.AutoAir.Enabled then
                if
                    jamklestarget and jamklestarget.Character and
                        jamklestarget.Character:FindFirstChild("HumanoidRootPart")
                 then
                    local humanoid = jamklestarget.Character:FindFirstChild("Humanoid")

                    if humanoid then
                        local state = humanoid:GetState()
                        local playerCharacter = game.Players.LocalPlayer.Character
                        local tool = playerCharacter and playerCharacter:FindFirstChildOfClass("Tool")

                        if (state == Enum.HumanoidStateType.Jumping or state == Enum.HumanoidStateType.Freefall) then
                            if tool and tool.Name ~= "Lock Tool" then
                                tool:Activate()
                            end
                        end
                    end
                end
            end

            RS.RenderStepped:Connect(
                function()
                    local TouchPosition = UIS:GetMouseLocation()

                    if
                        jamkles.camlock.Enabled and jamkles.camlock.Toggled and jamklestarget and
                            jamklestarget.Character and
                            jamklestarget.Character:FindFirstChild(jamkles.camlock.AimPart)
                     then
                        local aimPart = jamklestarget.Character[jamkles.camlock.AimPart]
                        local humanoid = jamklestarget.Character:FindFirstChild("Humanoid")

                        local targetPos =
                            aimPart.Position +
                            (jamklestarget.Character.HumanoidRootPart.Velocity * jamkles.camlock.prediction)

                        if getgenv().jamkles.Offsets.Enabled and humanoid then
                            if humanoid:GetState() == Enum.HumanoidStateType.Jumping then
                                targetPos = targetPos + Vector3.new(0, getgenv().jamkles.Offsets.jumpOffset, 0)
                            elseif humanoid:GetState() == Enum.HumanoidStateType.Freefall then
                                targetPos = targetPos + Vector3.new(0, getgenv().jamkles.Offsets.fallOffset, 0)
                            end
                        end

                        local cameraLook = CFrame.new(Camera.CFrame.Position, targetPos)
                        Camera.CFrame = Camera.CFrame:Lerp(cameraLook, jamkles.camlock.smoothness)
                    end
                end
            )

            local Game = cloneref(Game)

            
            local Remote = nil
            LocalPlayer.CharacterAdded:Connect(
                function(Character)
                    LocalCharacter = Character
                    PlayerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
                end
            )

            if jamkles.AutoReload.Enabled then
                
                RS.Heartbeat:Connect(
                    function(DeltaTime)
                        if LocalCharacter then
                            for _, Child in ipairs(LocalCharacter:GetChildren()) do
                                if Child and Child:IsA("Tool") then
                                    if Child:FindFirstChild("Ammo") or Child:FindFirstChild("AMMO") then
                                        local Ammo = Child:FindFirstChild("Ammo") or Child:FindFirstChild("AMMO")
                                        if Ammo.Value == jamkles.AutoReload.AmmoAmount then
                                            if Child:FindFirstChild("rl") then
                                                Remote = Child:FindFirstChild("rl")
                                                Remote:FireServer()
                                            elseif not Child:FindFirstChild("rl") then
                                                local Arguments = {
                                                    [1] = "Reload",
                                                    [2] = Child
                                                }

                                                if Remote then
                                                    if Remote.Name == "Reload" then
                                                        Remote:FireServer()
                                                    elseif Remote.Name ~= "Reload" then
                                                        Remote:FireServer(unpack(Arguments))
                                                    end
                                                end
                                            end
                                        end
                                    elseif PlayerGui then
                                        if PlayerGui.FullScreen then
                                            local FullScreen = PlayerGui.FullScreen
                                            if FullScreen.BottomLeft then
                                                local BottomLeft = FullScreen.BottomLeft
                                                if BottomLeft.Ammo then
                                                    local Ammo = BottomLeft.Ammo
                                                    if string.match(Ammo.Text, "%d+") then
                                                        local AmmoValue = tonumber(string.match(Ammo.Text, "%d+"))
                                                        if AmmoValue == jamkles.AutoReload.AmmoAmount then
                                                            local Arguments = {
                                                                [1] = "Reload",
                                                                [2] = Child
                                                            }

                                                            if Remote then
                                                                Remote:FireServer(unpack(Arguments))
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                )

                
                for _, Child in ipairs(ReplicatedStorage:GetDescendants()) do
                    if Game.PlaceId == 15644861772 then
                        Remote = ReplicatedStorage.Packages.Knit.Services.ToolService.RE.Reload
                        break
                    elseif Game.PlaceId ~= 15644861772 then
                        if Child:IsA("RemoteEvent") and (Child.Name == "MainEvent" or "Remote") then
                            Remote = Child
                            break
                        end
                    end
                end

                if jamkles.Settings.AntiLog then
                    coroutine.wrap(
                        function()
                            local connections = getconnections(ScriptContext.Error)
                            for i, connection in ipairs(connections) do
                                connection:Disable()
                            end
                        end
                    )()
                end

                if getgenv().jamkles.Settings.NoDelay == true then
                    CorePackages.Packages:Destroy()
                end

                RS.RenderStepped:Connect(
                    function()
                        if
                            jamklestarget and jamklestarget.Character and
                                jamklestarget.Character:FindFirstChild(jamkles.camlock.AimPart)
                         then
                            local shakeEnabled = getgenv().jamkles.Shake.Enabled
                            local shakeOffset =
                                Vector3.new(
                                shakeEnabled and
                                    math.random(-getgenv().jamkles.Shake.X, getgenv().jamkles.Shake.X) * 0.1 or
                                    0,
                                shakeEnabled and
                                    math.random(-getgenv().jamkles.Shake.Y, getgenv().jamkles.Shake.Y) * 0.1 or
                                    0,
                                shakeEnabled and
                                    math.random(-getgenv().jamkles.Shake.Z, getgenv().jamkles.Shake.Z) * 0.1 or
                                    0
                            )

                            local aimPart = jamklestarget.Character[jamkles.camlock.AimPart]
                            local predictedPosition =
                                aimPart.Position +
                                (jamklestarget.Character.HumanoidRootPart.Velocity * jamkles.camlock.prediction)
                            local cameraLook = CFrame.new(Camera.CFrame.Position, predictedPosition + shakeOffset)

                            Camera.CFrame = Camera.CFrame:Lerp(cameraLook, jamkles.camlock.smoothness)
                        end
                    end
                )

                function handleCFrameWalk()
                    if jamkles.Enabled and jamkles.Cframe.Enabled then
                        local character = player.Character
                        if character and character:FindFirstChild("HumanoidRootPart") then
                            local humanoidRootPart = character.HumanoidRootPart
                            local moveDirection = character.Humanoid.MoveDirection

                            humanoidRootPart.CFrame =
                                humanoidRootPart.CFrame * CFrame.new(moveDirection * jamkles.Cframe.Speed)
                        end
                    end
                end

                spawn(
                    function()
                        while true do
                            if getgenv().jamkles.Trashtalk.trashtalkonkill and jamklestarget and jamklestarget.Character then
                                local humanoid = jamklestarget.Character:FindFirstChild("Humanoid")
                                if humanoid and humanoid.Health <= 2 then
                                    local chatEvents =
                                        game:GetService("ReplicatedStorage"):FindFirstChild(
                                        "DefaultChatSystemChatEvents"
                                    )
                                    if chatEvents then
                                        local sayMessageRequest = chatEvents:FindFirstChild("SayMessageRequest")
                                        if sayMessageRequest and sayMessageRequest:IsA("RemoteEvent") then
                                            sayMessageRequest:FireServer("tap in w jamkles lua bro", "All")
                                            wait(0.6)
                                            sayMessageRequest:FireServer("ur dirt btw", "All")
                                        elseif sayMessageRequest and sayMessageRequest:IsA("RemoteFunction") then
                                            sayMessageRequest:InvokeServer("tap in w jamkles lua bro", "All")
                                            wait(0.6)
                                            sayMessageRequest:InvokeServer("ur dirt btw", "All")
                                        end
                                    end
                                end
                            end

                            wait(getgenv().jamkles.Trashtalk.delay or 5)
                        end
                    end
                )

                spawn(
                    function()
                        RS.Heartbeat:Connect(
                            function()
                                handleCFrameWalk()
                            end
                        )
                    end
                )

                for _, con in next, getconnections(workspace.CurrentCamera.Changed) do
                    task.wait()
                    con:Disable()
                end
                for _, con in next, getconnections(workspace.CurrentCamera:GetPropertyChangedSignal("CFrame")) do
                    task.wait()
                    con:Disable()
                end

                if getgenv().jamkles.Settings.RightClick == true then
                    local Player = game.Players.LocalPlayer

                    local PlayerGui = Player:WaitForChild("PlayerGui")

                    local ScreenGui = Instance.new("ScreenGui")
                    ScreenGui.Name = "Corporations"
                    ScreenGui.ResetOnSpawn = false
                    ScreenGui.Parent = PlayerGui

                    local TextButton = Instance.new("TextButton")
                    TextButton.Name = "Fuck Me Daddy"
                    TextButton.Parent = ScreenGui
                    TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 139)
                    TextButton.BackgroundTransparency = 0.5
                    TextButton.BorderSizePixel = 0
                    TextButton.Position = UDim2.new(1, -120, 0, 10)
                    TextButton.Size = UDim2.new(0, 100, 0, 18)
                    TextButton.Font = Enum.Font.SourceSans
                    TextButton.Text = "Rightclick"
                    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                    TextButton.TextSize = 18
                    local UICorner = Instance.new("UICorner")
                    UICorner.Parent = TextButton

                    local function OnButtonClick()
                        local vim = game:GetService("VirtualInputManager")
                        vim:SendKeyEvent(true, "ButtonL2", false, game)
                    end

                    TextButton.MouseButton1Click:Connect(OnButtonClick)
                end

                if getgenv().jamkles.Settings.MuteBoomBox then
                    for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if v:IsA("Sound") and not (v.Name == "ShootSound" or v.Name == "NoAmmo") then
                            v.Volume = 0
                        end
                    end
                end

                RS.Heartbeat:Connect(
                    function(DeltaTime)
                        if jamkles.Mouse_TP.Enabled then
                            local Position
                            if not jamkles.Mouse_TP.UsePrediction and jamklestarget then
                                Position =
                                    CFrame.new(
                                    workspace.CurrentCamera.CFrame.Position +
                                        Target.Character[jamkles.Mouse_TP.Part].Position
                                )
                            elseif jamkles.Mouse_TP.UsePrediction and jamklestarget then
                                Position =
                                    CFrame.new(
                                    workspace.CurrentCamera.CFrame.Position +
                                        Target.Character[jamkles.Mouse_TP.Part].Velocity * jamkles.Mouse_TP.Prediction
                                )
                            end
                            if
                                jamklestarget and
                                    jamklestarget.Character.Humanoid.Health == jamkles.Mouse_TP.Health_Value and
                                    jamkles.Mouse_TP.Method == "Health"
                             then
                                workspace.CC.CFrame(Position)
                            elseif jamklestarget and JumpState and jamkles.Mouse_TP.Method == "Jumping" then
                                wait(jamkles.Mouse_TP.Jump_Wait)
                                workspace.CC.CFrame(Position)
                            end
                        end

                        RS.Heartbeat:Connect(
                            function(DeltaTime)
                                if jamkles.Autopred.Enabled and jamkles.Autopred.Method == Custom then
                                    local pingValue =
                                        game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
                                    local ping = tonumber((pingValue:match("%d+")))
                                    if ping then
                                        if ping > 225 then
                                            jamkles.camlock.prediction = ping_225
                                        elseif ping > 215 then
                                            jamkles.camlock.prediction = ping_215
                                        elseif ping > 205 then
                                            jamkles.camlock.prediction = ping_205
                                        elseif ping > 190 then
                                            jamkles.camlock.prediction = ping_190
                                        elseif ping > 185 then
                                            jamkles.camlock.prediction = ping_185
                                        elseif ping > 180 then
                                            jamkles.camlock.prediction = ping_180
                                        elseif ping > 175 then
                                            jamkles.camlock.prediction = ping_175
                                        elseif ping > 170 then
                                            jamkles.camlock.prediction = ping_170
                                        elseif ping > 165 then
                                            jamkles.camlock.prediction = ping_165
                                        elseif ping > 160 then
                                            jamkles.camlock.prediction = ping_160
                                        elseif ping > 155 then
                                            jamkles.camlock.prediction = ping_155
                                        elseif ping > 150 then
                                            jamkles.camlock.prediction = ping_150
                                        elseif ping > 145 then
                                            jamkles.camlock.prediction = ping_145
                                        elseif ping > 140 then
                                            jamkles.camlock.prediction = ping_140
                                        elseif ping > 135 then
                                            jamkles.camlock.prediction = ping_135
                                        elseif ping > 130 then
                                            jamkles.camlock.prediction = ping_130
                                        elseif ping > 125 then
                                            jamkles.camlock.prediction = ping_125
                                        elseif ping > 110 then
                                            jamkles.camlock.prediction = ping_110
                                        elseif ping > 105 then
                                            jamkles.camlock.prediction = ping_105
                                        elseif ping > 100 then
                                            jamkles.camlock.prediction = ping_100
                                        elseif ping > 90 then
                                            jamkles.camlock.prediction = ping_90
                                        elseif ping > 80 then
                                            jamkles.camlock.prediction = jamkles.Autopred.ping_80
                                        elseif ping > 70 then
                                            jamkles.camlock.prediction = jamkles.Autopred.ping_70
                                        elseif ping > 60 then
                                            jamkles.camlock.prediction = jamkles.Autopred.ping_60
                                        elseif ping > 50 then
                                            jamkles.camlock.prediction = jamkles.Autopred.ping_50
                                        elseif ping > 40 then
                                            jamkles.camlock.prediction = jamkles.Autopred.ping_40
                                        elseif ping > 35 then
                                            jamkles.camlock.prediction = jamkles.Autopred.ping_35
                                        elseif ping > 30 then
                                            jamkles.camlock.prediction = jamkles.Autopred.ping_30
                                        elseif ping > 25 then
                                            jamkles.camlock.prediction = ping_25
                                        elseif ping > 20 then
                                            jamkles.camlock.prediction = jamkles.Autopred.ping_20
                                        end
                                    end
                                end
                            end
                        )

                        RS.Heartbeat:Connect(
                            function(DeltaTime)
                                if jamkles.Autopred.Enabled and jamkles.Autopred.Method == Advanced then
                                    local pingValue =
                                        game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
                                    local ping = tonumber(pingValue:match("%d+"))

                                    if
                                        jamklestarget and jamklestarget.Character and
                                            jamklestarget.Character:FindFirstChild("HumanoidRootPart")
                                     then
                                        local targetPosition = jamklestarget.Character.HumanoidRootPart.Position
                                        local distance = (targetPosition - Camera.CFrame.Position).magnitude
                                        local distanceFactor = math.clamp(distance / 1000, 0, 0.5)

                                        if ping and ping > 0 then
                                            local pingAdjustment = math.clamp(ping / 1000, 0, 0.3)

                                            jamkles.camlock.prediction = pingAdjustment + distanceFactor
                                        end
                                    end
                                end
                            end
                        )

                        Game:GetService("RunService").RenderStepped:Connect(
                            function()
                                if jamkles.Reach.Enabled then
                                    for index, player in pairs(Game:GetService("Players"):GetPlayers()) do
                                        if
                                            player ~= Game:GetService("Players").LocalPlayer and player.Character and
                                                player.Character:FindFirstChild("HumanoidRootPart") and
                                                player.Character:FindFirstChildOfClass("Humanoid") and
                                                player.Character:FindFirstChildOfClass("Humanoid").Health > 2.5 and
                                                Game:GetService("Players").LocalPlayer.Character and
                                                Game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                                    "HumanoidRootPart"
                                                )
                                         then
                                            local PlayerHumanoidRootPart =
                                                Game:GetService("Players").LocalPlayer.Character:FindFirstChild(
                                                "HumanoidRootPart"
                                            )
                                            local TargetHumanoidRootPart =
                                                player.Character:FindFirstChild("HumanoidRootPart")
                                            TargetHumanoidRootPart.CanCollide = false
                                            TargetHumanoidRootPart.Color = jamkles.Hitbox.Color
                                            TargetHumanoidRootPart.Material = jamkles.Hitbox.Material
                                            TargetHumanoidRootPart.Size = jamkles.Hitbox.Size
                                            TargetHumanoidRootPart.Transparency = jamkles.Hitbox.Transparency
                                            if jamkles.BringAll.Enabled then
                                                TargetHumanoidRootPart.Anchored = true
                                                TargetHumanoidRootPart.CFrame =
                                                    CFrame.new(
                                                    PlayerHumanoidRootPart.CFrame.Position -
                                                        (PlayerHumanoidRootPart.CFrame.LookVector *
                                                            -jamkles.BringAll.Distance),
                                                    PlayerHumanoidRootPart.CFrame.Position
                                                )
                                            end
                                        end
                                    end
                                elseif not jamkles.Reach.Enabled then
                                    for index, player in pairs(Game:GetService("Players"):GetPlayers()) do
                                        if
                                            player ~= Game:GetService("Players").LocalPlayer and player.Character and
                                                player.Character:FindFirstChild("HumanoidRootPart")
                                         then
                                            local TargetHumanoidRootPart =
                                                player.Character:FindFirstChild("HumanoidRootPart")
                                            TargetHumanoidRootPart.Anchored = false
                                            TargetHumanoidRootPart.CanCollide = true
                                            TargetHumanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
                                            TargetHumanoidRootPart.Material = Enum.Material.Plastic
                                            TargetHumanoidRootPart.Size = Vector3.new(2, 2, 1)
                                            TargetHumanoidRootPart.Transparency = 1
                                        end
                                    end
                                end
                            end
                        )

                        local lastPosition = nil
                        local lastUpdateTime = tick()

                        local function resolveTargetVelocity(jamklestarget)
                            if getgenv().jamkles.Resolver.Enabled then
                                if getgenv().jamkles.Resolver.Method == "RecalculateVelocity" then
                                    local currentTime = tick()
                                    local deltaTime = currentTime - lastUpdateTime

                                    if
                                        lastPosition and
                                            jamklestarget.Character:FindFirstChild(
                                                getgenv().jamkles.Resolver.PredictionSettings.HitPart
                                            )
                                     then
                                        local resolvedVelocity =
                                            (jamklestarget.Character[
                                            getgenv().jamkles.Resolver.PredictionSettings.HitPart
                                        ].Position -
                                            lastPosition) /
                                            deltaTime
                                        lastPosition =
                                            jamklestarget.Character[
                                            getgenv().jamkles.Resolver.PredictionSettings.HitPart
                                        ].Position
                                        lastUpdateTime = currentTime
                                        return resolvedVelocity
                                    else
                                        lastPosition =
                                            jamklestarget.Character[
                                            getgenv().jamkles.Resolver.PredictionSettings.HitPart
                                        ].Position
                                        lastUpdateTime = currentTime
                                    end
                                end
                            end

                            return jamklestarget.Character[getgenv().jamkles.Resolver.PredictionSettings.HitPart].Velocity
                        end

                        if jamkles.camlock.AntiAimView == true then
                            if jamklestarget then
                                local a = math.huge
                                local b = nil

                                for i, v in pairs(game.Players:GetPlayers()) do
                                    if
                                        v ~= Client and v.Character and v.Character:FindFirstChild("Head") and
                                            v.Character:FindFirstChild("HumanoidRootPart")
                                     then
                                        local c =
                                            game.Workspace.CurrentCamera:WorldToViewportPoint(v.Character.Head.Position)
                                        local d = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(c.X, c.Y)).Magnitude
                                        if a > d then
                                            b = v
                                            a = d
                                        end
                                    end
                                end

                                return b
                            elseif jamklestarget == nil then
                                wait()
                            end
                        end

                        if jamkles.VisualEffects.ColorCorrection == true then
                            ColorCorrection.Brightness = jamkles.VisualEffects.ColorCorrectionBrightness
                            ColorCorrection.Contrast = jamkles.VisualEffects.ColorCorrectionContrast
                            ColorCorrection.Saturation = jamkles.VisualEffects.ColorCorrectionSaturation
                        end

                        function ElectricHitEffect(Position)
                            local Part = Instance.new("Part")
                            Part.Position = Position
                            Part.CanCollide = false
                            Part.Anchored = true
                            Part.Transparency = 1
                            Part.Parent = workspace

                            local Attachment = Instance.new("Attachment")
                            Attachment.Parent = Part

                            local ParticleEmitter2 = Instance.new("ParticleEmitter")
                            ParticleEmitter2.Name = "ParticleEmitter2"
                            ParticleEmitter2.FlipbookFramerate = NumberRange.new(20, 20)
                            ParticleEmitter2.Lifetime = NumberRange.new(0.19, 0.38)
                            ParticleEmitter2.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
                            ParticleEmitter2.SpreadAngle = Vector2.new(360, 360)
                            ParticleEmitter2.Transparency =
                                NumberSequence.new(
                                {
                                    NumberSequenceKeypoint.new(0, 1),
                                    NumberSequenceKeypoint.new(0.209842, 0.5),
                                    NumberSequenceKeypoint.new(0.503842, 0.263333),
                                    NumberSequenceKeypoint.new(0.799842, 0.5),
                                    NumberSequenceKeypoint.new(1, 1)
                                }
                            )
                            ParticleEmitter2.LightEmission = 1
                            ParticleEmitter2.Color = ColorSequence.new(Color3.fromRGB(103, 192, 253))
                            ParticleEmitter2.VelocitySpread = 360
                            ParticleEmitter2.Speed = NumberRange.new(0.0161231, 0.0161231)
                            ParticleEmitter2.Size =
                                NumberSequence.new(
                                {
                                    NumberSequenceKeypoint.new(0, 4.3125),
                                    NumberSequenceKeypoint.new(0.3985056, 7.9375),
                                    NumberSequenceKeypoint.new(1, 10)
                                }
                            )
                            ParticleEmitter2.Enabled = false
                            ParticleEmitter2.ZOffset = 0.15
                            ParticleEmitter2.Rate = 100
                            ParticleEmitter2.Texture = "http://www.roblox.com/asset/?id=12394566430"
                            ParticleEmitter2.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
                            ParticleEmitter2.Rotation = NumberRange.new(39, 999)
                            ParticleEmitter2.Orientation = Enum.ParticleOrientation.VelocityParallel
                            ParticleEmitter2.Parent = Attachment

                            ParticleEmitter2:Emit()
                        end

                        local function setupHitMarker(plr)
                            plr.CharacterAdded:Connect(
                                function(char)
                                    local humanoid = char:WaitForChild("Humanoid")
                                    local oldHealth = humanoid.Health

                                    local connection
                                    connection =
                                        humanoid.HealthChanged:Connect(
                                        function(health)
                                            if health < oldHealth then
                                                if plr == jamklestarget then
                                                    if jamkles.HitEffects.Enabled then
                                                        ElectricHitEffect(
                                                            plr.Character.HumanoidRootPart.CFrame.Position
                                                        )
                                                    end
                                                end
                                            end
                                            oldHealth = health
                                            if health == 0 then
                                                connection:Disconnect()
                                            end
                                        end
                                    )
                                end
                            )
                        end

                        for i, plr in pairs(game.Players:GetPlayers()) do
                            setupHitMarker(plr)
                        end

                        for i, plr in pairs(game.Players:GetChildren()) do
                            local char = plr.Character
                            local humanoid = char and char:FindFirstChild("Humanoid")
                            if humanoid then
                                local oldHealth = humanoid.Health
                                local connection

                                connection =
                                    humanoid.HealthChanged:Connect(
                                    function(health)
                                        if health < oldHealth then
                                            if plr == jamklestarget then
                                                if jamkles.HitEffects.Enabled then
                                                    ElectricHitEffect(plr.Character.HumanoidRootPart.CFrame.Position)
                                                end
                                            end
                                        end
                                        oldHealth = health
                                        if health == 0 then
                                            connection:Disconnect()
                                        end
                                    end
                                )
                            end
                        end
                    end
                )
            end

            if getgenv().jamkles.Animations.Enabled then
                local function setAnimationIds()
                    local player = game.Players.LocalPlayer
                    local character = player and player.Character
                    if character and character:FindFirstChild("Animate") then
                        character.Animate.run.RunAnim.AnimationId =
                            "http://www.roblox.com/asset/?id=" .. getgenv().jamkles.Animations.Running
                        character.Animate.walk.WalkAnim.AnimationId =
                            "http://www.roblox.com/asset/?id=" .. getgenv().jamkles.Animations.Walking
                        character.Animate.jump.JumpAnim.AnimationId =
                            "http://www.roblox.com/asset/?id=" .. getgenv().jamkles.Animations.Jumping
                        character.Animate.fall.FallAnim.AnimationId =
                            "http://www.roblox.com/asset/?id=" .. getgenv().jamkles.Animations.Falling
                        character.Animate.idle.IdleAnim.AnimationId =
                            "http://www.roblox.com/asset/?id=" .. getgenv().jamkles.Animations.Idle
                    end
                end
                game:GetService("RunService").Stepped:Connect(setAnimationIds)
            end
        end
    )

    local function NewDrawing(Type, Properties)
        local NewDraw = Drawing.new(Type)
        for i, v in pairs(Properties) do
            NewDraw[i] = v
        end
        return NewDraw
    end

    local ESPPlayers = {}

    local function AddPlayerESP(Player)
        ESPPlayers[Player] = {
            Name = NewDrawing(
                "Text",
                {Color = Color3.fromRGB(255, 255, 255), Outline = true, Visible = false, Center = true, Size = 12}
            ),
            DisplayName = NewDrawing(
                "Text",
                {Color = Color3.fromRGB(255, 255, 255), Outline = true, Visible = false, Center = true, Size = 12}
            ),
            HealthText = NewDrawing(
                "Text",
                {Color = Color3.fromRGB(0, 255, 0), Outline = true, Visible = false, Center = true, Size = 12}
            ),
            Distance = NewDrawing(
                "Text",
                {Color = Color3.fromRGB(255, 255, 255), Outline = true, Visible = false, Center = true, Size = 12}
            )
        }

        local function UpdateCharacter(Character)
            local Humanoid = Character:WaitForChild("Humanoid", 10)
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart", 10)
            if not Humanoid or not HumanoidRootPart then
                return
            end

            ESPPlayers[Player].Character = Character
            ESPPlayers[Player].Humanoid = Humanoid
            ESPPlayers[Player].HumanoidRootPart = HumanoidRootPart
        end

        Player.CharacterAdded:Connect(UpdateCharacter)
        if Player.Character then
            UpdateCharacter(Player.Character)
        end
    end

    local function UpdateESP()
        for Player, Drawings in pairs(ESPPlayers) do
            local Character = Drawings.Character
            local Humanoid = Drawings.Humanoid
            local HumanoidRootPart = Drawings.HumanoidRootPart

            if jamkles.ESP.Enabled and Character and Humanoid and HumanoidRootPart then
                local Vector, OnScreen = Camera:WorldToViewportPoint(HumanoidRootPart.Position)
                local Size =
                    (Camera:WorldToViewportPoint(HumanoidRootPart.Position - Vector3.new(0, 3, 0)).Y -
                    Camera:WorldToViewportPoint(HumanoidRootPart.Position + Vector3.new(0, 2.6, 0)).Y) /
                    2
                local BoxSize = Vector2.new(Size * 1.5, Size * 1.9)
                local BoxPos = Vector2.new(Vector.X - BoxSize.X / 2, Vector.Y - BoxSize.Y / 2)
                local BottomOffset = BoxSize.Y + BoxPos.Y + 1

                if OnScreen then
                    if jamkles.ESP.Name and Player ~= player then
                        Drawings.Name.Position = Vector2.new(BoxSize.X / 2 + BoxPos.X, BoxPos.Y - 16)
                        Drawings.Name.Text = Player.Name
                        Drawings.Name.Color = Color3.fromRGB(255, 255, 255)
                        Drawings.Name.Outline = true
                        Drawings.Name.Visible = true
                    else
                        Drawings.Name.Visible = false
                    end

                    
                    local displayNameShouldBeVisible = jamkles.ESP.DisplayName and Player.DisplayName ~= Player.Name
                    if displayNameShouldBeVisible and Player ~= player then
                        Drawings.DisplayName.Position = Vector2.new(BoxSize.X / 2 + BoxPos.X, BoxPos.Y - 32)
                        Drawings.DisplayName.Text = Player.DisplayName
                        Drawings.DisplayName.Color = Color3.fromRGB(255, 255, 255)
                        Drawings.DisplayName.Outline = true
                        Drawings.DisplayName.Visible = true
                    else
                        Drawings.DisplayName.Visible = false
                    end

                    if
                        jamkles.ESP.Distance and Player ~= player and player.Character and
                            player.Character:FindFirstChild("HumanoidRootPart")
                     then
                        Drawings.Distance.Position = Vector2.new(BoxSize.X / 2 + BoxPos.X, BottomOffset)
                        Drawings.Distance.Text =
                            "" ..
                            math.floor(
                                (HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
                            ) ..
                                "m"
                        Drawings.Distance.Color = Color3.fromRGB(255, 255, 255)
                        Drawings.Distance.Outline = true
                        BottomOffset = BottomOffset + 15
                        Drawings.Distance.Visible = true
                    else
                        Drawings.Distance.Visible = false
                    end

                    if jamkles.ESP.HealthText and Player ~= player then
                        Drawings.HealthText.Text = tostring(math.floor((Humanoid.Health / Humanoid.MaxHealth) * 100))
                        Drawings.HealthText.Position = Vector2.new(BoxPos.X - 20, BoxPos.Y + BoxSize.Y - 1)
                        Drawings.HealthText.Color = Color3.fromRGB(0, 228, 15)
                        Drawings.HealthText.Outline = true
                        Drawings.HealthText.Visible = true
                    else
                        Drawings.HealthText.Visible = false
                    end
                else
                    Drawings.Name.Visible = false
                    Drawings.DisplayName.Visible = false
                    Drawings.HealthText.Visible = false
                    Drawings.Distance.Visible = false
                end
            else
                Drawings.Name.Visible = false
                Drawings.DisplayName.Visible = false
                Drawings.HealthText.Visible = false
                Drawings.Distance.Visible = false
            end
        end
    end

    for _, Player in pairs(Players:GetPlayers()) do
        AddPlayerESP(Player)
    end

    Players.PlayerAdded:Connect(
        function(Player)
            AddPlayerESP(Player)
        end
    )

    Players.PlayerRemoving:Connect(
        function(Player)
            if ESPPlayers[Player] then
                for _, Drawing in pairs(ESPPlayers[Player]) do
                    Drawing:Remove()
                end
                ESPPlayers[Player] = nil
            end
        end
    )
end

game:GetService("RunService").RenderStepped:Connect(UpdateESP)
