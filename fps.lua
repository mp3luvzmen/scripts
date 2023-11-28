local FPSPing = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local FPS = Instance.new("TextLabel")
local Ping = Instance.new("TextLabel")


FPSPing.Name = "FPS/Ping"
FPSPing.Parent = game.StarterGui.ScreenGui
FPSPing.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = FPSPing
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0.6000000238418579
Frame.Position = UDim2.new(0.893796682, 0, 0.908936024, 0)
Frame.Size = UDim2.new(0.100000009, 0, 0.0773901343, 0)

UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 25)

FPS.Name = "FPS"
FPS.Parent = Frame
FPS.BackgroundColor3 = Color3.new(1, 1, 1)
FPS.BackgroundTransparency = 1
FPS.Position = UDim2.new(0, 0, 0.0453648642, 0)
FPS.Size = UDim2.new(1.00000012, 0, 0.467003733, 0)
FPS.Font = Enum.Font.FredokaOne
FPS.Text = "FPS: NaN"
FPS.TextColor3 = Color3.new(1, 1, 1)
FPS.TextScaled = true
FPS.TextSize = 14
FPS.TextWrapped = true

Ping.Name = "Ping"
Ping.Parent = Frame
Ping.BackgroundColor3 = Color3.new(1, 1, 1)
Ping.BackgroundTransparency = 1
Ping.Position = UDim2.new(0, 0, 0.499637872, 0)
Ping.Size = UDim2.new(1.00000012, 0, 0.467003733, 0)
Ping.Font = Enum.Font.FredokaOne
Ping.Text = "Ping: NaN"
Ping.TextColor3 = Color3.new(1, 1, 1)
Ping.TextScaled = true
Ping.TextSize = 14
Ping.TextWrapped = true

-- Scripts

local function OQUOWI_fake_script() -- FPS.FPS 
	local script = Instance.new('LocalScript', FPS)

	local RS = game:GetService"RunService"
	local Counter = script.Parent
	
	RS.RenderStepped:Connect(function()
		local FPS = workspace:GetRealPhysicsFPS()
		
		--[[
		local Color1 = Color3.fromRGB(255, 255, 255)
		local Color2 = Color3.fromRGB(255, 84, 84)
		
		local Lerp = Color2:Lerp(Color1, FPS / 60)
		Counter.TextColor3 = Lerp 
		]]--
		
		Counter.Text = math.floor(FPS).." FPS"
	end)
end
coroutine.wrap(OQUOWI_fake_script)()
local function KVSR_fake_script() -- Frame.Ping 
	local script = Instance.new('LocalScript', Frame)

	local RS = game:GetService"ReplicatedStorage"
	local Data = RS:WaitForChild"Data"
	local PT = script.Parent:WaitForChild"Ping"
	
	local function GetPing()
		local start = tick()
		Data:InvokeServer()
		local t = tick() - start
		
		local Ping = math.floor(1000 * t)	return Ping
	end
	
	while wait() do PT.Text = GetPing().." ms" end
end
coroutine.wrap(KVSR_fake_script)()
local function PEJUWUJ_fake_script() -- Frame.Script 
	local script = Instance.new('Script', Frame)

	local Data = script:FindFirstChild"Data"
	local FPS_Ping = script:FindFirstChild"FPS/Ping"
	local RS = game:GetService"ReplicatedStorage"
	local SG = game:GetService"StarterGui"
	
	game.Players.PlayerAdded:Connect(function()
		Data.Parent = RS
		FPS_Ping.Parent = SG
		wait(1)
		script:Destroy()
	end)
end
coroutine.wrap(PEJUWUJ_fake_script)()

print("made by daddy mp3 | .gg/byefron")
print("fuck rune btw")
