local XSHubLogin = Instance.new("ScreenGui")
local LoginFrame = Instance.new("ImageLabel")
local XSTxt = Instance.new("TextLabel")
local XSTxt_Roundify_12px = Instance.new("ImageLabel")
local HubTxt = Instance.new("TextLabel")
local login = Instance.new("ImageLabel")
local LoginBtn = Instance.new("TextButton")
local UIGradient = Instance.new("UIGradient")
local PlayerUsername = Instance.new("ImageLabel")
local UIGradient_2 = Instance.new("UIGradient")
local Playeruser = Instance.new("TextLabel")
local Password = Instance.new("ImageLabel")
local PasswordBox = Instance.new("TextBox")
local UIGradient_3 = Instance.new("UIGradient")
local Try = Instance.new("TextLabel")

--1i92dnjadjqejo

local attempts = 5 -- Set the attempt count to 0
local Tryme = 4 -- Cold Down
local code = "e"

--Propietaries

XSHubLogin.Name = "XSHubLogin"
XSHubLogin.Parent = game.CoreGui
XSHubLogin.ResetOnSpawn = false

LoginFrame.Name = "LoginFrame"
LoginFrame.Parent = XSHubLogin
LoginFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoginFrame.BackgroundTransparency = 1.000
LoginFrame.BorderSizePixel = 0
LoginFrame.Position = UDim2.new(0.325077415, 0, 0.239057243, 0)
LoginFrame.Size = UDim2.new(0, 430, 0, 310)
LoginFrame.Image = "rbxassetid://3570695787"
LoginFrame.ImageColor3 = Color3.fromRGB(25, 25, 25)
LoginFrame.ScaleType = Enum.ScaleType.Slice
LoginFrame.SliceCenter = Rect.new(100, 100, 100, 100)
LoginFrame.SliceScale = 0.120

XSTxt.Name = "XSTxt"
XSTxt.Parent = LoginFrame
XSTxt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XSTxt.BackgroundTransparency = 1.000
XSTxt.BorderSizePixel = 0
XSTxt.Position = UDim2.new(0.147477403, 0, 0.0703875124, 0)
XSTxt.Size = UDim2.new(0, 201, 0, 61)
XSTxt.Font = Enum.Font.Gotham
XSTxt.Text = "XS"
XSTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
XSTxt.TextSize = 60.000

XSTxt_Roundify_12px.Name = "XSTxt_Roundify_12px"
XSTxt_Roundify_12px.Parent = XSTxt
XSTxt_Roundify_12px.AnchorPoint = Vector2.new(0.5, 0.5)
XSTxt_Roundify_12px.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XSTxt_Roundify_12px.BackgroundTransparency = 1.000
XSTxt_Roundify_12px.Position = UDim2.new(0.5, 0, 0.5, 0)
XSTxt_Roundify_12px.Size = UDim2.new(1, 0, 1, 0)
XSTxt_Roundify_12px.Image = "rbxassetid://3570695787"
XSTxt_Roundify_12px.ImageTransparency = 1.000
XSTxt_Roundify_12px.ScaleType = Enum.ScaleType.Slice
XSTxt_Roundify_12px.SliceCenter = Rect.new(100, 100, 100, 100)
XSTxt_Roundify_12px.SliceScale = 0.120

HubTxt.Name = "HubTxt"
HubTxt.Parent = LoginFrame
HubTxt.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
HubTxt.BackgroundTransparency = 1.000
HubTxt.BorderColor3 = Color3.fromRGB(15, 128, 255)
HubTxt.BorderSizePixel = 0
HubTxt.Position = UDim2.new(0.378114223, 0, 0.0703875124, 0)
HubTxt.Size = UDim2.new(0, 221, 0, 61)
HubTxt.Font = Enum.Font.Gotham
HubTxt.Text = "Hub"
HubTxt.TextColor3 = Color3.fromRGB(255, 255, 255)
HubTxt.TextScaled = true
HubTxt.TextSize = 14.000
HubTxt.TextWrapped = true

