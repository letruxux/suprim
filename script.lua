--[[

		Gui2Lua™
		10zOfficial
		Version 1.0.0

]]


-- Instances

local SuprimV0 = Instance.new("Frame")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local description = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")
local seting = Instance.new("Folder")
local UICorner_4 = Instance.new("UICorner")

-- Properties

SuprimV0.Name = "Suprim V0"
SuprimV0.Parent = game.StarterGui.working
SuprimV0.BackgroundColor3 = Color3.new(1, 0.576471, 0.576471)
SuprimV0.Position = UDim2.new(0.278781176, 0, 0.277693599, 0)
SuprimV0.Size = UDim2.new(0, 848, 0, 480)

Frame.Parent = SuprimV0
Frame.BackgroundColor3 = Color3.new(1, 0.364706, 0.364706)
Frame.Position = UDim2.new(-9.78865683e-06, 0, -0.00138886773, 0)
Frame.Size = UDim2.new(0, 848, 0, 36)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.011827793, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 97, 0, 36)
TextLabel.Font = Enum.Font.PermanentMarker
TextLabel.Text = "Suprim"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

UICorner.Parent = Frame

TextButton.Parent = SuprimV0
TextButton.BackgroundColor3 = Color3.new(1, 0.364706, 0.364706)
TextButton.Position = UDim2.new(0.0112682562, 0, 0.096990712, 0)
TextButton.Size = UDim2.new(0, 830, 0, 48)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Text"
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true

description.Name = "description"
description.Parent = TextButton
description.BackgroundColor3 = Color3.new(1, 0.47451, 0.47451)
description.BorderSizePixel = 0
description.Position = UDim2.new(0.000561670517, 0, 1, 0)
description.Size = UDim2.new(0, 829, 0, 28)
description.Font = Enum.Font.SourceSans
description.Text = "Description"
description.TextColor3 = Color3.new(0, 0, 0)
description.TextScaled = true
description.TextSize = 14
description.TextWrapped = true

UICorner_2.Parent = description

UICorner_3.Parent = TextButton

seting.Name = "seting"
seting.Parent = TextButton

UICorner_4.Parent = SuprimV0

-- Scripts

local function SECSLDV_fake_script() -- TextButton.ohio 
	local script = Instance.new('LocalScript', TextButton)

	local button = script.Parent
	button.description.Text = button.seting.desc.Value
	button.Text = button.seting.text.Value
	
	-- actual thing
	
	local function leftClick()
		-- what happens
		game.ReplicatedStorage.Bricks.Revive:FireServer()
	end
	
	local function rightClick()
		-- idk put stuff here if you want
	end
	
	button.MouseButton1Click:Connect(leftClick)
	button.MouseButton2Click:Connect(rightClick)
end
coroutine.wrap(SECSLDV_fake_script)()
local function KBIQ_fake_script() -- SuprimV0.Dragify 
	local script = Instance.new('LocalScript', SuprimV0)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(KBIQ_fake_script)()
local function HWRUAAZ_fake_script() -- SuprimV0.various stuff 
	local script = Instance.new('LocalScript', SuprimV0)

	local player = game.Players.LocalPlayer
	local UserInputService = game:GetService("UserInputService")
	
	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then
			return end
		if input.KeyCode == Enum.KeyCode.X then
			print("hide gui with x button")
			if script.Parent.Visible == false then
				script.Parent.Visible = true
			else
				script.Parent.Visible = false
			end
		end
	end)
end
coroutine.wrap(HWRUAAZ_fake_script)()
