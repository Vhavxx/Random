local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Natural Disaster Survival") -- Creates the window

local Farm = w:CreateFolder("Farm")

Farm:Label("LST = Leave To Stop",{
    TextSize = 15; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

Farm:Button("Auto Farm(LTS)",function()
while true do
    wait(5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-290, 178, 379)
    game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
end)

local tp = w:CreateFolder("TP")


tp:Button("TO Map",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(106, 46, 3)
end)
tp:Button("TP TO SPAWN",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260.226776, 193.849884, 318.382538) + Vector3.new(1,0,0)
end)


local Player = w:CreateFolder("Local Players") -- Creates the folder(U will put here your buttons,etc)

Player:Label("REMOVE DEMAGE Not Remove Disastrer Demage",{
    TextSize = 13; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 
Player:Label("Need Active Remove Demage",{
    TextSize = 13; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 
Player:Slider("WalkSpeed",{
    min = 16; -- min value of the slider
    max = 1000; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

Player:Slider("JumpPower",{
    min = 50; -- min value of the slider
    max = 1500; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

Player:Button("REMOVE DEMAGE",function()
game.Players.LocalPlayer.Character.FallDamageScript:Destroy()
end)
Player:Button("Reset",function ()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

local Credits = w:CreateFolder("UI Setting/Credits")

Credits:Label("Made By TheJoaqun#7239\nCo-Creator Claudiocelular#9200",{
    TextSize = 14;
    TextColor = Color3.fromRGB(255,255,255); 
    BgColor = Color3.fromRGB(69,69,69);
}) 
Credits:Button("Copy Discord Link",function()
    setclipboard("https://discord.gg/5aausdPbtQ")
end)

Credits:DestroyGui()


game.StarterGui:SetCore("SendNotification", {
    Title = "XSHub";
    Text = "Welcome TO XSHub";
    Icon = "rbxassetid://5936401041";
    Duration = "10";
    callbakc = bindableFunction;
})