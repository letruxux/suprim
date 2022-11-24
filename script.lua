--[[

		Gui2Lua™
		10zOfficial
		Version 1.0.0

]]


-- Instances

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local description = Instance.new("TextLabel")

-- Properties

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.701961, 0.701961, 0.701961)
Frame.Position = UDim2.new(0.264190257, 0, 0.392508417, 0)
Frame.Size = UDim2.new(0, 848, 0, 480)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
Frame_2.Position = UDim2.new(-9.78865683e-06, 0, -0.00138886773, 0)
Frame_2.Size = UDim2.new(0, 848, 0, 36)

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.011827793, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 837, 0, 36)
TextLabel.Font = Enum.Font.PermanentMarker
TextLabel.Text = "Suprim"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.Position = UDim2.new(0.0112682562, 0, 0.096990712, 0)
TextButton.Size = UDim2.new(0, 830, 0, 425)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Revive"
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true

description.Name = "description"
description.Parent = TextButton
description.BackgroundColor3 = Color3.new(1, 1, 1)
description.Position = UDim2.new(0.489156604, 0, 0.755294085, 0)
description.Size = UDim2.new(0, 413, 0, 91)
description.Visible = false
description.Font = Enum.Font.SourceSans
description.Text = "revives the player for free woww"
description.TextColor3 = Color3.new(0, 0, 0)
description.TextScaled = true
description.TextSize = 14
description.TextWrapped = true

-- Scripts

local function TNMSZRQ_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local button = script.Parent
	
	local function leftClick()
		print("Left mouse click")
		game.ReplicatedStorage.Bricks.Revive:FireServer()
	end
	
	local function rightClick()
		print("Right mouse click")
		script.Parent.description.Visible = true
		wait(5)
		script.Parent.description.Visible = false
	end
	
	button.MouseButton1Click:Connect(leftClick)
	button.MouseButton2Click:Connect(rightClick)
end
coroutine.wrap(TNMSZRQ_fake_script)()