login.Name = "login"
login.Parent = LoginFrame
login.AnchorPoint = Vector2.new(0.5, 0.5)
login.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
login.BackgroundTransparency = 1.000
login.BorderColor3 = Color3.fromRGB(15, 128, 255)
login.Position = UDim2.new(0.494001716, 0, 0.857673407, 0)
login.Size = UDim2.new(0.648468614, 24, 0.0443790555, 24)
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
LoginBtn.Position = UDim2.new(0.0107546449, 0, 0.0022302866, 0)
LoginBtn.Size = UDim2.new(0, 302, 0, 37)
LoginBtn.Font = Enum.Font.GothamBold
LoginBtn.Text = "Login"
LoginBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
LoginBtn.TextSize = 30.000
LoginBtn.MouseButton1Down:connect(function()
	if PasswordBox.Text == code then
		game.StarterGui:SetCore("SendNotification", {
			Title = "XSHub System";
			Text = "Successful Whitelist";
			Icon = "rbxassetid://6065986399";
			Duration = "8";
			callback = bindableFunction;
		})
		loadstring(game:HttpGet("https://gist.githubusercontent.com/XSHubScript/3c08df3d72fce2c443430b605cc7d790/raw/613cca6395a94d57e0c6ff0e82fae57bbaab5cc6/Loader", true))()
		wait(0.5)
		XSHubLogin:Destroy()
	else
		game.StarterGui:SetCore("SendNotification", {
			Title = "XSHub System";
			Text = "Wrong Password \nAttemps Left:"..Tryme;
			Icon = "rbxassetid://6084960224";
			Duration = "8";
			callback = bindableFunction;
		})
		Try.Text = 'Incorrect password - ' ..Tryme.. ' tries left'
		Tryme = Tryme - 1
		attempts = attempts - 1 -- If they enter the wrong password, increment the attempt count
		if attempts == 0 then -- If they have tried 5 times, kick them
			game.Players.LocalPlayer:Kick("\nInvalid Key! Please Rejoin And Try Again.")
		end
	end
end)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(15, 127, 254)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(15, 127, 254))}
UIGradient.Parent = login

PlayerUsername.Name = "PlayerUsername"
PlayerUsername.Parent = LoginFrame
PlayerUsername.AnchorPoint = Vector2.new(0.5, 0.5)
PlayerUsername.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
PlayerUsername.BorderColor3 = Color3.fromRGB(15, 128, 255)
PlayerUsername.BorderSizePixel = 0
PlayerUsername.Position = UDim2.new(0.498359472, 0, 0.388845503, 0)
PlayerUsername.Size = UDim2.new(0.643230498, 24, 0.0422071032, 24)
PlayerUsername.Image = "rbxassetid://3570695787"
PlayerUsername.ImageColor3 = Color3.fromRGB(25, 25, 25)
PlayerUsername.ScaleType = Enum.ScaleType.Slice
PlayerUsername.SliceCenter = Rect.new(100, 100, 100, 100)
PlayerUsername.SliceScale = 0.120

UIGradient_2.Parent = PlayerUsername

Playeruser.Name = "Playeruser"
Playeruser.Parent = PlayerUsername
Playeruser.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Playeruser.BorderColor3 = Color3.fromRGB(15, 128, 255)
Playeruser.Position = UDim2.new(0.00665360689, 0, 0, 0)
Playeruser.Size = UDim2.new(0, 301, 0, 37)
Playeruser.Font = Enum.Font.GothamBold
Playeruser.Text = "Username"
Playeruser.TextColor3 = Color3.fromRGB(255, 255, 255)
Playeruser.TextSize = 30.000

Password.Name = "Password"
Password.Parent = LoginFrame
Password.AnchorPoint = Vector2.new(0.5, 0.5)
Password.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Password.BorderColor3 = Color3.fromRGB(15, 128, 255)
Password.Position = UDim2.new(0.503010631, 0, 0.588845491, 0)
Password.Size = UDim2.new(0.643230498, 24, 0.0422071032, 24)
Password.Image = "rbxassetid://3570695787"
Password.ImageColor3 = Color3.fromRGB(25, 25, 25)
Password.ScaleType = Enum.ScaleType.Slice
Password.SliceCenter = Rect.new(100, 100, 100, 100)
Password.SliceScale = 0.120

PasswordBox.Name = "PasswordBox"
PasswordBox.Parent = Password
PasswordBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
PasswordBox.BackgroundTransparency = 1.000
PasswordBox.BorderColor3 = Color3.fromRGB(0, 174, 255)
PasswordBox.BorderSizePixel = 0
PasswordBox.Position = UDim2.new(-0.0155458627, 0, -0.0122224391, 0)
PasswordBox.Size = UDim2.new(0, 301, 0, 37)
PasswordBox.Font = Enum.Font.GothamBold
PasswordBox.Text = "Password"
PasswordBox.TextColor3 = Color3.fromRGB(255, 255, 255)
PasswordBox.TextSize = 30.000
PasswordBox.TextWrapped = true

UIGradient_3.Parent = Password

Try.Name = "Try"
Try.Parent = XSHubLogin
Try.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Try.BackgroundTransparency = 1.000
Try.BorderColor3 = Color3.fromRGB(25, 25, 25)
Try.Position = UDim2.new(0.38092952, 0, 0.606298864, 0)
Try.Size = UDim2.new(0, 301, 0, 28)
Try.Font = Enum.Font.GothamBold
Try.Text = "Attempst Left: 5"
Try.TextColor3 = Color3.fromRGB(255, 255, 255)
Try.TextSize = 15.000

-- Scripts:

local function CPDLR_fake_script() -- Playeruser.LocalScript 
	local script = Instance.new('LocalScript', Playeruser)

	script.Parent.Text = game.Players.LocalPlayer.Name
end
coroutine.wrap(CPDLR_fake_script)()
