local HttpService = game:GetService('HttpService')
local Supported = false
local Script = nil

local GameList = game:HttpGet('https://raw.githubusercontent.com/Vhavxx/Random/master/GameList.json')
function GetGame()
	local GameTable = HttpService:JSONDecode(GameList)
	if GameTable[tostring(game.PlaceId)] then 
		return GameTable[tostring(game.PlaceId)]
	else
		return false
	end    
end

local Game = GetGame()

if Game then
	Supported = true
	Script = game:HttpGet('https://raw.githubusercontent.com/Vhavxx/Random/master/Scritps/' .. Game.ScriptName)
end

local code = ("XSHub_1.7Update!.zyxwtf719238")

local XSHubLogin = Instance.new("ScreenGui")
local LoginFrame = Instance.new("ImageLabel")
local login = Instance.new("ImageLabel")
local LoginBtn = Instance.new("TextButton")
local UIGradient = Instance.new("UIGradient")
local Password = Instance.new("ImageLabel")
local PasswordBox = Instance.new("TextBox")
local UIGradient_2 = Instance.new("UIGradient")
local HubTxt = Instance.new("TextLabel")
local XSTxt = Instance.new("TextLabel")
local Logo = Instance.new("ImageLabel")
local GameName = Instance.new("TextLabel")
local get_Key = Instance.new("ImageLabel")
local GetKey = Instance.new("TextButton")
local UIGradient_3 = Instance.new("UIGradient")

local attempts = 5 -- Set the attempt count to 0
local FailAtt = 4 -- Cold Down

XSHubLogin.Name = "XSHubLogin"
XSHubLogin.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

LoginFrame.Name = "LoginFrame"
LoginFrame.Parent = XSHubLogin
LoginFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoginFrame.BackgroundTransparency = 1.000
LoginFrame.BorderSizePixel = 0
LoginFrame.Position = UDim2.new(0.348988086, 0, 0.323714763, 0)
LoginFrame.Size = UDim2.new(0, 388, 0, 208)
LoginFrame.Image = "rbxassetid://3570695787"
LoginFrame.ImageColor3 = Color3.fromRGB(25, 25, 25)
LoginFrame.ScaleType = Enum.ScaleType.Slice
LoginFrame.SliceCenter = Rect.new(100, 100, 100, 100)
LoginFrame.SliceScale = 0.120

login.Name = "login"
login.Parent = LoginFrame
login.AnchorPoint = Vector2.new(0.5, 0.5)
login.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
login.BackgroundTransparency = 1.000
login.BorderColor3 = Color3.fromRGB(15, 128, 255)
login.BorderSizePixel = 0
login.Position = UDim2.new(0.493734241, 0, 0.746098638, 0)
login.Size = UDim2.new(0.595744789, 24, -0.00876825862, 24)
login.Image = "rbxassetid://3570695787"
login.ScaleType = Enum.ScaleType.Slice
login.SliceCenter = Rect.new(100, 100, 100, 100)
login.SliceScale = 0.120

LoginBtn.Name = "LoginBtn"
LoginBtn.Parent = login
LoginBtn.BackgroundColor3 = Color3.fromRGB(15, 128, 255)
LoginBtn.BackgroundTransparency = 1.000
LoginBtn.BorderColor3 = Color3.fromRGB(15, 128, 255)
LoginBtn.BorderSizePixel = 0
LoginBtn.Position = UDim2.new(-0.0039191246, 0, 0.045093447, 0)
LoginBtn.Size = UDim2.new(0, 255, 0, 21)
LoginBtn.Font = Enum.Font.GothamBold
LoginBtn.Text = " Load Script"
LoginBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
LoginBtn.TextSize = 20.000
LoginBtn.MouseButton1Down:connect(function()
	if PasswordBox.Text == code then
		game.StarterGui:SetCore("SendNotification", {
			Title = "XSHub System";
			Text = "Successful Whitelist";
			Icon = "rbxassetid://6065986399";
			Duration = "8";
			callback = bindableFunction;
		})
		loadstring(Script)()
		wait(0.1)
		XSHubLogin:Destroy()
	else
		game.StarterGui:SetCore("SendNotification", {
			Title = "XSHub System";
			Text = "Wrong Password \nAttemps Left:"..FailAtt;
			Icon = "rbxassetid://6084960224";
			Duration = "8";
			callback = bindableFunction;
		})
		FailAtt = FailAtt - 1
		attempts = attempts - 1 -- If they enter the wrong password, increment the attempt count
		if attempts == 0 then -- If they have tried 5 times, kick them
			game.Players.LocalPlayer:Kick("\nInvalid Key! Please Rejoin And Try Again. \nGet Key = (https://discord.gg/5aausdPbtQ)")
		end
	end
end)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(15, 127, 254)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(15, 127, 254))}
UIGradient.Parent = login

Password.Name = "Password"
Password.Parent = LoginFrame
Password.AnchorPoint = Vector2.new(0.5, 0.5)
Password.BackgroundColor3 = Color3.fromRGB(153, 153, 153)
Password.BackgroundTransparency = 1.000
Password.BorderColor3 = Color3.fromRGB(128, 128, 128)
Password.BorderSizePixel = 0
Password.Position = UDim2.new(0.493734151, 0, 0.467968136, 0)
Password.Size = UDim2.new(0.595744789, 24, 0.0303723998, 24)
Password.Image = "rbxassetid://3570695787"
Password.ImageColor3 = Color3.fromRGB(25, 25, 25)
Password.ScaleType = Enum.ScaleType.Slice
Password.SliceCenter = Rect.new(100, 100, 100, 100)
Password.SliceScale = 0.120

