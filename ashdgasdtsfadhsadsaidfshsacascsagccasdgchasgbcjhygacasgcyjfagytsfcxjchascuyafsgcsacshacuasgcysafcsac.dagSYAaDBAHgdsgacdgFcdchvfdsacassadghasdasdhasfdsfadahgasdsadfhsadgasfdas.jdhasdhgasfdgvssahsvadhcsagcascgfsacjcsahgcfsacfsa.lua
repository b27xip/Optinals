_G.seter = 32324
if _G.id == 1323 then
    _G.seter = 7632373235273621372735273521763521763527163551365213527
end

wait(0.1)
if _G.seter == 7632373235273621372735273521763521763527163551365213527 then -- prison life
_G.ToggleColor = Color3.fromRGB(255,0,0)
_G.ButtonColor = Color3.fromRGB(0,255,0)
_G.SliderColor = Color3.fromRGB(0,0,255)
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/TheJoaqun/UI-Librarys/UI-Library/UI%20Librarys%20Loadstring/WallyV3.lua')))()
local w = library:CreateWindow("Optinals")
local b = w:CreateFolder("Features")
local killaa = false
local noclip = false
game:GetService('RunService').Stepped:connect(function()
    if noclip then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end
end)
b:Label("Functions",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(0,216,111); -- Self Explaining
    BgColor = Color3.fromRGB(38,38,38); -- Self Explaining
}) 
b:Toggle("Kill Aura",function(bool)
    shared.toggle = bool
    killaa = bool
end)

b:Toggle("Noclip",function(bool)
    shared.toggle = bool
    noclip = bool
end)

b:Slider("WalkSpeed",{
    min = 16;
    max = 160;
    precise = true;
},function(ws)
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = ws
end)

b:Slider("JumpPower",{
    min = 50;
    max = 180;
    precise = true;
},function(jp)
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = jp
end)


b:Button("ESP",function()
    local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
    ESP:Toggle(true)
end)

b:Button("Aimbot",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/uCSJY8we", true))()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Optinals";
        Text = "Press Ctrl To Toggle Aimlock on and off. ";
    })
end)

b:Button("Invisible",function()
    local player = game.Players.LocalPlayer
    local position     = player.Character.HumanoidRootPart.Position
    wait(0.1)
    player.Character:MoveTo(position + Vector3.new(0, 1000000, 0))
    wait(0.1)
    humanoidrootpart = player.Character.HumanoidRootPart:clone()
    wait(0.1)
    player.Character.HumanoidRootPart:Destroy()
    humanoidrootpart.Parent = player.Character
    player.Character:MoveTo(position)
    wait()
    game.Players.LocalPlayer.Character.Torso.Transparency = 1
    game.Players.LocalPlayer.Character.Head.Transparency  = 1
    game.Players.LocalPlayer.Character["Left Arm"].Transparency = 1
    game.Players.LocalPlayer.Character["Right Arm"].Transparency = 1
    game.Players.LocalPlayer.Character["Left Leg"].Transparency = 1
    game.Players.LocalPlayer.Character["Right Leg"].Transparency = 1
    game.Players.LocalPlayer.Character.Humanoid:RemoveAccessories()
    game.Players.LocalPlayer.Character.Head.face:Remove()
end)

b:Button("Arrest Crims",function()
    local Player = game.Players.LocalPlayer
    local cpos = Player.Character.HumanoidRootPart.CFrame
    for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
    if v.Name ~= Player.Name then
    local i = 10
        repeat
        wait()
        i = i-1
        game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
        Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
        until i == 0
    end
    end
    Player.Character.HumanoidRootPart.CFrame = cpos
end)

b:Button("Team Police",function()
    game.Workspace.Remote.TeamEvent:FireServer("Bright blue")
end)

b:Button("Team Inmate",function()
    game.Workspace.Remote.TeamEvent:FireServer("Bright orange")
end)

b:Button("Team Neutral",function()
    game.Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end)

