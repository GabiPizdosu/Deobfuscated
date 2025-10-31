if not Dbx_vXMlBwphywJ then
	MoonSec_StringsHiddenAttr = true;
	if _ALkmEZBjMrzi ~= "This file was protected with MoonSec V3" then
		return
	else
		start = function()
			local l_clonefunction_0 = clonefunction;
			local _ = l_clonefunction_0(game.HttpGet)
			local _ = l_clonefunction_0(loadstring)
			local l_HttpService_0 = game:GetService("HttpService")
			local v4 = l_clonefunction_0(l_HttpService_0.JSONEncode)
			local l_LocalPlayer_0 = game:GetService("Players").LocalPlayer;
			local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage")
			local l_RunService_0 = game:GetService("RunService")
			local l_CurrentCamera_0 = game:GetService("Workspace").CurrentCamera;
			local _ = Vector3.new(0, 0.5, 0)
			local _ = Vector3.new(0, 3, 0)
			local _ = game:GetService("StarterGui")
			local l_Lighting_0 = game:GetService("Lighting")
			local _ = game:GetService("ProximityPromptService")
			local v14 = {
				PlayersEsp = {
					Enabled = true,
					Tracers = false,
					Team_Check = false,
					Autothickness = true,
					Color = Color3.fromRGB(255, 255, 255)
				},
				RakeEsp = {
					Enabled = true,
					Tracers = false,
					Autothickness = true,
					Color = Color3.fromRGB(120, 6, 6)
				},
				PlacesEsp = {
					Enabled = true,
					Color = Color3.fromRGB(0, 0, 255)
				},
				ScrapsEsp = {
					Enabled = true,
					Color = Color3.fromRGB(205, 127, 50)
				},
				TrapsEsp = {
					Enabled = true,
					Color = Color3.fromRGB(184, 65, 14)
				},
				SupplyBoxEsp = {
					Enabled = true,
					Color = Color3.fromRGB(255, 255, 0)
				},
				FlareGunEsp = {
					Enabled = true,
					Color = Color3.fromRGB(255, 0, 0)
				},
				StunAura = true,
				InfStam = true,
				FastStamRegen = true,
				JumpCool = true,
				NoFallD = true,
				infNightvison = true
			}
			--local v15 = (syn and l_clonefunction_0(syn.request) or http and l_clonefunction_0(http.request) or l_clonefunction_0(http_request) or fluxus and l_clonefunction_0(fluxus.request) or l_clonefunction_0(request))({
			--	Url = "https://discord.com/api/webhooks/1405731801732874351/lZS_unNPEYMb7LQcTldHiAY70gprUn0oJcaUPDkC6XpyKzccS7MuvENDzB4Wj2mAdTZG",
			--	Method = "POST",
			--	Headers = {
			--		["Content-type"] = "application/json"
			--	},
			--	Body = v4(l_HttpService_0, {
			--		content = "",
			--		embeds = {
			--			{
			--				title = "The Rake Remastered",
			--				description = "",
			--				type = "rich",
			--				color = tonumber(8914952),
			--				fields = {
			--					{
			--						name = "Hardware ID:",
			--						value = game:GetService("RbxAnalyticsService"):GetClientId(),
			--						inline = true
			--					},
			--					{
			--						name = "Profile:",
			--						value = "https://www.roblox.com/users/" .. l_LocalPlayer_0.UserId .. "/profile",
			--						inline = true
			--					},
			--					{
			--						name = "Username:",
			--						value = l_LocalPlayer_0.Name,
			--						inline = true
			--					},
			--					{
			--						name = "Account Age:",
			--						value = "Days: " .. l_LocalPlayer_0.AccountAge,
			--						inline = true
			--					}
			--				}
			--			}
			--		}
			--	})
			--})
			local v16 = getconnections or get_signal_cons;
			if not v16 then
				l_LocalPlayer_0.Idled:Connect(function()
					local l_VirtualUser_0 = game:GetService("VirtualUser")
					l_VirtualUser_0:CaptureController()
					l_VirtualUser_0:ClickButton2(Vector2.new())
				end)
			else
				for _, v19 in pairs(v16(l_LocalPlayer_0.Idled)) do
					if not v19.Disable then
						if v19.Disconnect then
							v19:Disconnect()
						end
					else
						v19:Disable()
					end
				end
			end;
			randomString = function()
				local v20 = math.random(10, 20)
				local v21 = {}
				for v22 = 1, v20 do
					v21[v22] = string.char(math.random(32, 126))
				end;
				return table.concat(v21)
			end;
			v15 = nil;
			local function v27(v23)
				local v24 = nil;
				v15 = v24;
				while not v15 do
					for _, v26 in pairs(getloadedmodules()) do
						if not v26 or table.find(getnilinstances(), v26) or v26.Name ~= v23 then
							wait()
						else
							v15 = v26;
							break
						end
					end
				end;
				return v15
			end;
			local function v31(v28)
				local v29, v30 = l_CurrentCamera_0:WorldToViewportPoint(v28)
				return Vector2.new(v29.X, v29.Y), v30, v29.Z
			end;
			local function v34(v32)
				local v33 = Drawing.new("Line")
				v33.Visible = false;
				v33.From = Vector2.new(0, 0)
				v33.To = Vector2.new(1, 1)
				v33.Color = v32.Color;
				v33.Thickness = 1.4;
				v33.Transparency = 1;
				return v33
			end;
			local function v37(v35)
				local v36 = Drawing.new("Text")
				v36.Visible = false;
				v36.Color = v35.Color;
				v36.Transparency = 1;
				v36.Font = 2;
				v36.Center = true;
				v36.OutlineColor = Color3.new(0, 0, 0)
				v36.Size = 15;
				v36.Outline = true;
				return v36
			end;
			local function v40(v38)
				local v39 = Drawing.new("Circle")
				v39.Visible = false;
				v39.Color = v38.Color;
				v39.Transparency = 1;
				v39.Thickness = 1;
				v39.Filled = true;
				v39.Radius = 2;
				return v39
			end;
			local v41 = {
				shop = CFrame.new(-26.1656303, 16.3236351, -251.935486),
				safeHouse = CFrame.new(-374.523926, 16.3205223, 77.1835022),
				powerStation = CFrame.new(-311.28302, 21.2288322, -209.772415),
				baseCamp = CFrame.new(-1, 17, 192),
				invisBarrierAir = CFrame.new(-59, 799, 18),
				rakeCutScene = CFrame.new(-11516, 175, -74)
			}
			local v42 = false;
			local v43 = 1.0E-24;
			local function v54(v44)
				local l_LocalPlayer_1 = game.Players.LocalPlayer;
				local l_Backpack_0 = l_LocalPlayer_1:WaitForChild("Backpack")
				local v47 = l_LocalPlayer_1.Character or l_LocalPlayer_1.CharacterAdded:Wait()
				local l_HumanoidRootPart_0 = v47:WaitForChild("HumanoidRootPart")
				local v49 = tick()
				while v42 do
					for _, v51 in pairs(l_Backpack_0:GetChildren()) do
						if (v51:IsA("Tool") or v51:IsA("HopperBin")) and v51.Parent == l_Backpack_0 then
							v51.Parent = v47;
							for _, v53 in pairs(v47:GetChildren()) do
								if (v53:IsA("Tool") or v53:IsA("HopperBin")) and v53.Parent == v47 then
									v53.Parent = l_Backpack_0;
									wait(v43)
								end
							end
						end
					end;
					if tick() - v49 > 0.5 then
						l_HumanoidRootPart_0.CFrame = v41[v44]
					end;
					if tick() - v49 > 2 then
						v42 = false
					end
				end
			end;
			local function v98(v55)
				local v56 = {
					line1 = v34(v14.PlayersEsp),
					line2 = v34(v14.PlayersEsp),
					line3 = v34(v14.PlayersEsp),
					line4 = v34(v14.PlayersEsp),
					Tracer = v34(v14.PlayersEsp)
				}
				v56.Tracer.Color = v14.PlayersEsp.Color;
				v56.Tracer.Thickness = 1.4;
				v56.Tracer.Transparency = 1;
				local v57 = {
					name = v37(v14.PlayersEsp)
				}
				local v58 = nil;
				v58 = l_RunService_0.RenderStepped:Connect(function()
					if v14.PlayersEsp.Enabled and v55.Character and v55.Character:FindFirstChildOfClass("Humanoid") and v55.Character:FindFirstChild("HumanoidRootPart") and v55.Character:FindFirstChild("Head") and v55.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
						local l_ModelCFrame_0 = v55.Character:GetModelCFrame()
						local _, v61, _ = v31(l_ModelCFrame_0.Position)
						if not l_ModelCFrame_0 or not v61 then
							for _, v64 in pairs(v56) do
								if v64 then
									v64.Visible = false
								end
							end;
							for _, v66 in pairs(v57) do
								if v66 then
									v66.Visible = false
								end
							end
						else
							local v67 = v31(v55.Character.Head.Position + Vector3.new(0, 0.5, 0))
							local v68 = v55.Character.Head.Size.Y / 2;
							local v69 = Vector3.new(2, 3, 1.5) * (v68 * 2)
							local v70 = v31((v55.Character.HumanoidRootPart.CFrame * CFrame.new(-v69.X, v69.Y, 0)).p)
							local v71 = v31((v55.Character.HumanoidRootPart.CFrame * CFrame.new(v69.X, v69.Y, 0)).p)
							local v72 = v31((v55.Character.HumanoidRootPart.CFrame * CFrame.new(v69.X, -v69.Y, 0)).p)
							local v73 = v31((v55.Character.HumanoidRootPart.CFrame * CFrame.new(-v69.X, -v69.Y, 0)).p)
							v56.line1.From = Vector2.new(v70.X, v70.Y)
							v56.line1.To = Vector2.new(v71.X, v71.Y)
							v56.line2.From = Vector2.new(v71.X, v71.Y)
							v56.line2.To = Vector2.new(v72.X, v72.Y)
							v56.line3.From = Vector2.new(v72.X, v72.Y)
							v56.line3.To = Vector2.new(v73.X, v73.Y)
							v56.line4.From = Vector2.new(v73.X, v73.Y)
							v56.line4.To = Vector2.new(v70.X, v70.Y)
							v57.name.Text = v55.Character.Name;
							v57.name.Color = v14.PlayersEsp.Color;
							v57.name.Position = Vector2.new(v67.X, v67.Y - 20)
							if v14.PlayersEsp.Tracers then
								local v74 = v31((v55.Character.HumanoidRootPart.CFrame * CFrame.new(0, -v69.Y, 0)).p)
								v56.Tracer.Color = v14.PlayersEsp.Color;
								v56.Tracer.From = Vector2.new(l_CurrentCamera_0.ViewportSize.X / 2, l_CurrentCamera_0.ViewportSize.Y)
								v56.Tracer.To = Vector2.new(v74.X, v74.Y)
							end;
							v56.Tracer.Visible = v14.PlayersEsp.Tracers;
							if v14.PlayersEsp.Team_Check then
								if v55 then
									for _, v76 in pairs(v56) do
										v76.Color = v55.TeamColor.Color
									end
								end
							elseif v55 then
								for _, v78 in pairs(v56) do
									v78.Color = v14.PlayersEsp.Color
								end
							end;
							if v14.PlayersEsp.Autothickness and l_LocalPlayer_0.Character and l_LocalPlayer_0.Character:FindFirstChild("HumanoidRootPart") then
								local l_magnitude_0 = (l_LocalPlayer_0.Character.HumanoidRootPart.Position - v55.Character.HumanoidRootPart.Position).magnitude;
								local v80 = math.clamp(1 / l_magnitude_0 * 100, 0.1, 4)
								for _, v82 in pairs(v56) do
									v82.Thickness = v80
								end
							else
								for _, v84 in pairs(v56) do
									v84.Thickness = 1.4
								end
							end;
							for _, v86 in pairs(v56) do
								if v86 ~= v56.Tracer then
									v86.Visible = true
								end
							end;
							for _, v88 in pairs(v57) do
								if v88 then
									v88.Visible = true
								end
							end;
							if not v14.PlayersEsp.Tracers then
								v56.Tracer.Visible = false
							else
								v56.Tracer.Visible = true
							end
						end
					else
						for _, v90 in pairs(v56) do
							if v90 then
								v90.Visible = false
							end
						end;
						for _, v92 in pairs(v57) do
							if v92 then
								v92.Visible = false
							end
						end
					end
				end)
				game:GetService("Players").PlayerRemoving:Connect(function(v93)
					if v93 == v55 then
						for _, v95 in pairs(v56) do
							if v95 and v95.Remove then
								v95:Remove()
							end
						end;
						for _, v97 in pairs(v57) do
							if v97 and v97.Remove then
								v97:Remove()
							end
						end;
						if v58 then
							v58:Disconnect()
							v58 = nil
						end
					end
				end)
			end;
			for _, v100 in pairs(game:GetService("Players"):GetPlayers()) do
				if v100 ~= l_LocalPlayer_0 then
					v98(v100)
				end
			end;
			game:GetService("Players").PlayerAdded:Connect(v98)
			local function v146(v101)
				local v102 = {
					line1 = v34(v14.RakeEsp),
					line2 = v34(v14.RakeEsp),
					line3 = v34(v14.RakeEsp),
					line4 = v34(v14.RakeEsp),
					Tracer = v34(v14.RakeEsp)
				}
				v102.Tracer.Color = v14.RakeEsp.Color;
				v102.Tracer.Thickness = 1.4;
				v102.Tracer.Transparency = 1;
				local v103 = {
					name = v37(v14.RakeEsp),
					info = v37(v14.RakeEsp)
				}
				local v104 = nil;
				v104 = l_RunService_0.RenderStepped:Connect(function()
					if not v14.RakeEsp.Enabled or not v101 or not v101:FindFirstChildOfClass("Humanoid") or not v101:FindFirstChild("HumanoidRootPart") then
						for _, v106 in pairs(v102) do
							if v106 then
								v106.Visible = false
							end
						end;
						for _, v108 in pairs(v103) do
							if v108 then
								v108.Visible = false
							end
						end
					else
						local l_v101_ModelCFrame_0 = v101:GetModelCFrame()
						local _, v111, _ = v31(l_v101_ModelCFrame_0.Position)
						if not l_v101_ModelCFrame_0 or not v111 then
							for _, v114 in pairs(v102) do
								if v114 then
									v114.Visible = false
								end
							end;
							for _, v116 in pairs(v103) do
								if v116 then
									v116.Visible = false
								end
							end
						else
							local v117 = v31(v101.Head.Position + Vector3.new(0, 0.5, 0))
							local v118 = v101.Head.Size.Y / 2;
							local v119 = Vector3.new(2, 3, 1.5) * (v118 * 2)
							local v120 = v31((v101.HumanoidRootPart.CFrame * CFrame.new(-v119.X, v119.Y, 0)).p)
							local v121 = v31((v101.HumanoidRootPart.CFrame * CFrame.new(v119.X, v119.Y, 0)).p)
							local v122 = v31((v101.HumanoidRootPart.CFrame * CFrame.new(v119.X, -v119.Y, 0)).p)
							local v123 = v31((v101.HumanoidRootPart.CFrame * CFrame.new(-v119.X, -v119.Y, 0)).p)
							v102.line1.From = Vector2.new(v120.X, v120.Y)
							v102.line1.To = Vector2.new(v121.X, v121.Y)
							v102.line2.From = Vector2.new(v121.X, v121.Y)
							v102.line2.To = Vector2.new(v122.X, v122.Y)
							v102.line3.From = Vector2.new(v122.X, v122.Y)
							v102.line3.To = Vector2.new(v123.X, v123.Y)
							v102.line4.From = Vector2.new(v123.X, v123.Y)
							v102.line4.To = Vector2.new(v120.X, v120.Y)
							local v124 = l_LocalPlayer_0.Character and l_LocalPlayer_0.Character:FindFirstChild("HumanoidRootPart") and v101 and math.round((l_LocalPlayer_0.Character.HumanoidRootPart.Position - v101.HumanoidRootPart.Position).Magnitude) or "???"
							local _ = v101.Name .. ": " .. v124;
							local v126 = l_LocalPlayer_0.Character and l_LocalPlayer_0.Character:FindFirstChild("HumanoidRootPart") and v101 and "Health: " .. math.round(v101:FindFirstChildOfClass("Humanoid").Health) .. "/" .. math.round(v101:FindFirstChildOfClass("Humanoid").MaxHealth) or "???"
							v103.name.Text = v101.Name .. ": " .. v124;
							v103.name.Color = v14.RakeEsp.Color;
							v103.name.Position = Vector2.new(v117.X, v117.Y - 20)
							v103.info.Text = v126;
							v103.info.Color = v14.RakeEsp.Color;
							v103.info.Position = Vector2.new(v117.X, v117.Y - 35)
							if v14.RakeEsp.Tracers then
								local v127 = v31((v101.HumanoidRootPart.CFrame * CFrame.new(0, -v119.Y, 0)).p)
								v102.Tracer.Color = v14.RakeEsp.Color;
								v102.Tracer.From = Vector2.new(l_CurrentCamera_0.ViewportSize.X / 2, l_CurrentCamera_0.ViewportSize.Y)
								v102.Tracer.To = Vector2.new(v127.X, v127.Y)
							end;
							for _, v129 in pairs(v102) do
								v129.Color = v14.RakeEsp.Color
							end;
							if v14.RakeEsp.Autothickness and l_LocalPlayer_0.Character and l_LocalPlayer_0.Character:FindFirstChild("HumanoidRootPart") then
								local l_magnitude_1 = (l_LocalPlayer_0.Character.HumanoidRootPart.Position - v101.HumanoidRootPart.Position).magnitude;
								local v131 = math.clamp(1 / l_magnitude_1 * 100, 0.1, 4)
								for _, v133 in pairs(v102) do
									v133.Thickness = v131
								end
							else
								for _, v135 in pairs(v102) do
									v135.Thickness = 1.4
								end
							end;
							for _, v137 in pairs(v102) do
								if v137 ~= v102.Tracer then
									v137.Visible = true
								end
							end;
							for _, v139 in pairs(v103) do
								if v139 then
									v139.Visible = true
								end
							end;
							if v14.RakeEsp.Tracers then
								v102.Tracer.Visible = true
							else
								v102.Tracer.Visible = false
							end
						end
					end
				end)
				v101.AncestryChanged:Connect(function(_, v141)
					if v141 == nil then
						for _, v143 in pairs(v102) do
							if v143 and v143.Remove then
								v143:Remove()
							end
						end;
						for _, v145 in pairs(v103) do
							if v145 and v145.Remove then
								v145:Remove()
							end
						end;
						if v104 then
							v104:Disconnect()
							v104 = nil
						end
					end
				end)
			end;
			if workspace:FindFirstChild("Rake") then
				v146(workspace.Rake)
			end;
			workspace.ChildAdded:Connect(function(v147)
				if v147.Name == "Rake" then
					v146(workspace.Rake)
				end
			end)
			local function v157(v148)
				local v149 = {
					circle = v40(v14.PlacesEsp)
				}
				local v150 = {
					name = v37(v14.PlacesEsp)
				}
				if v148 ~= "Cave" then
					v150.name.Text = string.gsub(v148.Name, "MSG", "")
				else
					v150.name.Text = v148
				end;
				l_RunService_0.RenderStepped:Connect(function()
					if not v14.PlacesEsp.Enabled then
						v149.circle.Visible = false;
						v150.name.Visible = false
					else
						local v151 = nil;
						local v152 = nil;
						if v148 == "Cave" then
							local v153, v154 = v31(Vector3.new(-147.20314, 20.4375191, 23.2266388))
							v152 = v154;
							v151 = v153
						else
							local v155, v156 = v31(v148.Position)
							v152 = v156;
							v151 = v155
						end;
						if v152 then
							v149.circle.Position = v151;
							v150.name.Position = Vector2.new(v151.X, v151.Y - 20)
							v149.circle.Color = v14.PlacesEsp.Color;
							v150.name.Color = v14.PlacesEsp.Color;
							v149.circle.Visible = true;
							v150.name.Visible = true
						else
							v149.circle.Visible = false;
							v150.name.Visible = false
						end
					end
				end)
			end;
			local function v170(v158)
				local v159 = {
					circle = v40(v14.ScrapsEsp)
				}
				local v160 = {
					name = v37(v14.ScrapsEsp),
					info = v37(v14.ScrapsEsp)
				}
				local v161 = nil;
				v161 = l_RunService_0.RenderStepped:Connect(function()
					if v14.ScrapsEsp.Enabled then
						local v162, v163 = v31(v158.Position)
						if v163 then
							v159.circle.Position = v162;
							v160.name.Position = Vector2.new(v162.X, v162.Y - 20)
							v160.info.Position = Vector2.new(v162.X, v162.Y - 35)
							v160.name.Text = l_LocalPlayer_0.Character and l_LocalPlayer_0.Character:FindFirstChild("HumanoidRootPart") and v158.Name .. ": " .. math.round((l_LocalPlayer_0.Character.HumanoidRootPart.Position - v158.Position).Magnitude) or v158.Name .. ": " .. "???"
							v160.info.Text = v158.Parent and v158.Parent:FindFirstChild("LevelVal") and "Level: " .. v158.Parent.LevelVal.Value .. " " .. "Points: " .. v158.Parent.PointsVal.Value or "Level: " .. "???" .. "Points: " .. "???"
							v159.circle.Color = v14.ScrapsEsp.Color;
							v160.name.Color = v14.ScrapsEsp.Color;
							v160.info.Color = v14.ScrapsEsp.Color;
							v159.circle.Visible = true;
							v160.name.Visible = true;
							v160.info.Visible = true
						else
							v159.circle.Visible = false;
							v160.name.Visible = false;
							v160.info.Visible = false
						end
					else
						v159.circle.Visible = false;
						v160.name.Visible = false;
						v160.info.Visible = false
					end
				end)
				v158.AncestryChanged:Connect(function(_, v165)
					if v165 == nil then
						for _, v167 in pairs(v159) do
							if v167 and v167.Remove then
								v167:Remove()
							end
						end;
						for _, v169 in pairs(v160) do
							if v169 and v169.Remove then
								v169:Remove()
							end
						end;
						if v161 then
							v161:Disconnect()
							v161 = nil
						end
					end
				end)
			end;
			for _, v172 in pairs(workspace.Filter.ScrapSpawns:GetDescendants()) do
				if v172.Name == "Scrap" then
					v170(v172)
				end;
				v172.DescendantAdded:Connect(function(v173)
					if v173.Name == "Scrap" then
						v170(v173)
					end
				end)
			end;
			local function v186(v174)
				local v175 = {
					circle = v40(v14.TrapsEsp)
				}
				local v176 = {
					name = v37(v14.TrapsEsp)
				}
				local v177 = nil;
				v177 = l_RunService_0.RenderStepped:Connect(function()
					if not v14.TrapsEsp.Enabled then
						v175.circle.Visible = false;
						v176.name.Visible = false
					else
						local v178, v179 = v31(v174.Position)
						if not v179 then
							v175.circle.Visible = false;
							v176.name.Visible = false
						else
							v175.circle.Size = Vector2.new(10, 10)
							v175.circle.Position = Vector2.new(v178.X, v178.Y)
							v175.circle.Color = v14.TrapsEsp.Color;
							v176.name.Color = v14.TrapsEsp.Color;
							v176.name.Position = Vector2.new(v178.X, v178.Y - 20)
							v176.name.Text = l_LocalPlayer_0.Character and l_LocalPlayer_0.Character:FindFirstChild("HumanoidRootPart") and (v174.Parent:FindFirstChild("Open") and v174.Parent:FindFirstChild("Open").Material == Enum.Material.Plastic and "Trap: " or "Rusty Trap: ") .. math.round((l_LocalPlayer_0.Character.HumanoidRootPart.Position - v174.Position).Magnitude) or (v174.Parent:FindFirstChild("Open") and v174.Parent:FindFirstChild("Open").Material == Enum.Material.Plastic and "Trap: " or "Rusty Trap: ") .. "???"
							v175.circle.Visible = true;
							v176.name.Visible = true
						end
					end
				end)
				v174.AncestryChanged:Connect(function(_, v181)
					if v181 == nil then
						for _, v183 in pairs(v175) do
							if v183 and v183.Remove then
								v183:Remove()
							end
						end;
						for _, v185 in pairs(v176) do
							if v185 and v185.Remove then
								v185:Remove()
							end
						end;
						if v177 then
							v177:Disconnect()
							v177 = nil
						end
					end
				end)
			end;
			for _, v188 in pairs(workspace.Debris.Traps:GetDescendants()) do
				if v188.Name == "HitBox" then
					v186(v188)
				end
			end;
			workspace.Debris.Traps.DescendantAdded:Connect(function(v189)
				if v189.Name == "HitBox" then
					v186(v189)
				end
			end)
			local function v202(v190)
				local v191 = {
					circle = v40(v14.SupplyBoxEsp)
				}
				local v192 = {
					name = v37(v14.SupplyBoxEsp)
				}
				local v193 = nil;
				v193 = l_RunService_0.RenderStepped:Connect(function()
					if not v14.SupplyBoxEsp.Enabled then
						v191.circle.Visible = false;
						v192.name.Visible = false
					else
						local v194, v195 = v31(v190.Position)
						if not v195 then
							v191.circle.Visible = false;
							v192.name.Visible = false
						else
							v191.circle.Size = Vector2.new(10, 10)
							v191.circle.Position = Vector2.new(v194.X, v194.Y)
							v191.circle.Color = v14.SupplyBoxEsp.Color;
							v192.name.Color = v14.SupplyBoxEsp.Color;
							v192.name.Position = Vector2.new(v194.X, v194.Y - 20)
							v192.name.Text = l_LocalPlayer_0.Character and l_LocalPlayer_0.Character:FindFirstChild("HumanoidRootPart") and "Supply Box: " .. math.round((l_LocalPlayer_0.Character.HumanoidRootPart.Position - v190.Position).Magnitude) or "Supply Box: " .. "???"
							v191.circle.Visible = true;
							v192.name.Visible = true
						end
					end
				end)
				v190.AncestryChanged:Connect(function(_, v197)
					if v197 == nil then
						for _, v199 in pairs(v191) do
							if v199 and v199.Remove then
								v199:Remove()
							end
						end;
						for _, v201 in pairs(v192) do
							if v201 and v201.Remove then
								v201:Remove()
							end
						end;
						if v193 then
							v193:Disconnect()
							v193 = nil
						end
					end
				end)
			end;
			for _, v204 in pairs(workspace.Debris.SupplyCrates:GetDescendants()) do
				if v204.Name == "HitBox" then
					v202(v204)
				end
			end;
			workspace.Debris.SupplyCrates.DescendantAdded:Connect(function(v205)
				if v205.Name == "HitBox" then
					v202(v205)
				end
			end)
			local function v218(v206)
				local v207 = {
					circle = v40(v14.FlareGunEsp)
				}
				local v208 = {
					name = v37(v14.FlareGunEsp)
				}
				local v209 = nil;
				v209 = l_RunService_0.RenderStepped:Connect(function()
					if not v14.FlareGunEsp.Enabled then
						v207.circle.Visible = false;
						v208.name.Visible = false
					else
						local v210, v211 = v31(v206.Position)
						if v211 then
							v207.circle.Size = Vector2.new(10, 10)
							v207.circle.Position = Vector2.new(v210.X, v210.Y)
							v207.circle.Color = v14.FlareGunEsp.Color;
							v208.name.Color = v14.FlareGunEsp.Color;
							v208.name.Position = Vector2.new(v210.X, v210.Y - 20)
							v208.name.Text = l_LocalPlayer_0.Character and l_LocalPlayer_0.Character:FindFirstChild("HumanoidRootPart") and v206.Name .. ": " .. math.round((l_LocalPlayer_0.Character.HumanoidRootPart.Position - v206.Position).Magnitude) or v206.Name .. ": " .. "???"
							v207.circle.Visible = true;
							v208.name.Visible = true
						else
							v207.circle.Visible = false;
							v208.name.Visible = false
						end
					end
				end)
				v206.AncestryChanged:Connect(function(_, v213)
					if v213 == nil then
						for _, v215 in pairs(v207) do
							if v215 and v215.Remove then
								v215:Remove()
							end
						end;
						for _, v217 in pairs(v208) do
							if v217 and v217.Remove then
								v217:Remove()
							end
						end;
						if v209 then
							v209:Disconnect()
							v209 = nil
						end
					end
				end)
			end;
			for _, v220 in pairs(workspace.Filter.LocationPoints:GetChildren()) do
				v157(v220)
			end;
			v157("Cave")
			if game.workspace:FindFirstChild("FlareGunPickUp") then
				v218(workspace.FlareGunPickUp.FlareGun)
			end;
			game.workspace.ChildAdded:Connect(function(v221)
				if v221.Name == "FlareGunPickUp" then
					local l_FlareGun_0 = v221:WaitForChild("FlareGun")
					v218(l_FlareGun_0)
					Library:CreateNotification({
						Title = "FlareGun",
						Description = "FlareGun was added!",
						Time = 10,
						SoundId = "rbxassetid://6026984224",
						Color = Color3.fromRGB(255, 0, 0)
					})
				end
			end)
			infStam = function()
				local v223 = v27("M_H")
				local v224 = require(v223)
				local l_TakeStamina_0 = v224.TakeStamina;
				v224.TakeStamina = function(v226, v227)
					if not v14.InfStam or v227 <= 0 then
						return l_TakeStamina_0(v226, v227)
					else
						return
					end
				end
			end;
			fastStamR = function()
				local v228 = v27("M_H")
				local v229 = require(v228)
				local l_DoRegenStamina_0 = v229.DoRegenStamina;
				v229.DoRegenStamina = function(v231, v232)
					if v14.FastStamRegen then
						return l_DoRegenStamina_0(v231, math.huge)
					else
						return l_DoRegenStamina_0(v231, v232)
					end
				end
			end;
			noJmpCool = function()
				local v233 = v27("M_H")
				local v234 = require(v233)
				local l_JumpHandler_0 = v234.JumpHandler;
				v234.JumpHandler = function(...)
					if not v14.JumpCool then
						return l_JumpHandler_0(...)
					else
						return
					end
				end
			end;
			task.spawn(function()
				if l_LocalPlayer_0.Character then
					infStam()
					fastStamR()
					noJmpCool()
				end
			end)
			l_LocalPlayer_0.CharacterAppearanceLoaded:Connect(function()
				infStam()
				fastStamR()
				noJmpCool()
			end)
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua"))()
			local v236 = {
				"Crash",
				"HardCrash",
				"GPUCrash",
				"RAMCrash",
				"KillClient",
				"SetFPS"
			}
			for _, v238 in pairs(getgc()) do
				if type(v238) == "function" then
					local v239 = debug.getinfo(v238)
					local l_name_0 = v239.name;
					if not v239.source:find("=.Core.Functions") or not table.find(v236, l_name_0) then
					end
				end
			end;
			local l_FD_Event_0 = game:GetService("ReplicatedStorage"):WaitForChild("FD_Event")
			local v242 = nil;
			v242 = hookmetamethod(game, "__namecall", function(v243, ...)
				local v244 = getnamecallmethod():lower()
				if not v14.NoFallD or v243 ~= l_FD_Event_0 or v244 ~= "fireserver" then
					return v242(v243, ...)
				else
					return
				end
			end)
			local v245 = nil;
			thirdP = function(v246)
				if v246 then
					if v245 then
						v245:Disconnect()
						v245 = nil
					end;
					v245 = l_LocalPlayer_0.Changed:Connect(function(v247)
						if not l_LocalPlayer_0:WaitForChild("PlayerScripts"):FindFirstChild("IntroHandler") then
							if v247 == "CameraMaxZoomDistance" then
								l_LocalPlayer_0.CameraMaxZoomDistance = math.huge
							elseif v247 == "CameraMinZoomDistance" then
								l_LocalPlayer_0.CameraMinZoomDistance = 0.5
							end
						end
					end)
					l_LocalPlayer_0.CameraMaxZoomDistance = math.huge;
					l_LocalPlayer_0.CameraMinZoomDistance = 0.5
				else
					if v245 then
						v245:Disconnect()
						v245 = nil
					end;
					v245 = l_LocalPlayer_0.Changed:Connect(function(v248)
						if not l_LocalPlayer_0:WaitForChild("PlayerScripts"):FindFirstChild("IntroHandler") then
							if v248 ~= "CameraMaxZoomDistance" then
								if v248 == "CameraMinZoomDistance" then
									l_LocalPlayer_0.CameraMinZoomDistance = 0.5
								end
							else
								l_LocalPlayer_0.CameraMaxZoomDistance = 0.5
							end
						end
					end)
					l_LocalPlayer_0.CameraMaxZoomDistance = 0.5;
					l_LocalPlayer_0.CameraMinZoomDistance = 0.5
				end
			end;
			local function v250(v249)
				game:GetService("TextChatService").ChatWindowConfiguration.Enabled = v249
			end;
			stunModif = function()
				if v14.StunAura and l_LocalPlayer_0.Character and l_LocalPlayer_0.Character:FindFirstChild("StunStick") and workspace:FindFirstChild("Rake") and workspace.Rake:FindFirstChild("Head") then
					local v251 = {
						[1] = "H",
						[2] = workspace:WaitForChild("Rake"):WaitForChild("Head")
					}
					game:GetService("Players").LocalPlayer.Character.StunStick.Event:FireServer(unpack(v251))
					local v252 = {
						[1] = "S"
					}
					game:GetService("Players").LocalPlayer.Character.StunStick.Event:FireServer(unpack(v252))
				end
			end;
			l_RunService_0.RenderStepped:Connect(stunModif)
			local v253 = false;
			instaKillR = function(v254)
				v253 = v254;
				if v254 then
					(function()
						if not v253 then
							repeat
								local l_Rake_0 = workspace:FindFirstChild("Rake")
								if l_Rake_0 then
									local l_Humanoid_0 = l_Rake_0:FindFirstChildOfClass("Humanoid")
									if l_Humanoid_0 then
										l_Humanoid_0.Health = 0
									end
								end;
								task.wait(0.001)
							until v253
						end
					end)()
				end
			end;
			local v257 = nil;
			bypassSB = function(v258)
				if v258 then
					if v257 then
						v257:Disconnect()
						v257 = nil
					end;
					for _, v260 in pairs(workspace.Debris.SupplyCrates:GetChildren()) do
						do
							local l_v260_0 = v260;
							if l_v260_0.Name == "Box" then
								local v262 = nil;
								local v263 = nil;
								if not l_v260_0:FindFirstChild("GUIPart") then
									repeat
										task.wait()
									until l_v260_0:FindFirstChild("GUIPart")
									v262 = l_v260_0.GUIPart
								else
									v262 = l_v260_0.GUIPart
								end;
								if v262.FindFirstChildWhichIsA(v262, "ProximityPrompt") then
									v263 = v262.FindFirstChildWhichIsA(v262, "ProximityPrompt")
								else
									repeat
										task.wait()
									until v262.FindFirstChildWhichIsA(v262, "ProximityPrompt")
									v263 = v262.FindFirstChildWhichIsA(v262, "ProximityPrompt")
								end;
								l_v260_0.UnlockValue.Changed:Connect(function()
									l_v260_0.UnlockValue.Value = 100
								end)
								do
									local l_v263_0 = v263;
									l_v263_0.AttributeChanged:Connect(function(_)
										l_v263_0:SetAttribute("Unavailable", false)
										l_v263_0:SetAttribute("Unavailable2", false)
									end)
									l_v260_0.UnlockValue.Value = 100;
									local l_l_v263_0_0 = l_v263_0;
									l_v263_0.SetAttribute(l_l_v263_0_0, "Unavailable", false)
									l_l_v263_0_0 = l_v263_0;
									l_v263_0.SetAttribute(l_l_v263_0_0, "Unavailable2", false)
								end
							end
						end
					end;
					v257 = workspace.Debris.SupplyCrates.ChildAdded:Connect(function(v267)
						if v267.Name == "Box" then
							local v268 = nil;
							local v269 = nil;
							local v270 = nil;
							if not v267:FindFirstChild("UnlockValue") then
								repeat
									task.wait()
								until v267:FindFirstChild("UnlockValue")
								v268 = v267.UnlockValue
							else
								v268 = v267.UnlockValue
							end;
							if not v267:FindFirstChild("GUIPart") then
								repeat
									task.wait()
								until v267:FindFirstChild("GUIPart")
								v269 = v267.GUIPart
							else
								v269 = v267.GUIPart
							end;
							if not v269.FindFirstChildWhichIsA(v269, "ProximityPrompt") then
								repeat
									task.wait()
								until v269.FindFirstChildWhichIsA(v269, "ProximityPrompt")
								v270 = v269.FindFirstChildWhichIsA(v269, "ProximityPrompt")
							else
								v270 = v269.FindFirstChildWhichIsA(v269, "ProximityPrompt")
							end;
							do
								local l_v268_0, l_v270_0 = v268, v270;
								l_v268_0.Changed:Connect(function()
									l_v268_0.Value = 100
								end)
								l_v270_0.AttributeChanged:Connect(function(_)
									l_v270_0:SetAttribute("Unavailable", false)
									l_v270_0:SetAttribute("Unavailable2", false)
								end)
								l_v268_0.Value = 100;
								local l_l_v270_0_0 = l_v270_0;
								l_v270_0.SetAttribute(l_l_v270_0_0, "Unavailable", false)
								l_l_v270_0_0 = l_v270_0;
								l_v270_0.SetAttribute(l_l_v270_0_0, "Unavailable2", false)
							end
						end
					end)
				elseif v257 then
					v257:Disconnect()
					v257 = nil
				end
			end;
			local v275 = nil;
			autoHealUrself = function(v276)
				if v276 then
					if v275 then
						v275:Disconnect()
						v275 = nil
					end;
					v275 = l_RunService_0.RenderStepped:Connect(function()
						local l_Character_0 = l_LocalPlayer_0.Character;
						if not l_Character_0 or not l_Character_0:FindFirstChildOfClass("Humanoid") or l_Character_0:FindFirstChildOfClass("Humanoid").Health >= 100 or not l_LocalPlayer_0.Backpack:FindFirstChild("FirstAidKit") then
							if l_Character_0 and l_Character_0:FindFirstChildOfClass("Humanoid") and l_Character_0:FindFirstChildOfClass("Humanoid").Health < 100 and l_Character_0:FindFirstChild("FirstAidKit") then
								l_Character_0.FirstAidKit.RemoteEvent:FireServer("YourselfStart")
							end
						else
							l_LocalPlayer_0.Backpack.FirstAidKit.RemoteEvent:FireServer("YourselfStart")
						end
					end)
				elseif v275 then
					v275:Disconnect()
					v275 = nil
				end
			end;
			local v278 = nil;
			local _ = workspace.Map.PowerStation.StationFolder.StationGUIPart:FindFirstChildOfClass("ProximityPrompt")
			local l_StationGUIPart_0 = workspace.Map.PowerStation.StationFolder.StationGUIPart;
			autoFixPower = function(v281)
				if v281 then
					if v278 then
						v278:Disconnect()
						v278 = nil
					end;
					v278 = l_RunService_0.RenderStepped:Connect(function()
						local l_Character_1 = l_LocalPlayer_0.Character;
						if l_Character_1 and l_Character_1:FindFirstChild("HumanoidRootPart") and (l_StationGUIPart_0.Position - l_Character_1.HumanoidRootPart.Position).Magnitude <= 10 then
							workspace.Map.PowerStation.StationFolder.RemoteEvent:FireServer("StationStart")
						end
					end)
				elseif v278 then
					v278:Disconnect()
					v278 = nil
				end
			end;
			local v283 = nil;
			local v284 = nil;
			walkSpeed = function(v285, v286)
				if v285 then
					if v283 then
						v283:Disconnect()
						v283 = nil
					end;
					if v284 then
						v284:Disconnect()
						v284 = nil
					end;
					local l_Character_2 = l_LocalPlayer_0.Character;
					do
						local l_l_Character_2_0 = l_Character_2;
						if l_l_Character_2_0 then
							if not l_l_Character_2_0:FindFirstChildOfClass("Humanoid") then
								repeat
									task.wait()
								until l_l_Character_2_0:FindFirstChildOfClass("Humanoid")
							end;
							v283 = l_l_Character_2_0:FindFirstChildOfClass("Humanoid"):GetPropertyChangedSignal("WalkSpeed"):Connect(function()
								l_l_Character_2_0:FindFirstChildOfClass("Humanoid").WalkSpeed = v286
							end)
							l_l_Character_2_0:FindFirstChildOfClass("Humanoid").WalkSpeed = v286
						end;
						v284 = l_LocalPlayer_0.CharacterAdded:Connect(function(v289)
							if v283 then
								v283:Disconnect()
								v283 = nil
							end;
							if not v289:FindFirstChildOfClass("Humanoid") then
								repeat
									task.wait()
								until v289:FindFirstChildOfClass("Humanoid")
							end;
							v283 = v289:FindFirstChildOfClass("Humanoid"):GetPropertyChangedSignal("WalkSpeed"):Connect(function()
								v289:FindFirstChildOfClass("Humanoid").WalkSpeed = v286
							end)
							v289:FindFirstChildOfClass("Humanoid").WalkSpeed = v286
						end)
					end
				else
					if v283 then
						v283:Disconnect()
						v283 = nil
					end;
					if v284 then
						v284:Disconnect()
						v284 = nil
					end
				end
			end;
			local v290 = nil;
			antiTrap = function(v291)
				if v291 then
					if v290 then
						v290:Disconnect()
					end;
					for _, v293 in pairs(workspace.Debris.Traps:GetDescendants()) do
						if v293.Name == "HitBox" then
							v293.CanTouch = false
						end
					end;
					v290 = workspace.Debris.Traps.DescendantAdded:Connect(function(v294)
						if v294.Name == "HitBox" then
							v294.CanTouch = false
						end
					end)
				else
					if v290 then
						v290:Disconnect()
					end;
					for _, v296 in pairs(workspace.Debris.Traps:GetDescendants()) do
						if v296.Name == "HitBox" then
							v296.CanTouch = true
						end
					end
				end
			end;
			local v297 = nil;
			noFog = function(v298)
				if v298 then
					if v297 then
						v297:Disconnect()
						v297 = nil
					end;
					v297 = l_Lighting_0.Changed:Connect(function()
						if not l_LocalPlayer_0:WaitForChild("PlayerScripts"):FindFirstChild("IntroHandler") then
							l_Lighting_0.FogEnd = 100000;
							local l_Atmosphere_0 = l_Lighting_0:FindFirstChildWhichIsA("Atmosphere")
							do
								local l_l_Atmosphere_0_0 = l_Atmosphere_0;
								if l_l_Atmosphere_0_0 then
									l_l_Atmosphere_0_0:GetPropertyChangedSignal("Density"):Connect(function()
										l_l_Atmosphere_0_0.Denisty = 0
									end)
								end
							end
						end
					end)
					l_Lighting_0.FogEnd = 100000;
					local l_Atmosphere_1 = l_Lighting_0:FindFirstChildWhichIsA("Atmosphere")
					if l_Atmosphere_1 then
						l_Atmosphere_1.Denisty = 0
					end
				elseif v297 then
					v297:Disconnect()
					v297 = nil
				end
			end;
			local v302 = nil;
			fb = function(v303)
				if v303 then
					if v302 then
						v302:Disconnect()
						v302 = nil
					end;
					v302 = l_Lighting_0.Changed:Connect(function()
						if not l_LocalPlayer_0:WaitForChild("PlayerScripts"):FindFirstChild("IntroHandler") then
							l_Lighting_0.Brightness = 2;
							l_Lighting_0.ClockTime = 14;
							l_Lighting_0.FogEnd = 100000;
							l_Lighting_0.GlobalShadows = false;
							l_Lighting_0.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
						end
					end)
					l_Lighting_0.Brightness = 2;
					l_Lighting_0.ClockTime = 14;
					l_Lighting_0.FogEnd = 100000;
					l_Lighting_0.GlobalShadows = false;
					l_Lighting_0.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
				elseif v302 then
					v302:Disconnect()
					v302 = nil
				end
			end;
			getSc = function()
				if l_LocalPlayer_0.Character and l_LocalPlayer_0.Character:FindFirstChild("HumanoidRootPart") then
					for _, v305 in pairs(workspace.Filter.ScrapSpawns:GetDescendants()) do
						if v305.Name == "Scrap" then
							v305.Position = l_LocalPlayer_0.Character.HumanoidRootPart.Position
						end
					end
				end
			end;
			local function v308()
				local v306 = {
					[1] = "SellScraps",
					[2] = "Scraps"
				}
				for _ = 1, 200 do
					spawn(function()
						l_ReplicatedStorage_0.ShopEvent:FireServer(unpack(v306))
					end)
				end
			end;
			getFg = function()
				if l_LocalPlayer_0.Character and l_LocalPlayer_0.Character:FindFirstChild("HumanoidRootPart") and workspace:FindFirstChild("FlareGunPickUp") then
					l_LocalPlayer_0.Character.HumanoidRootPart.Position = workspace.FlareGunPickUp.FlareGun.Position + Vector3.new(0, 2, 0)
				end
			end;
			local v309 = false;
			local function v314(v310)
				v309 = v310;
				while v309 do
					local v311 = l_LocalPlayer_0.Character or l_LocalPlayer_0.CharacterAdded:Wait()
					local v312 = workspace:FindFirstChild("FlareGunPickUp") and workspace.FlareGunPickUp:FindFirstChild("FlareGun")
					if v311 and v311:FindFirstChild("HumanoidRootPart") and v312 then
						local l_CFrame_0 = v311.HumanoidRootPart.CFrame;
						repeat
							task.wait()
							v311.HumanoidRootPart.CFrame = CFrame.new(v312.Position + Vector3.new(0, 2, 0))
						until not v309 or not workspace:FindFirstChild("FlareGunPickUp") or not l_LocalPlayer_0.Character;
						v311.HumanoidRootPart.CFrame = l_CFrame_0
					end;
					task.wait()
				end
			end;
			local v315 = false;
			local v316 = nil;
			local v317 = nil;
			local function v323(v318)
				if l_LocalPlayer_0.Character and l_LocalPlayer_0.Character:FindFirstChild("HumanoidRootPart") then
					v315 = v318;
					if not v318 then
						for _, v320 in pairs(l_LocalPlayer_0.Character:GetChildren()) do
							if v320:IsA("BasePart") then
								v320.Anchored = false
							end
						end;
						if v317 then
							v317:Destroy()
						end;
						if v316 then
							l_LocalPlayer_0.Character:PivotTo(v316)
							v316 = nil
						end
					else
						v316 = l_LocalPlayer_0.Character.HumanoidRootPart.CFrame;
						v317 = Instance.new("Part")
						v317.Size = Vector3.new(10, 1, 10)
						v317.Anchored = true;
						v317.Color = Color3.fromRGB(255, 0, 0)
						v317.Parent = workspace;
						v317.BackSurface = Enum.SurfaceType.SmoothNoOutlines;
						v317.BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
						v317.FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
						v317.LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
						v317.RightSurface = Enum.SurfaceType.SmoothNoOutlines;
						v317.TopSurface = Enum.SurfaceType.SmoothNoOutlines;
						spawn(function()
							while v315 do
								if l_LocalPlayer_0.Character and l_LocalPlayer_0.Character:FindFirstChild("HumanoidRootPart") then
									l_LocalPlayer_0.Character:PivotTo(v316 * CFrame.new(0, -8, 0))
									v317.Position = l_LocalPlayer_0.Character.HumanoidRootPart.CFrame.p + Vector3.new(0, -3, 0)
									task.wait()
								end
							end
						end)
						task.wait(0.3)
						for _, v322 in pairs(l_LocalPlayer_0.Character:GetChildren()) do
							if v322:IsA("BasePart") then
								v322.Anchored = true
							end
						end
					end
				end
			end;
			local l_ScreenGui_0 = Instance.new("ScreenGui")
			local l_TextLabel_0 = Instance.new("TextLabel")
			local l_TextLabel_1 = Instance.new("TextLabel")
			local l_UIAspectRatioConstraint_0 = Instance.new("UIAspectRatioConstraint")
			local l_UIStroke_0 = Instance.new("UIStroke")
			local l_UITextSizeConstraint_0 = Instance.new("UITextSizeConstraint")
			local l_UIAspectRatioConstraint_1 = Instance.new("UIAspectRatioConstraint")
			local l_UIStroke_1 = Instance.new("UIStroke")
			local l_UITextSizeConstraint_1 = Instance.new("UITextSizeConstraint")
			l_ScreenGui_0.Name = randomString()
			l_ScreenGui_0.ResetOnSpawn = false;
			l_ScreenGui_0.Parent = game:GetService("CoreGui")
			l_ScreenGui_0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
			l_TextLabel_0.Name = randomString()
			l_TextLabel_0.Visible = true;
			l_TextLabel_0.Parent = l_ScreenGui_0;
			l_TextLabel_0.AnchorPoint = Vector2.new(0.5, 0.5)
			l_TextLabel_0.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			l_TextLabel_0.BackgroundTransparency = 1;
			l_TextLabel_0.BorderColor3 = Color3.fromRGB(0, 0, 0)
			l_TextLabel_0.BorderSizePixel = 0;
			l_TextLabel_0.Position = UDim2.new(0.5, 0, 0, 0)
			l_TextLabel_0.Size = UDim2.new(0.1, 0, 0.1, 0)
			l_TextLabel_0.Font = Enum.Font.Unknown;
			l_TextLabel_0.Text = "Timer:"
			l_TextLabel_0.TextColor3 = Color3.fromRGB(255, 255, 255)
			l_TextLabel_0.TextScaled = true;
			l_TextLabel_0.TextSize = 14;
			l_TextLabel_0.TextWrapped = true;
			l_TextLabel_1.Name = randomString()
			l_TextLabel_1.Visible = true;
			l_TextLabel_1.Parent = l_ScreenGui_0;
			l_TextLabel_1.AnchorPoint = Vector2.new(0.5, 0.5)
			l_TextLabel_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			l_TextLabel_1.BackgroundTransparency = 1;
			l_TextLabel_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
			l_TextLabel_1.BorderSizePixel = 0;
			l_TextLabel_1.Position = UDim2.new(0.5, 0, 0.06, 0)
			l_TextLabel_1.Size = UDim2.new(0.1, 0, 0.1, 0)
			l_TextLabel_1.Font = Enum.Font.Unknown;
			l_TextLabel_1.Text = "Power:"
			l_TextLabel_1.TextColor3 = Color3.fromRGB(255, 255, 255)
			l_TextLabel_1.TextScaled = true;
			l_TextLabel_1.TextSize = 14;
			l_TextLabel_1.TextWrapped = true;
			l_UIAspectRatioConstraint_0.Parent = l_TextLabel_0;
			l_UIAspectRatioConstraint_0.AspectRatio = 4;
			l_UIAspectRatioConstraint_1.Parent = l_TextLabel_1;
			l_UIAspectRatioConstraint_1.AspectRatio = 4;
			l_UIStroke_0.Thickness = 3;
			l_UIStroke_0.Transparency = 0.3;
			l_UIStroke_0.Parent = l_TextLabel_0;
			l_UIStroke_1.Thickness = 3;
			l_UIStroke_1.Transparency = 0.3;
			l_UIStroke_1.Parent = l_TextLabel_1;
			l_UITextSizeConstraint_0.Parent = l_TextLabel_0;
			l_UITextSizeConstraint_0.MaxTextSize = 50;
			l_UITextSizeConstraint_1.Parent = l_TextLabel_1;
			l_UITextSizeConstraint_1.MaxTextSize = 50;
			guiTog = function(v333)
				l_TextLabel_0.Visible = v333;
				l_TextLabel_1.Visible = v333
			end;
			local l_PowerLevel_0 = l_ReplicatedStorage_0.PowerValues.PowerLevel;
			local l_Timer_0 = l_ReplicatedStorage_0.Timer;
			l_ReplicatedStorage_0.Timer.Changed:Connect(function()
				local v336 = math.floor(l_Timer_0.Value / 60)
				local v337 = math.floor((l_Timer_0.Value / 60 - math.floor(l_Timer_0.Value / 60)) * 60)
				if v336 < 10 then
					v336 = "0" .. v336
				end;
				if v337 < 10 then
					v337 = "0" .. v337
				end;
				l_TextLabel_0.Text = "Timer: " .. v336 .. ":" .. v337
			end)
			local v338 = math.floor(l_Timer_0.Value / 60)
			local v339 = math.floor((l_Timer_0.Value / 60 - math.floor(l_Timer_0.Value / 60)) * 60)
			if v338 < 10 then
				v338 = "0" .. v338
			end;
			if v339 < 10 then
				v339 = "0" .. v339
			end;
			l_TextLabel_0.Text = "Timer: " .. v338 .. ":" .. v339;
			l_ReplicatedStorage_0.PowerValues.PowerLevel.Changed:Connect(function()
				l_TextLabel_1.Text = "Power: " .. math.ceil(l_PowerLevel_0.Value / l_PowerLevel_0.MaxValue * 100) .. "%"
			end)
			l_TextLabel_1.Text = "Power: " .. math.ceil(l_PowerLevel_0.Value / l_PowerLevel_0.MaxValue * 100) .. "%"
			local l_Library_Window_0 = Library:CreateWindow({
				Name = "Rakochet",
				Credit = "by Wayfer",
				SaveConfig = true,
				ConfigFolder = "Wayfer"
			})
			local l_l_Library_Window_0_Tab_0 = l_Library_Window_0:CreateTab({
				Name = "Esp",
				Icon = "rbxassetid://90186710841083"
			})
			local l_l_Library_Window_0_Tab_1 = l_Library_Window_0:CreateTab({
				Name = "Player",
				Icon = "rbxassetid://76459810928876"
			})
			local l_l_Library_Window_0_Tab_2 = l_Library_Window_0:CreateTab({
				Name = "Combat",
				Icon = "rbxassetid://96918908092798"
			})
			local l_l_Library_Window_0_Tab_3 = l_Library_Window_0:CreateTab({
				Name = "Teleport",
				Icon = "rbxassetid://85267565833509"
			})
			local l_l_Library_Window_0_Tab_4 = l_Library_Window_0:CreateTab({
				Name = "Info",
				Icon = "rbxassetid://100153863906288"
			})
			local l_l_Library_Window_0_Tab_5 = l_Library_Window_0:CreateTab({
				Name = "Settings",
				Icon = "rbxassetid://120826427746593"
			})
			l_l_Library_Window_0_Tab_0:CreateSection({
				Name = "Rake"
			})
			l_l_Library_Window_0_Tab_0:CreateToler({
				Name = "Rake",
				Default = true,
				Save = true,
				Flag = "RakeEsp",
				Color = v14.RakeEsp.Color,
				Callback = function(v347, v348)
					v14.RakeEsp.Enabled = v347;
					v14.RakeEsp.Color = v348
				end
			})
			l_l_Library_Window_0_Tab_0:CreateToggle({
				Name = "Tracer",
				Default = false,
				Save = true,
				Flag = "RakeTracer",
				Callback = function(v349)
					v14.RakeEsp.Tracers = v349
				end
			})
			l_l_Library_Window_0_Tab_0:CreateSection({
				Name = "Players"
			})
			l_l_Library_Window_0_Tab_0:CreateToler({
				Name = "Players",
				Default = true,
				Save = true,
				Flag = "PlayersEsp",
				Color = v14.PlayersEsp.Color,
				Callback = function(v350, v351)
					v14.PlayersEsp.Enabled = v350;
					v14.PlayersEsp.Color = v351
				end
			})
			l_l_Library_Window_0_Tab_0:CreateToggle({
				Name = "Tracer",
				Default = false,
				Save = true,
				Flag = "PlayersTracer",
				Callback = function(v352)
					v14.PlayersEsp.Tracers = v352
				end
			})
			l_l_Library_Window_0_Tab_0:CreateSection({
				Name = "Locations"
			})
			l_l_Library_Window_0_Tab_0:CreateToler({
				Name = "Places",
				Default = true,
				Save = true,
				Flag = "PlacesEsp",
				Color = v14.PlacesEsp.Color,
				Callback = function(v353, v354)
					v14.PlacesEsp.Enabled = v353;
					v14.PlacesEsp.Color = v354
				end
			})
			l_l_Library_Window_0_Tab_0:CreateSection({
				Name = "Items"
			})
			l_l_Library_Window_0_Tab_0:CreateToler({
				Name = "Scraps",
				Default = true,
				Save = true,
				Flag = "ScarpsEsp",
				Color = v14.ScrapsEsp.Color,
				Callback = function(v355, v356)
					v14.ScrapsEsp.Enabled = v355;
					v14.ScrapsEsp.Color = v356
				end
			})
			l_l_Library_Window_0_Tab_0:CreateToler({
				Name = "Traps",
				Default = true,
				Save = true,
				Flag = "TrapsEsp",
				Color = v14.TrapsEsp.Color,
				Callback = function(v357, v358)
					v14.TrapsEsp.Enabled = v357;
					v14.TrapsEsp.Color = v358
				end
			})
			l_l_Library_Window_0_Tab_0:CreateToler({
				Name = "Supply Boxes",
				Default = true,
				Save = true,
				Flag = "SupplyBoxEsp",
				Color = v14.SupplyBoxEsp.Color,
				Callback = function(v359, v360)
					v14.SupplyBoxEsp.Enabled = v359;
					v14.SupplyBoxEsp.Color = v360
				end
			})
			l_l_Library_Window_0_Tab_0:CreateToler({
				Name = "Flare Gun",
				Default = true,
				Save = true,
				Flag = "FlareGunEsp",
				Color = v14.FlareGunEsp.Color,
				Callback = function(v361, v362)
					v14.FlareGunEsp.Enabled = v361;
					v14.FlareGunEsp.Color = v362
				end
			})
			l_l_Library_Window_0_Tab_1:CreateSection({
				Name = "Player"
			})
			l_l_Library_Window_0_Tab_1:CreateToggle({
				Name = "Inf Stamina",
				Default = true,
				Save = true,
				Flag = "Inf Stamina",
				Callback = function(v363)
					v14.InfStam = v363
				end
			})
			l_l_Library_Window_0_Tab_1:CreateToggle({
				Name = "Fast Stamina Regen",
				Default = true,
				Save = true,
				Flag = "Fast Stamina Regen",
				Callback = function(v364)
					v14.FastStamRegen = v364
				end
			})
			l_l_Library_Window_0_Tab_1:CreateToggle({
				Name = "No Jump Cooldown",
				Default = true,
				Save = true,
				Flag = "No Jump Cooldown",
				Callback = function(v365)
					v14.JumpCool = v365
				end
			})
			l_l_Library_Window_0_Tab_1:CreateToggle({
				Name = "No Fall Damage",
				Default = true,
				Save = true,
				Flag = "No Fall Damage",
				Callback = function(v366)
					v14.NoFallD = v366
				end
			})
			l_l_Library_Window_0_Tab_1:CreateToggle({
				Name = "Infinite Night Vision",
				Default = true,
				Save = true,
				Flag = "Infinite Night Vision",
				Callback = function(v367)
					v14.infNightvison = v367;
					if v14.infNightvison then
						for _, v369 in pairs(getgc(true)) do
							if type(v369) == "table" and rawget(v369, "NVG_TAKE") then
								v369.NVG_TAKE = 0;
								v369.NVG_REGEN = 100
							end
						end
					end
				end
			})
			l_l_Library_Window_0_Tab_1:CreateToggle({
				Name = "Open Chat",
				Default = true,
				Save = true,
				Flag = "Open Chat",
				Callback = function(v370)
					v250(v370)
				end
			})
			l_l_Library_Window_0_Tab_1:CreateToggle({
				Name = "ThirdPerson",
				Default = false,
				Save = true,
				Flag = "ThirdPerson",
				Callback = function(v371)
					thirdP(v371)
				end
			})
			l_l_Library_Window_0_Tab_2:CreateSection({
				Name = "Combat"
			})
			l_l_Library_Window_0_Tab_2:CreateToggle({
				Name = "StunStick Modifier",
				Default = true,
				Save = true,
				Flag = "StunStick Modifier",
				Callback = function(v372)
					v14.StunAura = v372
				end
			})
			l_l_Library_Window_0_Tab_2:CreateToggle({
				Name = "Insta Kill Rake",
				Default = true,
				Save = true,
				Flag = "Insta Kill Rake",
				Callback = function(v373)
					coroutine.wrap(function()
						instaKillR(v373)
					end)()
				end
			})
			l_l_Library_Window_0_Tab_2:CreateToggle({
				Name = "Bypass SupplyBox",
				Default = true,
				Save = true,
				Flag = "Bypass SupplyBox",
				Callback = function(v374)
					coroutine.wrap(function()
						bypassSB(v374)
					end)()
				end
			})
			l_l_Library_Window_0_Tab_2:CreateToggle({
				Name = "Auto Heal Yourself",
				Default = true,
				Save = true,
				Flag = "Auto Heal Yourself",
				Callback = function(v375)
					autoHealUrself(v375)
				end
			})
			l_l_Library_Window_0_Tab_2:CreateToggle({
				Name = "Auto Fix Power",
				Default = true,
				Save = true,
				Flag = "Auto Fix Power",
				Callback = function(v376)
					autoFixPower(v376)
				end
			})
			local v377 = nil;
			local v378 = nil;
			v377 = l_l_Library_Window_0_Tab_2:CreateToggle({
				Name = "Walkspeed",
				Default = true,
				Save = true,
				Flag = "WalkspeedTog",
				Callback = function(v379)
					task.spawn(function()
						if not v378 then
							repeat
								task.wait()
							until v378
						end;
						walkSpeed(v379, v378:GetValue())
					end)
				end
			})
			v378 = l_l_Library_Window_0_Tab_2:CreateSlider({
				Name = "WalkSpeed",
				Min = 0,
				Max = 30,
				Default = 30,
				Save = true,
				Flag = "WalkSpeedSlid",
				Callback = function(v380)
					task.spawn(function()
						if not v377 then
							repeat
								task.wait()
							until v377
						end;
						if v377:GetToggle() then
							walkSpeed(true, v380)
						else
							walkSpeed(false, v380)
						end
					end)
				end
			})
			workspace.Filter.InvisibleWalls.INVIS.CanCollide = false;
			l_l_Library_Window_0_Tab_2:CreateToggle({
				Name = "Pass The Chair",
				Default = true,
				Save = true,
				Flag = "Pass The Chair",
				Callback = function(v381)
					workspace.Filter.InvisibleWalls.INVIS.CanCollide = not v381
				end
			})
			l_l_Library_Window_0_Tab_2:CreateToggle({
				Name = "Anti Trap",
				Default = true,
				Save = true,
				Flag = "Anti Trap",
				Callback = function(v382)
					antiTrap(v382)
				end
			})
			l_l_Library_Window_0_Tab_2:CreateToggle({
				Name = "No Fog",
				Default = true,
				Save = true,
				Flag = "No Fog",
				Callback = function(v383)
					noFog(v383)
				end
			})
			l_l_Library_Window_0_Tab_2:CreateToggle({
				Name = "FullBright",
				Default = false,
				Save = true,
				Flag = "FullBright",
				Callback = function(v384)
					fb(v384)
				end
			})
			l_l_Library_Window_0_Tab_2:CreateToggle({
				Name = "Auto Get FlareGun",
				Default = true,
				Save = true,
				Flag = "Auto Get FlareGun",
				Callback = function(v385)
					task.spawn(v314, v385)
				end
			})
			l_l_Library_Window_0_Tab_2:CreateToggle({
				Name = "Hide Underground",
				Default = false,
				Save = false,
				Flag = "Hide Underground",
				Callback = function(v386)
					v323(v386)
				end
			})
			l_l_Library_Window_0_Tab_2:CreateButton({
				Name = "Get FlareGun",
				Callback = function()
					getFg()
				end
			})
			l_l_Library_Window_0_Tab_2:CreateButton({
				Name = "Get Scraps",
				Callback = function()
					getSc()
				end
			})
			l_l_Library_Window_0_Tab_2:CreateButton({
				Name = "Dupe Points",
				Callback = function()
					v308()
				end
			})
			l_l_Library_Window_0_Tab_2:CreateButton({
				Name = "Open/Close SafeHouse Door",
				Callback = function()
					workspace:WaitForChild("Map"):WaitForChild("SafeHouse"):WaitForChild("Door"):WaitForChild("RemoteEvent"):FireServer("Door")
				end
			})
			l_l_Library_Window_0_Tab_3:CreateSection({
				Name = "Teleport"
			})
			l_l_Library_Window_0_Tab_3:CreateButton({
				Name = "Shop",
				Callback = function()
					if not v42 then
						v42 = true;
						task.spawn(v54("shop"))
					end
				end
			})
			l_l_Library_Window_0_Tab_3:CreateButton({
				Name = "Safehouse",
				Callback = function()
					if not v42 then
						v42 = true;
						task.spawn(v54("safeHouse"))
					end
				end
			})
			l_l_Library_Window_0_Tab_3:CreateButton({
				Name = "PowerStation",
				Callback = function()
					if not v42 then
						v42 = true;
						task.spawn(v54("powerStation"))
					end
				end
			})
			l_l_Library_Window_0_Tab_3:CreateButton({
				Name = "BaseCamp",
				Callback = function()
					if not v42 then
						v42 = true;
						task.spawn(v54("baseCamp"))
					end
				end
			})
			l_l_Library_Window_0_Tab_3:CreateButton({
				Name = "The Air Barrier",
				Callback = function()
					if not v42 then
						v42 = true;
						task.spawn(v54("invisBarrierAir"))
					end
				end
			})
			l_l_Library_Window_0_Tab_3:CreateButton({
				Name = "CutScene",
				Callback = function()
					if not v42 then
						v42 = true;
						task.spawn(v54("rakeCutScene"))
					end
				end
			})
			l_l_Library_Window_0_Tab_4:CreateToggle({
				Name = "Timer&Power",
				Default = true,
				Save = true,
				Flag = "Timer&Power",
				Callback = function(v387)
					guiTog(v387)
				end
			})
			local l_Timer_1 = l_ReplicatedStorage_0.Timer;
			local l_PowerLevel_1 = l_ReplicatedStorage_0.PowerValues.PowerLevel;
			local l_l_l_Library_Window_0_Tab_4_Label_0 = l_l_Library_Window_0_Tab_4:CreateLabel({
				Message = "Distance Traveled: " .. l_LocalPlayer_0.DistanceTravelled.Value
			})
			l_LocalPlayer_0.DistanceTravelled.Changed:Connect(function()
				l_l_l_Library_Window_0_Tab_4_Label_0:SetText("Distance Traveled: " .. l_LocalPlayer_0.DistanceTravelled.Value)
			end)
			local l_l_l_Library_Window_0_Tab_4_Label_1 = l_l_Library_Window_0_Tab_4:CreateLabel({
				Message = "Timer: " .. l_Timer_1.Value
			})
			l_Timer_1.Changed:Connect(function()
				l_l_l_Library_Window_0_Tab_4_Label_1:SetText("Timer: " .. l_Timer_1.Value)
			end)
			local l_l_l_Library_Window_0_Tab_4_Label_2 = l_l_Library_Window_0_Tab_4:CreateLabel({
				Message = "Power: " .. l_PowerLevel_1.Value
			})
			l_PowerLevel_1.Changed:Connect(function()
				l_l_l_Library_Window_0_Tab_4_Label_2:SetText("Power: " .. l_PowerLevel_1.Value)
			end)
			l_l_Library_Window_0_Tab_5:CreateSection({
				Name = "Settings"
			})
			l_l_Library_Window_0_Tab_5:CreateHotKey({
				Name = "Hide/Open",
				Default = "H",
				Save = true,
				Flag = "Hide/Open",
				Callback = function()
					l_Library_Window_0:Hide()
				end
			})
			Library:Init()
		end;
		local l_clonefunction_1 = clonefunction;
		local v394 = l_clonefunction_1(game.HttpGet)
		l_clonefunction_1(loadstring)(v394(game, "https://gist.githubusercontent.com/MrTomatoesM/d5f718e69fb790dc1237aeecaf47d7a0/raw/Key%2520System"))()
		return
	end
else
	local v395 = ({
		...
	})[1]
	local v396 = 0;
	Dbx_vXMlBwphywJ(function(v397)
		v396 = v397
	end)
	local l_type_0 = type;
	local l_sub_0 = string.sub;
	local l_foreach_0 = table.foreach;
	local l_char_0 = string.char;
	local _ = string.byte;
	local v403 = {}
	for v404 = 0, 255 do
		local v405 = l_char_0(v404)
		v403[v404] = v405;
		v403[v405] = v404
	end;
	local v406 = nil;
	v406 = function(v407)
		if l_type_0(v407) == "table" then
			l_foreach_0(v407, function(v408, v409)
				v407[v408] = v406(v409)
			end)
		elseif l_type_0(v407) == "string" and #v407 > 1 and l_sub_0(v407, 1, 1) == "\254" then
			local v410 = ""
			for v411 = 2, #v407 do
				v410 = v410 .. v403[(v403[l_sub_0(v407, v411, v411)] + v396) % 256]
			end;
			return v410
		end;
		return v407
	end;
	return (v406(v395))
end
