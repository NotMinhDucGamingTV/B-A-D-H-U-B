-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local Confirm = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local TextBox = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 400, 0, 210)

Frame.Parent = Main
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderSizePixel = 0
Frame.ClipsDescendants = true
Frame.Position = UDim2.new(0.5, 0, 0.850000024, 0)
Frame.Size = UDim2.new(0, 354, 0, 14)

UICorner.Parent = Frame

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(-1, 0, 0, 0)
Frame_2.Size = UDim2.new(0, 59, 0, 14)

UICorner_2.Parent = Frame_2

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(85, 255, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 0))}
UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.50, 0.00), NumberSequenceKeypoint.new(1.00, 0.51)}
UIGradient.Parent = Frame_2

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.057500001, 0, 0.703555226, 0)
TextLabel.Size = UDim2.new(0, 354, 0, 16)
TextLabel.Font = Enum.Font.Fantasy
TextLabel.Text = "Loading Script"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

ImageLabel.Parent = Main
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.375, 0, 0.123739235, 0)
ImageLabel.Size = UDim2.new(0, 100, 0, 100)
ImageLabel.Image = "rbxassetid://9058025738"
ImageLabel.ScaleType = Enum.ScaleType.Tile

Confirm.Name = "Confirm"
Confirm.Parent = ScreenGui
Confirm.AnchorPoint = Vector2.new(0.5, 0.5)
Confirm.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Confirm.BorderSizePixel = 0
Confirm.Position = UDim2.new(0.5, 0, -1, 0)
Confirm.Size = UDim2.new(0, 400, 0, 210)

TextLabel_2.Parent = Confirm
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.057500001, 0, 0.703555226, -11)
TextLabel_2.Size = UDim2.new(0, 354, 0, 16)
TextLabel_2.Font = Enum.Font.Fantasy
TextLabel_2.Text = "Enter Your Username to confirm that you want to use this hub"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

ImageLabel_2.Parent = Confirm
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0.375, 0, 0.123739235, 0)
ImageLabel_2.Size = UDim2.new(0, 100, 0, 100)
ImageLabel_2.Image = "rbxassetid://9058025738"
ImageLabel_2.ScaleType = Enum.ScaleType.Tile

TextBox.Parent = Confirm
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Position = UDim2.new(0.264999986, -6, 0.827364802, -10)
TextBox.Size = UDim2.new(0, 200, 0, 29)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Username"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

UICorner_3.Parent = TextBox
--Script:
coroutine.wrap(function()
	local tween = game:GetService("TweenService"):Create(Frame_2,TweenInfo.new(3),{Position = UDim2.new(1,0,0,0)})
	tween:Play()
	tween.Completed:Connect(function()
		Frame_2.Position = UDim2.new(-1,0,0,0)
		tween:Play()
	end)
end)()
wait(6)
TextLabel.Text = "Game: "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
wait(5)
TextLabel.Text = "Player Name: "..game:GetService("Players").LocalPlayer.Name..",Region: "..game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(game:GetService("Players").LocalPlayer)
wait(1)
local Tween = game:GetService("TweenService"):Create(Confirm,TweenInfo.new(2),{Position = UDim2.new(.5,0,.5,0)})
Tween:Play()
Main.Visible = false
TextBox.FocusLost:Connect(function(entered)
	if entered == true then
		if TextBox.Text == game.Players.LocalPlayer.Name then
			local Tween2 = game:GetService("TweenService"):Create(Confirm,TweenInfo.new(2),{Position = UDim2.new(.5,0,-1,0)})
			Tween2:Play()
			Main.Visible = true
			Tween2.Completed:Connect(function()
				TextLabel.Text = "Finding Script for: "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
				wait(3)
				if game.PlaceId == 5303541547 then
					ScreenGui:Destroy()
					loadstring(game:HttpGet(('https://raw.githubusercontent.com/1stminhcar/Game-Script/main/two%20piece.Lua'),true))()
				elseif game.PlaceId == 7542225721 then
					ScreenGui:Destroy()
					loadstring(game:HttpGet(('https://raw.githubusercontent.com/1stminhcar/Game-Script/main/Sea%20Judgement.Lua'),true))()
				elseif game.PlaceId == 8645723106 then
					ScreenGui:Destroy()
					loadstring(game:HttpGet(('https://raw.githubusercontent.com/1stminhcar/Game-Script/main/Sea%20Hunter%3ARE.Lua'),true))()
				else
					game.Players.LocalPlayer:Kick("Can't Find The Required Script")
				end
			end)
		else
			game.Players.LocalPlayer:Kick("You can't use the script Without confimation")
		end
	end
end)
