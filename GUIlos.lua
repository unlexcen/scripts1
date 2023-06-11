-- Gui to Lua
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Lable = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(113, 121, 127)
Frame.Position = UDim2.new(0.450015008, 0, 0.236073419, 0)
Frame.Size = UDim2.new(0, 186, 0, 226)
Frame.Style = Enum.FrameStyle.DropShadow
Frame.Selectable = true
Frame.Active = true
Frame.Draggable = true

Lable.Name = "Lable"
Lable.Parent = Frame
Lable.BackgroundColor3 = Color3.fromRGB(116, 93, 61)
Lable.Position = UDim2.new(0.0188740753, 0, 0.102923714, 0)
Lable.Size = UDim2.new(0, 163, 0, 50)
Lable.Font = Enum.Font.Unknown
Lable.Text = "LOS"
Lable.TextColor3 = Color3.fromRGB(0, 0, 0)
Lable.TextSize = 18.000
Lable.TextWrapped = true

TextButton.Parent = Lable
TextButton.BackgroundColor3 = Color3.fromRGB(176, 255, 179)
TextButton.Position = UDim2.new(0.0272462144, 0, 1.63999999, 0)
TextButton.Size = UDim2.new(0, 154, 0, 41)
TextButton.Style = Enum.ButtonStyle.RobloxRoundButton
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Getorbs"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.MouseButton1Click:Connect(function()
_G.loop = true
while _G.loop do wait()
for i,v in pairs(game:GetService("Workspace").orbFolder:GetDescendants()) do
    if v.Name == "TouchInterest" then
print(v.Name)
v.Parent.CFrame = game.Players.localPlayer.Character.HumanoidRootPart.CFrame
wait(0.1)
    end
end
end
end)

TextButton_2.Parent = Lable
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.Position = UDim2.new(0.116564631, 0, 2.68000007, 0)
TextButton_2.Size = UDim2.new(0, 123, 0, 42)
TextButton_2.Style = Enum.ButtonStyle.RobloxRoundButton
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Stop orbs"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000
TextButton_2.MouseButton1Click:Connect(function()
_G.loop = false
while _G.loop do wait()
for i,v in pairs(game:GetService("Workspace").orbFolder:GetDescendants()) do
    if v.Name == "TouchInterest" then
print(v.Name)
v.Parent.CFrame = game.Players.localPlayer.Character.HumanoidRootPart.CFrame
wait(0.1)
    end
end
end
end)

TextButton_3.Parent = Lable
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.BorderColor3 = Color3.fromRGB(53, 52, 47)
TextButton_3.Position = UDim2.new(0.824236929, 0, -0.615865171, 0)
TextButton_3.Size = UDim2.new(0, 40, 0, 29)
TextButton_3.Style = Enum.ButtonStyle.RobloxRoundButton
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "X"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000
TextButton_3.MouseButton1Click:Connect(function()
	TextButton_3.Parent.Visible = false
end)
