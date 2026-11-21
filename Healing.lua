local q9=game:GetService("Players")
local Zx=game:GetService("TweenService")
local mK=game:GetService("UserInputService")
local v3=game:GetService("CoreGui")
local Rw=q9.LocalPlayer
local j7="NoticeSunset"
local p1=Color3.fromRGB(232,92,40)
local d4=Color3.fromRGB(192,40,122)
local hT=Color3.fromRGB(255,176,112)
local u0=Color3.new(0,0,0)
local Ls=Color3.new(1,1,1)
local e8=Color3.fromRGB(245,240,238)
local Yb=[[Hello, I've been banned from Noxious for being too young (13 years old), so this shitty script will no longer work or receive updates.

Thank you, Noxious, for being such an amazing scripting community where I could share my ideas. And thank you to everyone who used it.

Goodbye!]]
local function fN()
local f1,h2=pcall(function()return gethui and gethui()end)
if f1 and typeof(h2)=="Instance"then return h2 end
local x4=Instance.new("ScreenGui")
local m5=pcall(function()x4.Parent=v3 end)
x4:Destroy()
if m5 then return v3 end
return Rw:WaitForChild("PlayerGui")
end
local c2=fN()
pcall(function()local t5=c2:FindFirstChild(j7)if t5 then t5:Destroy()end end)
local G0=Instance.new("ScreenGui")
G0.Name=j7
G0.ResetOnSpawn=false
G0.IgnoreGuiInset=true
G0.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
G0.DisplayOrder=1000
pcall(function()G0.ScreenInsets=Enum.ScreenInsets.None end)
pcall(function()if syn and syn.protect_gui then syn.protect_gui(G0)end end)
pcall(function()G0.Name=game:GetService("HttpService"):GenerateGUID(false):sub(1,12)end)
G0.Parent=c2
local function k8(w0,r9)
local c7=Instance.new("UICorner")
c7.CornerRadius=UDim.new(0,r9)
c7.Parent=w0
return c7
end
local a9,b3=440,330
local mZ=Instance.new("Frame")
mZ.AnchorPoint=Vector2.new(.5,.5)
mZ.Position=UDim2.fromScale(.5,.5)
mZ.Size=UDim2.fromOffset(a9,b3)
mZ.BackgroundTransparency=1
mZ.Parent=G0
local s6=Instance.new("UIScale")
s6.Parent=mZ
local function r1()
local V1=workspace.CurrentCamera
if not V1 then return end
local N8=V1.ViewportSize
s6.Scale=math.clamp(math.min((N8.X-24)/a9,(N8.Y-24)/b3,1),.5,1)
end
r1()
if workspace.CurrentCamera then
workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(r1)
end
local X2=Instance.new("Frame")
X2.Size=UDim2.fromScale(1,1)
X2.BackgroundColor3=Ls
X2.BorderSizePixel=0
X2.ClipsDescendants=true
X2.Parent=mZ
k8(X2,16)
local n7=Instance.new("UIStroke")
n7.Color=hT
n7.Thickness=1.8
n7.Transparency=.35
n7.Parent=X2
local o5=p1:Lerp(d4,.5)
local w3=Instance.new("UIGradient")
w3.Rotation=35
w3.Color=ColorSequence.new({
ColorSequenceKeypoint.new(0,p1:Lerp(u0,.52)),
ColorSequenceKeypoint.new(.38,d4:Lerp(u0,.58)),
ColorSequenceKeypoint.new(.7,o5:Lerp(u0,.66)),
ColorSequenceKeypoint.new(1,p1:Lerp(u0,.74)),
})
w3.Parent=X2
local H4=Instance.new("Frame")
H4.Size=UDim2.new(1,0,0,46)
H4.BackgroundColor3=u0
H4.BackgroundTransparency=.6
H4.BorderSizePixel=0
H4.Parent=X2
local l6=Instance.new("Frame")
l6.Size=UDim2.new(1,0,0,2)
l6.Position=UDim2.new(0,0,1,-2)
l6.BorderSizePixel=0
l6.BackgroundColor3=Ls
l6.Parent=H4
local y1=Instance.new("UIGradient")
y1.Color=ColorSequence.new(p1,d4)
y1.Parent=l6
local T9=Instance.new("TextLabel")
T9.BackgroundTransparency=1
T9.Position=UDim2.fromOffset(18,0)
T9.Size=UDim2.new(1,-70,1,0)
T9.Text="NOTICE"
T9.Font=Enum.Font.GothamBold
T9.TextSize=16
T9.TextColor3=hT
T9.TextXAlignment=Enum.TextXAlignment.Left
T9.Parent=H4
local C5=Instance.new("TextButton")
C5.AnchorPoint=Vector2.new(1,.5)
C5.Position=UDim2.new(1,-12,.5,0)
C5.Size=UDim2.fromOffset(28,28)
C5.BackgroundColor3=Ls
C5.BackgroundTransparency=0
C5.AutoButtonColor=false
C5.Text="X"
C5.Font=Enum.Font.GothamBold
C5.TextSize=14
C5.TextColor3=Ls
C5.Parent=H4
k8(C5,8)
local g2=Instance.new("UIGradient")
g2.Color=ColorSequence.new(p1,d4)
g2.Rotation=45
g2.Parent=C5
local B8=Instance.new("ScrollingFrame")
B8.BackgroundTransparency=1
B8.BorderSizePixel=0
B8.Position=UDim2.fromOffset(18,58)
B8.Size=UDim2.new(1,-36,1,-76)
B8.CanvasSize=UDim2.new()
B8.AutomaticCanvasSize=Enum.AutomaticSize.Y
B8.ScrollBarThickness=3
B8.ScrollBarImageColor3=hT
B8.Parent=X2
local M0=Instance.new("TextLabel")
M0.BackgroundTransparency=1
M0.Size=UDim2.new(1,-8,0,0)
M0.AutomaticSize=Enum.AutomaticSize.Y
M0.Text=Yb
M0.Font=Enum.Font.GothamMedium
M0.TextSize=15
M0.TextColor3=e8
M0.TextWrapped=true
M0.TextXAlignment=Enum.TextXAlignment.Left
M0.TextYAlignment=Enum.TextYAlignment.Top
M0.Parent=B8
local D3,S7,P6
H4.InputBegan:Connect(function(Q3)
if Q3.UserInputType==Enum.UserInputType.MouseButton1 or Q3.UserInputType==Enum.UserInputType.Touch then
D3=true
S7=Q3.Position
P6=mZ.Position
Q3.Changed:Connect(function()
if Q3.UserInputState==Enum.UserInputState.End then D3=false end
end)
end
end)
mK.InputChanged:Connect(function(Q3)
if D3 and(Q3.UserInputType==Enum.UserInputType.MouseMovement or Q3.UserInputType==Enum.UserInputType.Touch)then
local E6=Q3.Position-S7
mZ.Position=UDim2.new(P6.X.Scale,P6.X.Offset+E6.X,P6.Y.Scale,P6.Y.Offset+E6.Y)
end
end)
local F2=false
local function z4()
if F2 then return end
F2=true
Zx:Create(s6,TweenInfo.new(.18,Enum.EasingStyle.Quad,Enum.EasingDirection.In),{Scale=.01}):Play()
task.delay(.2,function()
if G0 then G0:Destroy()end
end)
end
C5.MouseButton1Click:Connect(z4)
local i9=s6.Scale
s6.Scale=.01
Zx:Create(s6,TweenInfo.new(.25,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Scale=i9}):Play()
