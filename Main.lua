--Instances:
local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
--Properties:
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Main.Name = "Main"
Main.Parent = ScreenGui
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.466887444, 0)
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
ImageLabel.ScaleType = Enum.ScaleType.Stretch
--Scripts:
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
	game.Players.LocalPlayer:Kick("We Don't Have the script for the game you are playing")
end
