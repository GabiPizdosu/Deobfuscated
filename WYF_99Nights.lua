--[[
hey wayfer can we write better code pls
    renamed some variables & functions
    
        FRAG.CC
    https://discord.gg/GCbRmCs5as 
        best hub

]]
if not pnZVGWqXizu_oQa then
    MoonSec_StringsHiddenAttr = true;
    if _PamaJBgSCbFn == "This file was protected with MoonSec V3" or true then
        function start()
            local Players = game:GetService("Players");
            local LocalPlayer = Players.LocalPlayer;
            local workspace = game:GetService("Workspace")
            local CurrentCamera = workspace.CurrentCamera;
            local ReplicatedStorage = game:GetService("ReplicatedStorage");
            local RunService = game:GetService("RunService");
            local l_InnerTouchZone_0 = workspace.Map.Campground.MainFire.InnerTouchZone;
            local l_DashedLine_0 = workspace.Map.Campground.Scrapper.DashedLine;
            --local v28 = (not not syn and l_clonefunction_0(syn.request) or http and l_clonefunction_0(http.request) or l_clonefunction_0(http_request) or fluxus and l_clonefunction_0(fluxus.request) or l_clonefunction_0(request))({
            --    Url = "https://discord.com/api/webhooks/1405731801732874351/lZS_unNPEYMb7LQcTldHiAY70gprUn0oJcaUPDkC6XpyKzccS7MuvENDzB4Wj2mAdTZG", 
            --    Method = "POST", 
            --    Headers = {
            --        ["Content-type"] = "application/json"
            --    }, 
            --    Body = v19(l_HttpService_0, {
            --        content = "", 
            --        embeds = {
            --            {
            --                title = "99 Nights", 
            --                description = "", 
            --                type = "rich", 
            --                color = tonumber(8914952), 
            --                fields = {
            --                    {
            --                        name = "Hardware ID:", 
            --                        value = game:GetService("RbxAnalyticsService"):GetClientId(), 
            --                        inline = true
            --                    }, 
            --                    {
            --                        name = "Profile:", 
            --                        value = "https://www.roblox.com/users/" .. l_LocalPlayer_0.UserId .. "/profile", 
            --                        inline = true
            --                    }, 
            --                    {
            --                        name = "Username:", 
            --                        value = l_LocalPlayer_0.Name, 
            --                        inline = true
            --                    }, 
            --                    {
            --                        name = "Account Age:", 
            --                        value = "Days: " .. l_LocalPlayer_0.AccountAge, 
            --                        inline = true
            --                    }
            --                }
            --            }
            --        }
            --    })
            --});
            local l_RequestHotbarItem_0 = ReplicatedStorage:WaitForChild("RemoteEvents"):WaitForChild("RequestHotbarItem");
            local l_RequestConsumeItem_0 = ReplicatedStorage:WaitForChild("RemoteEvents"):WaitForChild("RequestConsumeItem");
            local function v35(v32)
                -- upvalues: l_CurrentCamera_0 (ref)
                local v33, v34 = CurrentCamera:WorldToViewportPoint(v32);
                return Vector2.new(v33.X, v33.Y), v34, v33.Z;
            end;
            local function MakeSquare(Color)
                local v37 = Drawing.new("Square");
                v37.Visible = false;
                v37.Color = not not Color and Color.Color or Color3.fromRGB(255, 255, 255);
                v37.Transparency = 1;
                v37.Thickness = 1;
                v37.Filled = false;
                return v37;
            end;
            local function MakeText(Color)
                local v40 = Drawing.new("Text");
                v40.Visible = false;
                v40.Color = not not Color and Color.Color or Color3.fromRGB(255, 255, 255);
                v40.Transparency = 1;
                v40.Font = 2;
                v40.Center = true;
                v40.OutlineColor = Color3.new(0, 0, 0);
                v40.Size = 15;
                v40.Outline = true;
                return v40;
            end;
            local function MakeCircle(Color)
                local v43 = Drawing.new("Circle");
                v43.Visible = false;
                v43.Color = not not Color and Color.Color or Color3.fromRGB(255, 255, 255);
                v43.Transparency = 1;
                v43.Thickness = 1;
                v43.Filled = true;
                v43.Radius = 2;
                return v43;
            end;
            local function GetHumanoidRootPart()
                if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    return;
                else
                    return LocalPlayer.Character.HumanoidRootPart;
                end;
            end;
            local function v52(arg_PrimaryPart)
                local v47 = false;
                local l_Part_0 = workspace.Map.Boundaries.Fog:FindFirstChild("Part");
                local l_HumanoidRootPart_0 = GetHumanoidRootPart();
                local v50 = nil;
                if arg_PrimaryPart and l_Part_0 then
                    v50 = (l_Part_0 and l_HumanoidRootPart_0 and (l_Part_0.Position - l_HumanoidRootPart_0.Position).Magnitude) >= (arg_PrimaryPart.Position - l_HumanoidRootPart_0.Position).Magnitude;
                else
                    v50 = nil;
                end;
                local v51;
                if v50 == true then
                    v51 = true;
                    v47 = v51;
                end;
                if not v47 then
                    if v50 ~= true then
                        v51 = false;
                        v51 = true;
                    else
                        v51 = true;
                    end;
                end;
                v47 = false;
                return v51;
            end;
            local _GetItem = function(Argument) --unused
                for _, Item in pairs(Players.LocalPlayer.Inventory:GetChildren()) do
                    if Item.Name:match(Argument) then
                        return Item;
                    end;
                end;
            end;
            local function GetSack()
                -- upvalues: l_Players_0 (ref)
                for _, v58 in pairs(Players.LocalPlayer.Inventory:GetChildren()) do
                    if v58.Name:match("Sack") then
                        return v58;
                    end;
                end;
            end;
            local function BringItem(Item, Pos)
                -- upvalues: v52 (ref)
                if Item.PrimaryPart and v52(Item.PrimaryPart) and not Item.Name:match("Chest") then
                    ReplicatedStorage:WaitForChild("RemoteEvents"):WaitForChild("RequestStartDraggingItem"):FireServer(unpack({
                        Item
                    }));
                    task.wait();
                    Item:SetPrimaryPartCFrame(Pos);
                    task.wait();
                    if Item then
                        ReplicatedStorage:WaitForChild("RemoteEvents"):WaitForChild("StopDraggingItem"):FireServer(unpack({
                            Item
                        }));
                    end;
                end;
            end;
            local function EquipItem(Item)
                if Item.PrimaryPart and v52(Item.PrimaryPart) then
                    pcall(function()
                        l_RequestHotbarItem_0:InvokeServer(unpack({
                            Item
                        }));
                    end);
                end;
            end;
            local function EatFood(arg_food)
                if arg_food.PrimaryPart and v52(arg_food.PrimaryPart) then
                    l_RequestConsumeItem_0:InvokeServer(unpack({
                        arg_food
                    }));
                end;
            end;
            local function GodMode()
                ReplicatedStorage:WaitForChild("RemoteEvents"):WaitForChild("DamagePlayer"):FireServer(-math.huge);
            end;
            local v68 = nil;
            local function idk(arg)
                if not arg then
                    local v70 = GetHumanoidRootPart();
                    if v70 then
                        for _, v72 in pairs(workspace.Items:GetChildren()) do
                            if v72.Name ~= "Carrot" and v72.Name ~= "Berry" then
                                BringItem(v72, v70.CFrame);
                            end;
                        end;
                    end;
                else
                    if not v68 and arg == l_InnerTouchZone_0.CFrame then
                        v68 = arg;
                    end;
                    for _, v74 in pairs(workspace.Items:GetChildren()) do
                        if v74.Name ~= "Carrot" and v74.Name ~= "Berry" then
                            BringItem(v74, v68 and v68 or arg);
                        end;
                    end;
                end;
            end;
            local function v78()
                -- upvalues: v62 (ref), l_DashedLine_0 (ref)
                for _, v77 in pairs(workspace.Items:GetChildren()) do
                    if v77.Name == "Log" or v77.Name == "Chair" then
                        BringItem(v77, l_DashedLine_0.CFrame + l_DashedLine_0.CFrame.UpVector * 3);
                    end;
                end;
            end;
            local function v81()
                -- upvalues: v62 (ref), l_DashedLine_0 (ref)
                for _, v80 in pairs(workspace.Items:GetChildren()) do
                    if v80:GetAttribute("Scrappable") then
                        BringItem(v80, l_DashedLine_0.CFrame + l_DashedLine_0.CFrame.UpVector * 3);
                    end;
                end;
            end;
            local function v84()
                if GetHumanoidRootPart() then
                    for _, v83 in pairs(workspace.Items:GetChildren()) do
                        if v83:GetAttribute("Interaction") == "Tool" then
                            EquipItem(v83);
                        end;
                    end;
                end;
            end;
            local function v87()
                if GetHumanoidRootPart() then
                    for _, v86 in pairs(workspace.Items:GetChildren()) do
                        if v86:GetAttribute("Interaction") == "Armour" then
                            ReplicatedStorage:WaitForChild("RemoteEvents"):WaitForChild("RequestEquipArmour"):InvokeServer(unpack({
                                v86
                            }));
                        end;
                    end;
                end;
            end;
            local function v90()
                -- upvalues: v45 (ref), v66 (ref)
                if GetHumanoidRootPart() then
                    for _, v89 in pairs(workspace.Items:GetChildren()) do
                        if v89.Name:match("Ammo") then
                            EatFood(v89);
                        end;
                    end;
                end;
            end;
            local function v93()
                -- upvalues: v45 (ref)
                if GetHumanoidRootPart() then
                    for I, Item in pairs(workspace.Items:GetChildren()) do
                        if Item.Name == "Coin Stack" and Item.PrimaryPart then
                            ReplicatedStorage:WaitForChild("RemoteEvents"):WaitForChild("RequestCollectCoints"):InvokeServer(unpack({
                                Item
                            }));
                        end;
                    end;
                end;
            end;
            local function v96()
                -- upvalues: v45 (ref)
                if GetHumanoidRootPart() then
                    for _, v95 in pairs(workspace.Items:GetChildren()) do
                        if v95.Name == "Diamond" and v95.PrimaryPart then
                            ReplicatedStorage:WaitForChild("RemoteEvents"):WaitForChild("RequestTakeDiamonds"):FireServer(unpack({
                                v95
                            }));
                        end;
                    end;
                end;
            end;
            local _ = function()
                local HumanoidRootPart = GetHumanoidRootPart();
                local l_Sack_0 = GetSack();
                if HumanoidRootPart then
                    for _, Kid in pairs(workspace.Characters:GetChildren()) do
                        if Kid.Name:match("Lost Child") and Kid:GetAttribute("Lost") then
                            local l_v100_FirstChild_0 = Kid:FindFirstChild("ProximityInteraction", true);
                            if l_v100_FirstChild_0 then
                                fireproximityprompt(l_v100_FirstChild_0);
                            end;
                            task.wait();
                            Kid:SetPrimaryPartCFrame(l_InnerTouchZone_0.CFrame + l_InnerTouchZone_0.CFrame.UpVector * 5 + l_InnerTouchZone_0.CFrame.RightVector * -20);
                            task.wait();
                            ReplicatedStorage:WaitForChild("RemoteEvents"):WaitForChild("RequestBagDropItem"):FireServer(unpack({
                                l_Sack_0, 
                                Kid
                            }));
                        end;
                    end;
                end;
            end;
            local function v107()
                if GetHumanoidRootPart() then
                    for _, Food in pairs(workspace.Items:GetChildren()) do
                        local v105 = false;
                        local function v106()
                            v105 = true;
                        end;
                        if Food:GetAttribute("RestoreHunger") and not Food:GetAttribute("RestoreHealth") then
                            if LocalPlayer:GetAttribute("Hunger") >= 200 then
                                v106();
                            end;
                            EatFood(Food);
                        end;
                        if v105 then
                            break;
                        else

                        end;
                    end;
                end;
            end;
            local function v110(v108)
                local l_v108_FirstChild_0 = v108:FindFirstChild("ProximityInteraction", true);
                if l_v108_FirstChild_0 then
                    fireproximityprompt(l_v108_FirstChild_0);
                end;
            end;
            local function v113()
                -- upvalues: v110 (ref)
                for _, v112 in pairs(workspace.Items:GetChildren()) do
                    if v112.Name:match("Chest") then
                        v110(v112);
                    end;
                end;
            end;
            local function TeleportToCamp()
                local v114 = GetHumanoidRootPart();
                if v114 then
                    v114.CFrame = l_InnerTouchZone_0.CFrame + l_InnerTouchZone_0.CFrame.UpVector * 5;
                end;
            end;
            local function TeleportToCastle()
                local HumanoidRootPart = GetHumanoidRootPart();
                if HumanoidRootPart and workspace.Map.Landmarks:FindFirstChild("Stronghold") and workspace.Map.Landmarks.Stronghold:FindFirstChild("Sign", true) then
                    HumanoidRootPart.CFrame = workspace.Map.Landmarks.Stronghold:FindFirstChild("Sign", true):GetPivot();
                end;
            end;
            local function GotoLostChild()
                local HumanoidRootPart = GetHumanoidRootPart();
                if HumanoidRootPart then
                    for _, v120 in pairs(workspace.Characters:GetChildren()) do
                        if v120.Name:match("Lost Child") and v120:GetAttribute("Lost") then
                            HumanoidRootPart.CFrame = v120.HumanoidRootPart.CFrame + v120.HumanoidRootPart.CFrame.UpVector * 5;
                        end;
                    end;
                end;
            end;
            local function BringTrees()
                local HumanoidRootPart = GetHumanoidRootPart();
                if HumanoidRootPart then
                    for _, Tree in pairs(workspace.Map.Landmarks:GetChildren()) do
                        if Tree.PrimaryPart and Tree.Name:match("Small Tree") and v52(Tree.PrimaryPart) then
                            Tree:SetPrimaryPartCFrame(HumanoidRootPart:GetPivot() + HumanoidRootPart:GetPivot().LookVector * 5);
                        end;
                    end;
                end;
            end;
            local esp_table = {
                PlayersEsp = {
                    Enabled = true, 
                    Color = Color3.new(255, 255, 255)
                }, 
                NpcsEsp = {
                    Enabled = true, 
                    BunniesEsp = {
                        Color = Color3.new(202, 203, 209)
                    }, 
                    WolfsEsp = {
                        Color = Color3.new(64, 66, 74)
                    }, 
                    AWolfsEsp = {
                        Color = Color3.new(42, 43, 48)
                    }, 
                    BearsEsp = {
                        Color = Color3.new(161, 119, 85)
                    }, 
                    ArcFoxsEsp = {
                        Color = Color3.new(232, 236, 192)
                    }, 
                    PolBearsEsp = {
                        Color = Color3.new(202, 203, 209)
                    }, 
                    FrogsEsp = {
                        Color = Color3.new(31, 128, 29)
                    }, 
                    LChildsEsp = {
                        Color = Color3.new(139, 128, 0)
                    }, 
                    CultistsEsp = {
                        Color = Color3.new(255, 0, 0)
                    }, 
                    TradersEsp = {
                        Color = Color3.new(255, 255, 0)
                    }
                }, 
                bypsSprint, 
                ItemsEsp = true, 
                ToolsEsp = true, 
                ChestsEsp = true, 
                CurrenciesEsp = true, 
                ArmoursEsp = true, 
                AutoOpenChests = true, 
                AutoTakeTools = true, 
                AutoTakeGears = true, 
                AutoCollectPrec = true, 
                AutoFillHunger = false, 
                AutoSaveChild = false, 
                noClipping
            };
            local function v143(Player_Instance)
                local v128 = {
                    box = MakeSquare(esp_table.PlayersEsp)
                };
                local v129 = {
                    name = MakeText(esp_table.PlayersEsp)
                };
                local v130 = nil;
                v130 = RunService.RenderStepped:Connect(function()
                    if esp_table.PlayersEsp.Enabled and Player_Instance.Character and Player_Instance.Character:FindFirstChildOfClass("Humanoid") and Player_Instance.Character:FindFirstChild("Head") and Player_Instance.Character:FindFirstChild("HumanoidRootPart") and Player_Instance.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
                        local v131 = Player_Instance.Character and Player_Instance.Character:FindFirstChild("HumanoidRootPart");
                        local v132 = Player_Instance.Character and Player_Instance.Character:FindFirstChild("Head");
                        local v133, v134, v135 = v35(v131.Position);
                        local v136 = v132 and v35(v132.Position + Vector3.new(0, 0.5, 0));
                        local v137 = v131 and v35(v131.Position - Vector3.new(0, 3, 0));
                        if not v134 then
                            v128.box.Visible = false;
                            v129.name.Visible = false;
                        else
                            v128.box.Size = Vector2.new(1000 / v135, v136.Y - v137.Y);
                            v128.box.Position = Vector2.new(v133.X - v128.box.Size.X / 2, v133.Y - v128.box.Size.Y / 2);
                            v129.name.Text = Player_Instance.Name;
                            v129.name.Position = Vector2.new(v128.box.Position.X + v128.box.Size.X / 2, v128.box.Position.Y + v128.box.Size.Y - 20);
                            v128.box.Color = esp_table.PlayersEsp.Color;
                            v129.name.Color = esp_table.PlayersEsp.Color;
                            v128.box.Visible = true;
                            v129.name.Visible = true;
                        end;
                    else
                        v128.box.Visible = false;
                        v129.name.Visible = false;
                    end;
                end);
                Players.PlayerRemoving:Connect(function(v138)
                    -- upvalues: v127 (ref), v128 (ref), v129 (ref), v130 (ref)
                    if v138 == Player_Instance then
                        for _, v140 in pairs(v128) do
                            if v140 and v140.Remove then
                                v140:Remove();
                            end;
                        end;
                        for _, v142 in pairs(v129) do
                            if v142 and v142.Remove then
                                v142:Remove();
                            end;
                        end;
                        if v130 then
                            v130:Disconnect();
                            v130 = nil;
                        end;
                    end;
                end);
            end;
            for _, v145 in pairs(Players:GetPlayers()) do
                if v145 ~= LocalPlayer then
                    v143(v145);
                end;
            end;
            Players.PlayerAdded:Connect(v143);
            local function v162(v146)
                -- upvalues: v44 (ref), v41 (ref), v35 (ref), l_RunService_0 (ref), v126 (ref)
                local l_v146_Attribute_0 = v146:GetAttribute("Interaction");
                local v148 = {
                    circle = MakeCircle()
                };
                local v149 = {
                    name = MakeText(), 
                    info = MakeText()
                };
                local function v155(v150)
                    -- upvalues: v146 (ref), v35 (ref), v148 (ref), v149 (ref)
                    if v150 then
                        local v151 = nil;
                        local v152 = nil;
                        if v146.PrimaryPart then
                            local v153, v154 = v35(v146.PrimaryPart.Position);
                            v152 = v154;
                            v151 = v153;
                        end;
                        if not v152 then
                            v148.circle.Visible = false;
                            v149.name.Visible = false;
                            v149.info.Visible = false;
                        else
                            v148.circle.Position = v151;
                            v149.name.Position = Vector2.new(v148.circle.Position.X, v148.circle.Position.Y - 20);
                            v149.info.Position = Vector2.new(v148.circle.Position.X, v148.circle.Position.Y - 35);
                            v149.name.Text = v146.Name;
                            v148.circle.Color = v146.PrimaryPart.Color;
                            v149.name.Color = v146.PrimaryPart.Color;
                            v149.info.Color = v146.PrimaryPart.Color;
                            v148.circle.Visible = true;
                            v149.name.Visible = true;
                            v149.info.Visible = true;
                        end;
                    else
                        v148.circle.Visible = false;
                        v149.name.Visible = false;
                        v149.info.Visible = false;
                    end;
                end;
                local v156 = nil;
                v156 = RunService.RenderStepped:Connect(function()
                    -- upvalues: l_v146_Attribute_0 (ref), v155 (ref), v126 (ref)
                    if l_v146_Attribute_0 ~= "Item" then
                        if l_v146_Attribute_0 ~= "Tool" then
                            if l_v146_Attribute_0 == "ItemChest" then
                                v155(esp_table.ChestsEsp);
                            elseif l_v146_Attribute_0 ~= "Currency" then
                                if l_v146_Attribute_0 == "Armour" then
                                    v155(esp_table.ArmoursEsp);
                                end;
                            else
                                v155(esp_table.CurrenciesEsp);
                            end;
                        else
                            v155(esp_table.ToolsEsp);
                        end;
                    else
                        v155(esp_table.ItemsEsp);
                    end;
                end);
                v146.Parent.ChildRemoved:Connect(function(v157)
                    -- upvalues: v146 (ref), v148 (ref), v149 (ref), v156 (ref)
                    if v157 == v146 then
                        for _, v159 in pairs(v148) do
                            if v159 and v159.Remove then
                                v159:Remove();
                            end;
                        end;
                        for _, v161 in pairs(v149) do
                            if v161 and v161.Remove then
                                v161:Remove();
                            end;
                        end;
                        if v156 then
                            v156:Disconnect();
                            v156 = nil;
                        end;
                    end;
                end);
            end;
            spawn(function()
                -- upvalues: v162 (ref)
                repeat
                    task.wait();
                until workspace:FindFirstChild("Items");
                workspace.Items.ChildAdded:Connect(function(v163)
                    -- upvalues: v162 (ref)
                    v162(v163);
                end);
                for _, v165 in pairs(workspace.Items:GetChildren()) do
                    v162(v165);
                end;
            end);
            local function v179(v166)
                -- upvalues: v44 (ref), v41 (ref), l_RunService_0 (ref), v126 (ref), v35 (ref)
                local v167 = {
                    circle = MakeCircle()
                };
                local v168 = {
                    name = MakeText(), 
                    info = MakeText()
                };
                local v169 = nil;
                v169 = RunService.RenderStepped:Connect(function()
                    -- upvalues: v126 (ref), v166 (ref), v35 (ref), v167 (ref), v168 (ref)
                    if not esp_table.NpcsEsp.Enabled then
                        v167.circle.Visible = false;
                        v168.name.Visible = false;
                        v168.info.Visible = false;
                    else
                        local v170 = nil;
                        local v171 = nil;
                        if v166.PrimaryPart then
                            local v172, v173 = v35(v166.PrimaryPart.Position);
                            v171 = v173;
                            v170 = v172;
                        end;
                        if not v171 then
                            v167.circle.Visible = false;
                            v168.name.Visible = false;
                            v168.info.Visible = false;
                        else
                            v167.circle.Position = v170;
                            v168.name.Position = Vector2.new(v167.circle.Position.X, v167.circle.Position.Y - 20);
                            v168.info.Position = Vector2.new(v167.circle.Position.X, v167.circle.Position.Y - 35);
                            v168.name.Text = v166.Name;
                            if v166.Name ~= "Bunny" then
                                if v166.Name ~= "Wolf" then
                                    if v166.Name == "Alpha Wolf" then
                                        v167.circle.Color = esp_table.NpcsEsp.AWolfsEsp.Color;
                                        v168.name.Color = esp_table.NpcsEsp.AWolfsEsp.Color;
                                        v168.info.Color = esp_table.NpcsEsp.AWolfsEsp.Color;
                                        v167.circle.Visible = true;
                                        v168.name.Visible = true;
                                        v168.info.Visible = true;
                                    elseif v166.Name == "Bear" then
                                        v167.circle.Color = esp_table.NpcsEsp.BearsEsp.Color;
                                        v168.name.Color = esp_table.NpcsEsp.BearsEsp.Color;
                                        v168.info.Color = esp_table.NpcsEsp.BearsEsp.Color;
                                        v167.circle.Visible = true;
                                        v168.name.Visible = true;
                                        v168.info.Visible = true;
                                    elseif v166.Name == "Arctic Fox" then
                                        v167.circle.Color = esp_table.NpcsEsp.ArcFoxsEsp.Color;
                                        v168.name.Color = esp_table.NpcsEsp.ArcFoxsEsp.Color;
                                        v168.info.Color = esp_table.NpcsEsp.ArcFoxsEsp.Color;
                                        v167.circle.Visible = true;
                                        v168.name.Visible = true;
                                        v168.info.Visible = true;
                                    elseif v166.Name == "Polar Bear" then
                                        v167.circle.Color = esp_table.NpcsEsp.PolBearsEsp.Color;
                                        v168.name.Color = esp_table.NpcsEsp.PolBearsEsp.Color;
                                        v168.info.Color = esp_table.NpcsEsp.PolBearsEsp.Color;
                                        v167.circle.Visible = true;
                                        v168.name.Visible = true;
                                        v168.info.Visible = true;
                                    elseif v166.Name:match("Lost Child") then
                                        v167.circle.Color = esp_table.NpcsEsp.LChildsEsp.Color;
                                        v168.name.Color = esp_table.NpcsEsp.LChildsEsp.Color;
                                        v168.info.Color = esp_table.NpcsEsp.LChildsEsp.Color;
                                        v167.circle.Visible = true;
                                        v168.name.Visible = true;
                                        v168.info.Visible = true;
                                    elseif v166.Name:match("Cultist") then
                                        v167.circle.Color = esp_table.NpcsEsp.CultistsEsp.Color;
                                        v168.name.Color = esp_table.NpcsEsp.CultistsEsp.Color;
                                        v168.info.Color = esp_table.NpcsEsp.CultistsEsp.Color;
                                        v167.circle.Visible = true;
                                        v168.name.Visible = true;
                                        v168.info.Visible = true;
                                    elseif not v166.Name:match("Trader") then
                                        v167.circle.Color = v166.PrimaryPart.Color;
                                        v168.name.Color = v166.PrimaryPart.Color;
                                        v168.info.Color = v166.PrimaryPart.Color;
                                        v167.circle.Visible = true;
                                        v168.name.Visible = true;
                                        v168.info.Visible = true;
                                    else
                                        v167.circle.Color = esp_table.NpcsEsp.TradersEsp.Color;
                                        v168.name.Color = esp_table.NpcsEsp.TradersEsp.Color;
                                        v168.info.Color = esp_table.NpcsEsp.TradersEsp.Color;
                                        v167.circle.Visible = true;
                                        v168.name.Visible = true;
                                        v168.info.Visible = true;
                                    end;
                                else
                                    v167.circle.Color = esp_table.NpcsEsp.WolfsEsp.Color;
                                    v168.name.Color = esp_table.NpcsEsp.WolfsEsp.Color;
                                    v168.info.Color = esp_table.NpcsEsp.WolfsEsp.Color;
                                    v167.circle.Visible = true;
                                    v168.name.Visible = true;
                                    v168.info.Visible = true;
                                end;
                            else
                                v167.circle.Color = esp_table.NpcsEsp.BunniesEsp.Color;
                                v168.name.Color = esp_table.NpcsEsp.BunniesEsp.Color;
                                v168.info.Color = esp_table.NpcsEsp.BunniesEsp.Color;
                                v167.circle.Visible = true;
                                v168.name.Visible = true;
                                v168.info.Visible = true;
                            end;
                        end;
                    end;
                end);
                v166.Parent.ChildRemoved:Connect(function(v174)
                    -- upvalues: v166 (ref), v167 (ref), v168 (ref), v169 (ref)
                    if v174 == v166 then
                        for _, v176 in pairs(v167) do
                            if v176 and v176.Remove then
                                v176:Remove();
                            end;
                        end;
                        for _, v178 in pairs(v168) do
                            if v178 and v178.Remove then
                                v178:Remove();
                            end;
                        end;
                        if v169 then
                            v169:Disconnect();
                            v169 = nil;
                        end;
                    end;
                end);
            end;
            spawn(function()
                -- upvalues: v179 (ref)
                repeat
                    task.wait();
                until workspace:FindFirstChild("Characters");
                workspace.Characters.ChildAdded:Connect(function(v180)
                    -- upvalues: v179 (ref)
                    v179(v180);
                end);
                for _, v182 in pairs(workspace.Characters:GetChildren()) do
                    v179(v182);
                end;
            end);
            local l_PlayerSprinting_0 = ReplicatedStorage:WaitForChild("RemoteEvents"):WaitForChild("PlayerSprinting");
            local v184 = nil;
            v184 = hookmetamethod(game, "__namecall", function(v185, ...)
                -- upvalues: v126 (ref), l_PlayerSprinting_0 (ref), v184 (ref)
                local v186 = getnamecallmethod():lower(); --[[holy fuck]]
                if esp_table.bypsSprint and v185 == l_PlayerSprinting_0 and v186 == "fireserver"  then
                    return;
                else
                    return v184(v185, ...);
                end;
            end);
            local v187 = nil;
            local v188 = nil;
            local function v194(v189, v190)
                -- upvalues: v187 (ref), v188 (ref), l_LocalPlayer_0 (ref)
                if not v189 then
                    if v187 then
                        v187:Disconnect();
                        v187 = nil;
                    end;
                    if v188 then
                        v188:Disconnect();
                        v188 = nil;
                    end;
                else
                    if v187 then
                        v187:Disconnect();
                        v187 = nil;
                    end;
                    if v188 then
                        v188:Disconnect();
                        v188 = nil;
                    end;
                    local l_Character_0 = LocalPlayer.Character;
                    do
                        local l_l_Character_0_0 = l_Character_0;
                        if l_l_Character_0_0 then
                            if not l_l_Character_0_0:FindFirstChildOfClass("Humanoid") then
                                repeat
                                    task.wait();
                                until l_l_Character_0_0:FindFirstChildOfClass("Humanoid");
                            end;
                            v187 = l_l_Character_0_0:FindFirstChildOfClass("Humanoid"):GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                                -- upvalues: l_l_Character_0_0 (ref), v190 (ref)
                                l_l_Character_0_0:FindFirstChildOfClass("Humanoid").WalkSpeed = v190;
                            end);
                            l_l_Character_0_0:FindFirstChildOfClass("Humanoid").WalkSpeed = v190;
                        end;
                        v188 = LocalPlayer.CharacterAdded:Connect(function(v193)
                            -- upvalues: v187 (ref), v190 (ref)
                            if v187 then
                                v187:Disconnect();
                                v187 = nil;
                            end;
                            if not v193:FindFirstChildOfClass("Humanoid") then
                                repeat
                                    task.wait();
                                until v193:FindFirstChildOfClass("Humanoid");
                            end;
                            v187 = v193:FindFirstChildOfClass("Humanoid"):GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                                -- upvalues: v193 (ref), v190 (ref)
                                v193:FindFirstChildOfClass("Humanoid").WalkSpeed = v190;
                            end);
                            v193:FindFirstChildOfClass("Humanoid").WalkSpeed = v190;
                        end);
                    end;
                end;
            end;
            local v195 = nil;
            local v196 = nil;
            spawn(function()
                while task.wait() do
                    if not esp_table.noClipping then
                        if v195 then
                            v195:Disconnect();
                            v195 = nil;
                        end;
                        v196 = true;
                    else
                        if v195 then
                            v195:Disconnect();
                            v195 = nil;
                        end;
                        v196 = false;
                        local function v199()
                            -- upvalues: v196 (ref), l_LocalPlayer_0 (ref)
                            if v196 == false and LocalPlayer.Character ~= "Character" then
                                for _, v198 in pairs(LocalPlayer.Character:GetDescendants()) do
                                    if v198:IsA("BasePart") and v198.CanCollide and v198.Name ~= floatName then
                                        v198.CanCollide = false;
                                    end;
                                end;
                            end;
                        end;
                        v195 = game:GetService("RunService").Stepped:Connect(v199);
                    end;
                end;
            end);
            local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GabiPizdosu/Deobfuscated/refs/heads/main/WYF_Lib.lua",true))()
            local Window = Library:CreateWindow({
                Name = "99 Nights", 
                Credit = "by Wayfer", 
                SaveConfig = true, 
                ConfigFolder = "Wayfer"
            });
            local Combat_Tab = Window:CreateTab({
                Name = "Combat", 
                Icon = "rbxassetid://96918908092798"
            });
            local Player_Tab = Window:CreateTab({
                Name = "Player", 
                Icon = "rbxassetid://76459810928876"
            });
            local Esp_Tab = Window:CreateTab({
                Name = "Esp", 
                Icon = "rbxassetid://90186710841083"
            });
            local Teleport_Tab = Window:CreateTab({
                Name = "Teleport", 
                Icon = "rbxassetid://85267565833509"
            });
            local Info_Tab = Window:CreateTab({
                Name = "Info", 
                Icon = "rbxassetid://100153863906288"
            });
            local Settings_Tab = Window:CreateTab({
                Name = "Settings", 
                Icon = "rbxassetid://120826427746593"
            });
            Esp_Tab:CreateSection({
                Name = "Esp"
            });
            Esp_Tab:CreateToler({
                Name = "Players", 
                Default = true, 
                Save = true, 
                Flag = "PlayersEsp", 
                Color = esp_table.PlayersEsp.Color, 
                Callback = function(arg1, arg2)
                    esp_table.PlayersEsp.Enabled = arg1;
                    esp_table.PlayersEsp.Color = arg2;
                end
            });
            Esp_Tab:CreateToggle({
                Name = "Npcs", 
                Default = true, 
                Save = true, 
                Flag = "NpcsEsp", 
                Callback = function(arg)
                    esp_table.NpcsEsp.Enabled = arg;
                end
            });
            Esp_Tab:CreateToggle({
                Name = "Items", 
                Default = true, 
                Save = true, 
                Flag = "ItemsEsp", 
                Callback = function(arg)
                    -- upvalues: v126 (ref)
                    esp_table.ItemsEsp = arg;
                end
            });
            Esp_Tab:CreateToggle({
                Name = "Tools", 
                Default = true, 
                Save = true, 
                Flag = "ToolsEsp", 
                Callback = function(v211)
                    -- upvalues: v126 (ref)
                    esp_table.ToolsEsp = v211;
                end
            });
            Esp_Tab:CreateToggle({
                Name = "Chests", 
                Default = true, 
                Save = true, 
                Flag = "ChestsEsp", 
                Callback = function(v212)
                    -- upvalues: v126 (ref)
                    esp_table.ChestsEsp = v212;
                end
            });
            Esp_Tab:CreateToggle({
                Name = "Currencies", 
                Default = true, 
                Save = true, 
                Flag = "CurrenciesEsp", 
                Callback = function(v213)
                    -- upvalues: v126 (ref)
                    esp_table.CurrenciesEsp = v213;
                end
            });
            Esp_Tab:CreateToggle({
                Name = "Armours", 
                Default = true, 
                Save = true, 
                Flag = "ArmoursEsp", 
                Callback = function(v214)
                    -- upvalues: v126 (ref)
                    esp_table.ArmoursEsp = v214;
                end
            });
            Combat_Tab:CreateButton({
                Name = "God Mode", 
                Callback = function()
                    GodMode();
                end
            });
            Combat_Tab:CreateButton({
                Name = "Bring All Trees", 
                Callback = function()
                    BringTrees();
                end
            });
            local v215 = "Camp";
            Combat_Tab:CreateDropdown({
                Name = "Collect Items to", 
                Options = {
                    Me = "Me", 
                    Camp = "Camp"
                }, 
                Default = "Camp", 
                Callback = function(v216)
                    -- upvalues: v215 (ref)
                    v215 = v216;
                end
            });
            Combat_Tab:CreateButton({
                Name = "Collect Items", 
                Callback = function()
                    if v215 ~= "Me" then
                        if v215 == "Camp" then
                            idk(l_InnerTouchZone_0.CFrame + l_InnerTouchZone_0.CFrame.UpVector * 5 + l_InnerTouchZone_0.CFrame.RightVector * -20);
                        end;
                    else
                        idk();
                    end;
                end
            });
            Combat_Tab:CreateButton({
                Name = "Put Woods in Scrapper", 
                Callback = function()
                    -- upvalues: v78 (ref)
                    v78();
                end
            });
            Combat_Tab:CreateButton({
                Name = "Put Scraps in Scrapper", 
                Callback = function()
                    -- upvalues: v81 (ref)
                    v81();
                end
            });
            Combat_Tab:CreateSection({
                Name = "Chests"
            });
            Combat_Tab:CreateButton({
                Name = "Open Chests", 
                Callback = function()
                    -- upvalues: v113 (ref)
                    v113();
                end
            });
            Combat_Tab:CreateToggle({
                Name = "Auto Open Chests", 
                Default = true, 
                Save = true, 
                Flag = "AutoOpenChests", 
                Callback = function(v217)
                    -- upvalues: v126 (ref), v113 (ref)
                    esp_table.AutoOpenChests = v217;
                    task.spawn(function()
                        -- upvalues: v126 (ref), v113 (ref)
                        while esp_table.AutoOpenChests do
                            v113();
                            task.wait(0.1);
                        end;
                    end);
                end
            });
            Combat_Tab:CreateSection({
                Name = "Tools"
            });
            Combat_Tab:CreateButton({
                Name = "Take Tools", 
                Callback = function()
                    -- upvalues: v84 (ref)
                    v84();
                end
            });
            Combat_Tab:CreateToggle({
                Name = "Auto Take Tools", 
                Default = true, 
                Save = true, 
                Flag = "AutoTakeTools", 
                Callback = function(v218)
                    -- upvalues: v126 (ref), v84 (ref)
                    esp_table.AutoTakeTools = v218;
                    task.spawn(function()
                        -- upvalues: v126 (ref), v84 (ref)
                        while esp_table.AutoTakeTools do
                            v84();
                            task.wait(0.1);
                        end;
                    end);
                end
            });
            Combat_Tab:CreateSection({
                Name = "Gears"
            });
            Combat_Tab:CreateButton({
                Name = "Wear Armours", 
                Callback = function()
                    -- upvalues: v87 (ref)
                    v87();
                end
            });
            Combat_Tab:CreateButton({
                Name = "Take Ammos", 
                Callback = function()
                    -- upvalues: v90 (ref)
                    v90();
                end
            });
            Combat_Tab:CreateToggle({
                Name = "Auto Take Gears", 
                Default = true, 
                Save = true, 
                Flag = "AutoTakeGears", 
                Callback = function(v219)
                    -- upvalues: v126 (ref), v87 (ref), v90 (ref)
                    esp_table.AutoTakeGears = v219;
                    task.spawn(function()
                        -- upvalues: v126 (ref), v87 (ref), v90 (ref)
                        while esp_table.AutoTakeGears do
                            v87();
                            v90();
                            task.wait(0.1);
                        end;
                    end);
                end
            });
            Combat_Tab:CreateSection({
                Name = "Preciouses"
            });
            Combat_Tab:CreateButton({
                Name = "Collect Coins", 
                Callback = function()
                    -- upvalues: v93 (ref)
                    v93();
                end
            });
            Combat_Tab:CreateButton({
                Name = "Collect Diamonds", 
                Callback = function()
                    -- upvalues: v96 (ref)
                    v96();
                end
            });
            Combat_Tab:CreateToggle({
                Name = "Auto Collect Preciouses", 
                Default = true, 
                Save = true, 
                Flag = "AutoCollectPrec", 
                Callback = function(v220)
                    -- upvalues: v126 (ref), v93 (ref), v96 (ref)
                    esp_table.AutoCollectPrec = v220;
                    task.spawn(function()
                        -- upvalues: v126 (ref), v93 (ref), v96 (ref)
                        while esp_table.AutoCollectPrec do
                            v93();
                            v96();
                            task.wait(0.1);
                        end;
                    end);
                end
            });
            Combat_Tab:CreateSection({
                Name = "Hunger"
            });
            Combat_Tab:CreateButton({
                Name = "Fill Hunger", 
                Callback = function()
                    -- upvalues: v107 (ref)
                    v107();
                end
            });
            Combat_Tab:CreateToggle({
                Name = "Auto Fill Hunger", 
                Default = true, 
                Save = true, 
                Flag = "AutoFillHunger", 
                Callback = function(v221)
                    -- upvalues: v126 (ref), v107 (ref)
                    esp_table.AutoFillHunger = v221;
                    task.spawn(function()
                        -- upvalues: v126 (ref), v107 (ref)
                        while esp_table.AutoFillHunger do
                            v107();
                            task.wait(0.3);
                        end;
                    end);
                end
            });
            Player_Tab:CreateToggle({
                Name = "Bypass Sprint", 
                Default = true, 
                Save = true, 
                Flag = "bypsSprint", 
                Callback = function(v222)
                    -- upvalues: v126 (ref)
                    esp_table.bypsSprint = v222;
                end
            });
            local v223 = nil;
            local v224 = nil;
            v223 = Player_Tab:CreateToggle({
                Name = "Walkspeed", 
                Default = false, 
                Save = true, 
                Flag = "WalkspeedTog", 
                Callback = function(v225)
                    -- upvalues: v224 (ref), v194 (ref)
                    task.spawn(function()
                        -- upvalues: v224 (ref), v194 (ref), v225 (ref)
                        if not v224 then
                            repeat
                                task.wait();
                            until v224;
                        end;
                        v194(v225, v224:GetValue());
                    end);
                end
            });
            v224 = Player_Tab:CreateSlider({
                Name = "WalkSpeed", 
                Min = 0, 
                Max = 200, 
                Default = 16, 
                Save = true, 
                Flag = "WalkSpeedSlid", 
                Callback = function(v226)
                    -- upvalues: v223 (ref), v194 (ref)
                    task.spawn(function()
                        -- upvalues: v223 (ref), v194 (ref), v226 (ref)
                        if not v223 then
                            repeat
                                task.wait();
                            until v223;
                        end;
                        if not v223:GetToggle() then
                            v194(false, v226);
                        else
                            v194(true, v226);
                        end;
                    end);
                end
            });
            Player_Tab:CreateToggle({
                Name = "Noclip", 
                Default = false, 
                Save = false, 
                Flag = "noClipping", 
                Callback = function(v227)
                    -- upvalues: v126 (ref)
                    esp_table.noClipping = v227;
                end
            });
            Teleport_Tab:CreateButton({
                Name = "Camp", 
                Callback = function()
                    TeleportToCamp();
                end
            });
            Teleport_Tab:CreateButton({
                Name = "Castle", 
                Callback = function()
                    TeleportToCastle();
                end
            });
            Teleport_Tab:CreateButton({
                Name = "A Lost Child", 
                Callback = function()
                    GotoLostChild();
                end
            });
            local Hunger_Label = Info_Tab:CreateLabel({
                Message = "Hunger: " .. math.round(LocalPlayer:GetAttribute("Hunger"))
            });
            LocalPlayer:GetAttributeChangedSignal("Hunger"):Connect(function()
                Hunger_Label:SetText("Hunger: " .. math.round(LocalPlayer:GetAttribute("Hunger")));
            end);
            Settings_Tab:CreateSection({
                Name = "Settings"
            });
            Settings_Tab:CreateHotKey({
                Name = "Hide/Open", 
                Default = "H", 
                Save = true, 
                Flag = "Hide/Open", 
                Callback = function()
                    -- upvalues: l_Library_Window_0 (ref)
                    Window:Hide();
                end
            });
            Library:Init();
        end;
        start()
        --local l_clonefunction_0 = clonefunction;
        --local HttpGet = l_clonefunction_0(game.HttpGet);
        --l_clonefunction_0(loadstring)(HttpGet(game, "https://gist.githubusercontent.com/MrTomatoesM/d5f718e69fb790dc1237aeecaf47d7a0/raw/Key%2520System"))();
        return;
    else
        return;
    end;
end;
