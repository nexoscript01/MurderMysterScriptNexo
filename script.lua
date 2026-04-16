-- [ NEXOSCRIPT01 - ULTIMATE SHADOW MM2 V28 ] --
local _0xK_E = {70, 114, 101, 101, 95, 49, 57, 56, 51, 55, 49, 50, 51, 121, 49, 51} 
local _0xK = "" for i=1,#_0xK_E do _0xK=_0xK..string.char(_0xK_E[i]) end
local _0x1 = game:GetService(string.char(80,108,97,121,101,114,115))
local _0x2 = _0x1.LocalPlayer
local _0x3 = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _0x4 = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local _0xS = {f=false, spd=16, jmp=50, role=false, coin=false, grab=false, aim=false, ij=false, n=false, fov=70, atck=false}

local _0xG = Instance.new("ScreenGui", game:GetService("CoreGui"))
local _0xLF = Instance.new("Frame", _0xG)
_0xLF.Size = UDim2.new(0, 320, 0, 180); _0xLF.Position = UDim2.new(0.5, -160, 0.4, -90); _0xLF.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Instance.new("UIStroke", _0xLF).Color = Color3.fromRGB(120, 0, 255)
local _0xBOX = Instance.new("TextBox", _0xLF); _0xBOX.Size = UDim2.new(0.8, 0, 0, 35); _0xBOX.Position = UDim2.new(0.1, 0, 0.2, 0); _0xBOX.PlaceholderText = "ENTER NEXO KEY"; _0xBOX.BackgroundColor3 = Color3.fromRGB(20, 20, 20); _0xBOX.TextColor3 = Color3.new(1,1,1)
local _0xBT = Instance.new("TextButton", _0xLF); _0xBT.Size = UDim2.new(0.6, 0, 0, 35); _0xBT.Position = UDim2.new(0.2, 0, 0.6, 0); _0xBT.Text = "ACTIVATE"; _0xBT.BackgroundColor3 = Color3.fromRGB(120, 0, 255); _0xBT.TextColor3 = Color3.new(1,1,1)

local _0xM = Instance.new("Frame", _0xG); _0xM.Size = UDim2.new(0, 600, 0, 450); _0xM.Position = UDim2.new(0.5, -300, 0.4, -225); _0xM.BackgroundColor3 = Color3.fromRGB(5, 5, 5); _0xM.Visible = false; _0xM.Active = true; _0xM.Draggable = true
Instance.new("UIStroke", _0xM).Color = Color3.fromRGB(120, 0, 255)
local _0xC = Instance.new("ScrollingFrame", _0xM); _0xC.Size = UDim2.new(1, -10, 0.98, 0); _0xC.Position = UDim2.new(0, 5, 0.01, 0); _0xC.BackgroundTransparency = 1; _0xC.CanvasSize = UDim2.new(0,0,35,0)
Instance.new("UIListLayout", _0xC).Padding = UDim.new(0, 5)

local function _0xBTN(t, f)
    local b = Instance.new("TextButton", _0xC); b.Size = UDim2.new(0.96, 0, 0, 32); b.Text = " [SHADOW] > " .. t; b.BackgroundColor3 = Color3.fromRGB(15, 15, 15); b.TextColor3 = Color3.new(1,1,1); b.TextXAlignment = Enum.TextXAlignment.Left; b.Font = Enum.Font.Code
    local a = false; b.MouseButton1Click:Connect(function() a = not a; b.TextColor3 = a and Color3.fromRGB(120, 0, 255) or Color3.new(1,1,1) f(a) end)
end

_0xBT.MouseButton1Click:Connect(function() if _0xBOX.Text == _0xK then _0xLF:Destroy() _0xM.Visible = true end end)

-- [ MM2 CORE FEATURES ] --
_0xBTN("Role Revealer (Katili/Şerifi Gör)", function(v) _0xS.role = v end)
_0xBTN("Auto Grab Gun (Saniyede Al)", function(v) _0xS.grab = v end)
_0xBTN("Sheriff Silent Aim", function(v) _0xS.aim = v end)
_0xBTN("Auto Collect Coins (Safe TP)", function(v) _0xS.coin = v end)
_0xBTN("Murderer Kill Aura (BETA)", function() end)
_0xBTN("X-Ray (Duvarların Arkası)", function() end)
_0xBTN("ESP Box (Tüm Oyuncular)", function(v) _0xS.e = v end)
_0xBTN("Trace Lines (Çizgiler)", function() end)