PasswordBox.Name = "PasswordBox"
PasswordBox.Parent = Password
PasswordBox.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
PasswordBox.BorderColor3 = Color3.fromRGB(80, 80, 80)
PasswordBox.BorderSizePixel = 0
PasswordBox.Position = UDim2.new(0, 0, -0.841343105, 0)
PasswordBox.Size = UDim2.new(0, 254, 0, 38)
PasswordBox.Font = Enum.Font.GothamBold
PasswordBox.Text = "Password"
PasswordBox.TextColor3 = Color3.fromRGB(249, 249, 249)
PasswordBox.TextSize = 20.000
PasswordBox.TextWrapped = true

UIGradient_2.Parent = Password

HubTxt.Name = "HubTxt"
HubTxt.Parent = LoginFrame
HubTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HubTxt.BackgroundTransparency = 1.000
HubTxt.BorderSizePixel = 0
HubTxt.Position = UDim2.new(-0.0920574814, 0, -0.0586447455, 0)
HubTxt.Size = UDim2.new(0, 201, 0, 61)
HubTxt.Font = Enum.Font.Gotham
HubTxt.Text = "Hub"
HubTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
HubTxt.TextSize = 15.000

XSTxt.Name = "XSTxt"
XSTxt.Parent = HubTxt
XSTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XSTxt.BackgroundTransparency = 1.000
XSTxt.BorderSizePixel = 0
XSTxt.Position = UDim2.new(-0.123473182, 0, -0.00598096102, 0)
XSTxt.Size = UDim2.new(0, 201, 0, 61)
XSTxt.Font = Enum.Font.Gotham
XSTxt.Text = "XS"
XSTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
XSTxt.TextSize = 15.000

Logo.Name = "Logo"
Logo.Parent = LoginFrame
Logo.AnchorPoint = Vector2.new(0.5, 0.5)
Logo.BackgroundColor3 = Color3.fromRGB(153, 153, 153)
Logo.BackgroundTransparency = 1.000
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.0439330563, 0, 0.0972152278, 0)
Logo.Size = UDim2.new(0.0838582665, 24, 0.0669674426, 24)
Logo.Image = "rbxassetid://6061268141"
Logo.ScaleType = Enum.ScaleType.Slice
Logo.SliceCenter = Rect.new(100, 100, 100, 100)
Logo.SliceScale = 0.120

GameName.Name = "GameName"
GameName.Parent = LoginFrame
GameName.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
GameName.BackgroundTransparency = 1.000
GameName.BorderColor3 = Color3.fromRGB(25, 25, 25)
GameName.Position = UDim2.new(0.139053747, 0, 0.509535797, 0)
GameName.Size = UDim2.new(0, 301, 0, 28)
GameName.Font = Enum.Font.GothamBold
GameName.Text = "Game Detected: Loading..."
GameName.TextColor3 = Color3.fromRGB(255, 255, 255)
GameName.TextSize = 15.000

if Game then 
	GameName.Text = "Game Detected: " .. Game.GameName
	LoginBtn.Text = "Load Script"
else
	GameName.Text = "No Game Deteced..."
	LoginBtn.Text = "Destroy UI"
	LoginBtn.MouseButton1Down:Connect(function()
		wait(1)
		XSHubLogin:Destroy()
	end)
	return
end

get_Key.Name = "get_Key"
get_Key.Parent = LoginFrame
get_Key.AnchorPoint = Vector2.new(0.5, 0.5)
get_Key.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
get_Key.BackgroundTransparency = 1.000
get_Key.BorderColor3 = Color3.fromRGB(15, 128, 255)
get_Key.BorderSizePixel = 0
get_Key.Position = UDim2.new(0.488579512, 0, 0.904752553, 0)
get_Key.Size = UDim2.new(0.47718811, 24, -0.00876825582, 24)
get_Key.Image = "rbxassetid://3570695787"
get_Key.ScaleType = Enum.ScaleType.Slice
get_Key.SliceCenter = Rect.new(100, 100, 100, 100)
get_Key.SliceScale = 0.120

GetKey.Name = "GetKey"
GetKey.Parent = get_Key
GetKey.BackgroundColor3 = Color3.fromRGB(15, 128, 255)
GetKey.BackgroundTransparency = 1.000
GetKey.BorderColor3 = Color3.fromRGB(15, 128, 255)
GetKey.BorderSizePixel = 0
GetKey.Position = UDim2.new(-0.00478113443, 0, 0, 0)
GetKey.Size = UDim2.new(0, 210, 0, 22)
GetKey.Font = Enum.Font.GothamBold
GetKey.Text = "Get Key"
GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
GetKey.TextSize = 20.000
GetKey.MouseButton1Down:Connect(function()
	setclipboard("https://discord.gg/5aausdPbtQ")
	GetKey.Text = "Copied!"
	wait(0.5)
	GetKey.Text = "Get Key"
end)

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(15, 127, 254)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(15, 127, 254))}
UIGradient_3.Parent = get_Key