b:Button("Team Crim",function()
    local Apart = Instance.new("Part")

    Apart.Name = "PlrsPos"
    Apart.Parent = workspace
    Apart.Anchored = true
    Apart.Archivable = true
    Apart.CFrame = CFrame.new(9e99, 9e99, 9e99)
    
    LCS = game.Workspace["Criminals Spawn"].SpawnLocation
        
        wait(0.2)
        
        Apart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        Apart.Transparency = 1
        Apart.Anchored = true
        Apart.CanCollide = false
        
        istptoplr = true
        wait(0.004)
                
                
                LCS = game.Workspace["Criminals Spawn"].SpawnLocation
    
                LCS.CanCollide = false
                LCS.Size = Vector3.new(51.05, 24.12, 54.76)
                LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                LCS.Transparency = 1
            
            wait(2)
            
                  istptoplr = false
            
            wait(0.04)
            
                    if istptoplr == false then
                    LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                    LCS.Size = Vector3.new(6, 0.2, 6)
                    LCS.Transparency = 0
                istptoplr = false
            end
end)

b:Button("Click Arrest",function()
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.Button1Down:connect(function()
        local obj = mouse.Target
        local response = game.Workspace.Remote.arrest:InvokeServer(obj)
    end)
end)

b:Button("SuperPunch",function()
    mainRemotes = game.ReplicatedStorage meleeRemote = mainRemotes['meleeEvent'] mouse = game.Players.LocalPlayer:GetMouse() punching = false cooldown = false function punch() cooldown = true local part = Instance.new("Part", game.Players.LocalPlayer.Character) part.Transparency = 1 part.Size = Vector3.new(5, 2, 3) part.CanCollide = false local w1 = Instance.new("Weld", part) w1.Part0 = game.Players.LocalPlayer.Character.Torso w1.Part1 = part w1.C1 = CFrame.new(0,0,2) part.Touched:connect(function(hit) if game.Players:FindFirstChild(hit.Parent.Name) then local plr = game.Players:FindFirstChild(hit.Parent.Name) if plr.Name ~= game.Players.LocalPlayer.Name then part:Destroy() for i = 1,100 do meleeRemote:FireServer(plr) end end end end) wait(1) cooldown = false part:Destroy() end mouse.KeyDown:connect(function(key) if cooldown == false then if key:lower() == "f" then punch() end end end)
end)

b:Button("Give Guns",function()
    for i,v in pairs(Workspace.Prison_ITEMS.giver:GetChildren()) do
        print(Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP))
    end
end)

b:Button("Fast Respawn",function()
    game:GetService("Workspace").Remote.loadchar:InvokeServer("\66\114\111\121\111\117\98\97\100\100")
end)

b:Button("TP To: Yard",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(779.87,98,2458.93)
end)

b:Button("TP To: Crim Base",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943.46,94.13,2063.63)
end)

b:Button("TP To: Prison",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.77,100,2379.07)
end)

b:Button("Destroy Doors",function()
    game.Workspace.Doors:Destroy()
end)

b:Label("GUIS",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(0,216,111); -- Self Explaining
    BgColor = Color3.fromRGB(38,38,38); -- Self Explaining
}) 

b:Button("Infinite Yeld FE",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

b:Button("Prevail X",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/mHfK0Xk4", true))()
end)

b:Label("UI Settings",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(0,216,111); -- Self Explaining
    BgColor = Color3.fromRGB(38,38,38); -- Self Explaining
}) 

b:DestroyGui()


b:Label("Made By: b27xip",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(0,216,111); -- Self Explaining
    BgColor = Color3.fromRGB(38,38,38); -- Self Explaining
}) 

while wait() do
	if killaa == true then
		for i,v in pairs(game.Players:GetChildren()) do
			if v.Name ~= game.Players.LocalPlayer.Name then
				local tbl_main = {
					v
				}
				game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(tbl_main))
			end
		end
	end

    if noclip == true then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end

end
end