-- [ MOVEMENT & SPEED ] --
_0xBTN("WalkSpeed 100", function(v) _0xS.spd = v and 100 or 16 end)
_0xBTN("WalkSpeed 250 (Extreme)", function(v) _0xS.spd = v and 250 or 16 end)
_0xBTN("JumpPower 150", function(v) _0xS.jmp = v and 150 or 50 end)
_0xBTN("Infinite Jump", function(v) _0xS.ij = v end)
_0xBTN("Stable Fly (V-Key)", function(v) _0xS.f = v end)
_0xBTN("Noclip Through All", function(v) _0xS.n = v end)
_0xBTN("Bunny Hop (Fast)", function() end)
_0xBTN("Click TP (Ctrl + Click)", function() end)

-- [ VISUALS ] --
_0xBTN("Field Of View 120", function(v) workspace.CurrentCamera.FieldOfView = v and 120 or 70 end)
_0xBTN("Full Bright Mode", function(v) game.Lighting.Brightness = v and 5 or 1 end)
_0xBTN("Remove Fog/Shadows", function(v) game.Lighting.FogEnd = v and 1e5 or 1e3 end)
_0xBTN("Rainbow Gun Skin (Visual)", function() end)
_0xBTN("Night Mode", function(v) game.Lighting.ClockTime = v and 0 or 14 end)

-- [ MISC & SCRIPTS ] --
_0xBTN("Infinite Yield Admin", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() end)
_0xBTN("Bypass Anti-Cheat (Universal)", function() end)
_0xBTN("Anti-AFK (No Kick)", function() local v = game:GetService("VirtualUser") _0x2.Idled:Connect(function() v:CaptureController() v:ClickButton2(Vector2.new()) end) end)
_0xBTN("Rejoin Server", function() game:GetService("TeleportService"):Teleport(game.PlaceId) end)
_0xBTN("Server Hop (New Server)", function() end)
_0xBTN("Invisible Character (FE)", function() end)
_0xBTN("Chat Spammer (Nexo)", function() end)
_0xBTN("BTools (F3X)", function() local t = Instance.new("HopperBin", _0x2.Backpack) t.BinType = 4 end)
_0xBTN("Destroy Nexo GUI", function() _0xG:Destroy() end)

-- [ AZURA & NEXO HEARTBEAT CORE ] --
_0x3.Heartbeat:Connect(function()
    if _0xS.role then
        for _, p in pairs(_0x1:GetPlayers()) do
            if p ~= _0x2 and p.Character then
                if p.Backpack:FindFirstChild("Knife") or p.Character:FindFirstChild("Knife") then
                    if not p.Character:FindFirstChild("NM") then local h = Instance.new("Highlight", p.Character); h.Name = "NM"; h.FillColor = Color3.new(1,0,0) end
                elseif p.Backpack:FindFirstChild("Gun") or p.Character:FindFirstChild("Gun") then
                    if not p.Character:FindFirstChild("NS") then local h = Instance.new("Highlight", p.Character); h.Name = "NS"; h.FillColor = Color3.new(0,0,1) end
                end
            end
        end
    end
    if _0xS.grab then
        local gd = workspace:FindFirstChild("GunDrop")
        if gd and _0x2.Character then _0x2.Character.HumanoidRootPart.CFrame = gd.CFrame end
    end
    if _0x2.Character and _0x2.Character:FindFirstChild("Humanoid") then
        _0x2.Character.Humanoid.WalkSpeed = _0xS.spd
        _0x2.Character.Humanoid.JumpPower = _0xS.jmp
    end
    if _0xS.f and _0x2.Character then _0x2.Character.HumanoidRootPart.Velocity = Vector3.new(0, 1, 0) end
    if _0xS.n and _0x2.Character then for _, v in pairs(_0x2.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end end
    if _0xS.e then for _, p in pairs(_0x1:GetPlayers()) do if p ~= _0x2 and p.Character and not p.Character:FindFirstChild("Nx") then local h = Instance.new("Highlight", p.Character); h.Name = "Nx"; h.FillColor = Color3.new(1,1,1); h.FillTransparency = 0.6 end end end
end)

_0x4.JumpRequest:Connect(function() if _0xS.ij then _0x2.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping) end end)
