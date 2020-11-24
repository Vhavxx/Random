local library = loadstring"https://pastebin.com/raw/FsJak6AT"
local main = library:CreateWindow("Fencing GUI")
local Sword = main:CreateFolder("Combat")
Sword:Label("Combat Features",Color3.fromRGB(38,38,38),Color3.fromRGB(155, 251, 0)) --BgColor,TextColor
Sword:Button("Sword Reach",function()
	a=Instance.new("SelectionBox",game.Players.LocalPlayer.Backpack.Foil.Handle)
a.Adornee=game.Players.LocalPlayer.Backpack.Foil.Handle
game.Players.LocalPlayer.Backpack.Foil.Handle.Size=Vector3.new(1,1,30)
end)
local teleports = main:CreateFolder("Teleports")
Sword:Button("FE Fling",function()
	 -- Made by JackMcJagger15

power = 500 -- change this to make it more or less powerful

game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
end)

wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end)

Sword:Button("Spawn on Mat",function()
    local mt = getrawmetatable(game)
local oldmt = mt.index
make_writeable(mt)
 
mt.index = function(t,i)
   if i == "Kick" then
       return nil
   elseif i == "kick" then
       return nil
   end
   return oldmt(t,i)
end
end)

Sword:Button("AutoHeal (Godmode)",function()
	                                          game:GetService("RunService").RenderStepped:Connect(function()
    firetouchinterest(game.Players.LocalPlayer.Character.Torso, workspace.Button, 0)

    firetouchinterest(game.Players.LocalPlayer.Character.Torso, workspace.Button, 1)
end)
end)
Sword:Button("Reset",function()
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
Sword:Slider("Walkspeed",16,100,function(value) --MinValue,MaxValue155, 251, 0
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)




teleports:Button("Fighting Area",function()
	local oh1 = CFrame.new(-19.9539032, 6.89999962, 106.366669)
local oh2 = game:GetService("Players")
local oh3 = oh2.LocalPlayer.Character.HumanoidRootPart


oh3.CFrame = oh1

-- end of script
end)
teleports:Button("Viewing Area",function()
	local oh1 = CFrame.new(-20.9511166, 3.90000033, 59.4557228)
local oh2 = game:GetService("Players")
local oh3 = oh2.LocalPlayer.Character.HumanoidRootPart


oh3.CFrame = oh1

-- end of script
end)
teleports:Button("Armor",function()
	local oh1 = CFrame.new(56.3950157, 4.5999999, 124.75013)
local oh2 = game:GetService("Players")
local oh3 = oh2.LocalPlayer.Character.HumanoidRootPart


oh3.CFrame = oh1

-- end of script
end)
teleports:Button("Spawn on Mat",function()
	loadstring(game:HttpGet("https://pastebin.com/raw/HLYwSXUG", true))()
end)
local fun = main:CreateFolder("Fun")
fun:Label("Fun Things",Color3.fromRGB(38,38,38),Color3.fromRGB(155, 251, 0))
fun:Button("Fake Gun",function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/e3yPYJFd'),true))()
end)
fun:Button("Tornado",function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/YipNeYjM'),true))()
end)
local autofarm = main:CreateFolder("Autofarm")
autofarm:Label("Anti-AFk Actived")
autofarm:Button("Autofarm",function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/sAmpcUhH'),true))()
	local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)
warn "Anti-Afk Run"
end)

local f = main:CreateFolder("Credits")

f:Label("Created By \nTheJoaqun#7239",{
    TextSize = 15;
    TextColor = Color3.fromRGB(155, 251, 0); 
    BgColor = Color3.fromRGB(43, 43, 43);
})
f:Label("Co-Creator By \nClaudiocelular#9200",{
    TextSize = 15;
    TextColor = Color3.fromRGB(155, 251, 0); 
    BgColor = Color3.fromRGB(43, 43, 43);
})
f:Label("https://discord.gg/5aausdPbtQ",{
    TextSize = 17;
    TextColor = Color3.fromRGB(155, 251, 0);
    BgColor = Color3.fromRGB(43, 43, 43);
}) 
f:Button("Copy Discord Link",function()
    setclipboard("https://discord.gg/5aausdPbtQ")
end)

wait(1)
local function callback(text)
    if text == "Yes" then
    print("error")
    elseif text == "No" then
    print("error")
    end
end

local bindableFunction = Instance.new("BindableFunction")

game.StarterGui:SetCore("SendNotification", {
    Title = "XSHub";
    Text = "Welcome TO XSHub";
    Icon = "rbxassetid://5936401041";
    Duration = "10";
    callbakc = bindableFunction;
})

