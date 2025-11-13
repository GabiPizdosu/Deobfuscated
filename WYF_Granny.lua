--[[
    code improved by me
   want to deobfuscate MoonSec V3 ?
   Discord: discord.gg/deobfuscate
   Paypal,Crypto : https://xerra.sellhub.cx/product/scene/

]]
local function start()
	local clonefunc = clonefunction
	local HttpGet = clonefunc(game.HttpGet)
	local Loadstr = clonefunc(loadstring)
	local Players = game:GetService("Players")
    local Workspace = game:GetService("Workspace")
	local LocalPlayer = Players.LocalPlayer
	local CurrentCamera = game:GetService("Workspace").CurrentCamera
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RunService = game:GetService("RunService")
	--local L_16_ = (syn and L_12_(syn.request) or http and L_12_(http.request) or L_12_(http_request) or fluxus and L_12_(fluxus.request) or L_12_(request))({
	--	Url = "https://discord.com/api/webhooks/1405731801732874351/lZS_unNPEYMb7LQcTldHiAY70gprUn0oJcaUPDkC6XpyKzccS7MuvENDzB4Wj2mAdTZG",
	--	Method = "POST",
	--	Headers = {
	--		["Content-type"] = "application/json"
	--	},
	--	Body = L_15_(L_13_, {
	--		content = "",
	--		embeds = {
	--			{
	--				title = "Granny",
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
	--						value = "https://www.roblox.com/users/" .. L_11_.UserId .. "/profile",
	--						inline = true
	--					},
	--					{
	--						name = "Username:",
	--						value = L_11_.Name,
	--						inline = true
	--					},
	--					{
	--						name = "Account Age:",
	--						value = "Days: " .. L_11_.AccountAge,
	--						inline = true
	--					}
	--				}
	--			}
	--		}
	--	})
	--})
	function L_11_(L_39_arg0)
		local L_40_, L_41_ = CurrentCamera:WorldToViewportPoint(L_39_arg0)
		return Vector2.new(L_40_.X, L_40_.Y), L_41_, L_40_.Z
	end
	function L_12_(L_42_arg0)
		local L_43_ = Drawing.new("Square")
		L_43_.Visible = false
		L_43_.Color = L_42_arg0.Color
		L_43_.Transparency = 1
		L_43_.Thickness = 1
		L_43_.Filled = false
		return L_43_
	end
	function L_13_(L_44_arg0)
		local L_45_ = Drawing.new("Text")
		L_45_.Visible = false
		L_45_.Color = L_44_arg0.Color
		L_45_.Transparency = 1
		L_45_.Font = 2
		L_45_.Center = true
		L_45_.OutlineColor = Color3.new(0, 0, 0)
		L_45_.Size = 15
		L_45_.Outline = true
		return L_45_
	end
	function L_14_(L_46_arg0)
		local L_47_ = Drawing.new("Circle")
		L_47_.Visible = false
		L_47_.Color = L_46_arg0.Color
		L_47_.Transparency = 1
		L_47_.Thickness = 1
		L_47_.Filled = true
		L_47_.Radius = 2
		return L_47_
	end
	Config = {
		Map = "Map",
		EnemyEsp = {
			Enabled = true,
			Color = Color3.fromRGB(255, 0, 0)
		},
		PlayersEsp = {
			Enabled = true,
			Color = Color3.fromRGB(255, 255, 255)
		},
		ToolEsp = {
			Enabled = true,
			Color = Color3.fromRGB(0, 0, 255)
		},
		TrapsEsp = {
			Enabled = true,
			Color = Color3.fromRGB(205, 127, 50)
		},
		ExitsEsp = {
			Enabled = true,
			Color = Color3.fromRGB(255, 255, 255)
		},
		SpectatorGui = false,
		AutoShoot = false,
		AutoShootP = false,
		AutoKill = false
	}
	local function L_17_func()
		while task.wait() do
			if Workspace:FindFirstChild("Map") then
				if Workspace.Map:FindFirstChild("House") then
					Config.Map = "House"
				elseif not Workspace.Map:FindFirstChild("House easy") then
					if Workspace.Map:FindFirstChild("House II") then
						Config.Map = "House II"
					elseif not Workspace.Map:FindFirstChild("House II easy") then
						if not Workspace.Map:FindFirstChild("Mansion") then
							if not Workspace.Map:FindFirstChild("Mansion easy") then
								if not Workspace.Map:FindFirstChild("School") then
									if Workspace.Map:FindFirstChild("Ski resort") then
										Config.Map = "Ski resort"
									elseif Workspace.Map:FindFirstChild("Cemetery") then
										Config.Map = "Cemetery"
									else
										Config.Map = "Cemetery"
									end
								else
									Config.Map = "School"
								end
							else
								Config.Map = "Mansion easy"
							end
						else
							Config.Map = "Mansion"
						end
					else
						Config.Map = "House II easy"
					end
				else
					Config.Map = "House easy"
				end
			end
		end
	end
	if LocalPlayer.UserId == 4565102501 then
		Config.CanSee = true
		Config.OnScreen = true
	end
	function L_16_(L_48_arg0)
		local L_49_ = {
			box = L_12_(Config.PlayersEsp)
		}
		local L_50_ = {
			name = L_13_(Config.PlayersEsp)
		}
		local L_51_ = nil
		L_51_ = RunService.RenderStepped:Connect(function()
			if not L_48_arg0.Character or not L_48_arg0.Character:FindFirstChildOfClass("Humanoid") or not L_48_arg0.Character:FindFirstChild("Head") or not L_48_arg0.Character:FindFirstChild("HumanoidRootPart") or L_48_arg0.Character:FindFirstChildOfClass("Humanoid").Health <= 0 then
				L_49_.box.Visible = false
				L_50_.name.Visible = false
			else
				local L_52_ = L_48_arg0.Character and L_48_arg0.Character:FindFirstChild("HumanoidRootPart")
				local L_53_ = L_48_arg0.Character and L_48_arg0.Character:FindFirstChild("Head")
				local L_54_, L_55_, L_56_ = L_11_(L_52_.Position)
				local L_57_ = L_53_ and L_11_(L_53_.Position + Vector3.new(0, 0.5, 0))
				local L_58_ = L_52_ and L_11_(L_52_.Position - Vector3.new(0, 3, 0))
				if not L_55_ then
					L_49_.box.Visible = false
					L_50_.name.Visible = false
				else
					L_49_.box.Size = Vector2.new(1000 / L_56_, L_57_.Y - L_58_.Y)
					L_49_.box.Position = Vector2.new(L_54_.X - L_49_.box.Size.X / 2, L_54_.Y - L_49_.box.Size.Y / 2)
					L_50_.name.Position = Vector2.new(L_49_.box.Position.X + L_49_.box.Size.X / 2, L_49_.box.Position.Y + L_49_.box.Size.Y - 20)
					if L_48_arg0.Character.Name == "Enemy" then
						if Config.EnemyEsp.Enabled then
							L_50_.name.Text = ReplicatedStorage.Game.Enemy.Character.Value
							L_49_.box.Color = Config.EnemyEsp.Color
							L_50_.name.Color = Config.EnemyEsp.Color
							L_49_.box.Visible = true
							L_50_.name.Visible = true
						else
							L_49_.box.Visible = false
							L_50_.name.Visible = false
						end
					elseif not Config.PlayersEsp.Enabled then
						L_49_.box.Visible = false
						L_50_.name.Visible = false
					else
						L_50_.name.Text = L_48_arg0.Name
						L_49_.box.Color = Config.PlayersEsp.Color
						L_50_.name.Color = Config.PlayersEsp.Color
						L_49_.box.Visible = true
						L_50_.name.Visible = true
					end
				end
			end
		end)
		Players.PlayerRemoving:Connect(function(L_59_arg0)
			if L_59_arg0 == L_48_arg0 then
				for L_60_forvar0, L_61_forvar1 in pairs(L_49_) do
					if L_61_forvar1 and L_61_forvar1.Remove then
						L_61_forvar1:Remove()
					end
				end
				for L_62_forvar0, L_63_forvar1 in pairs(L_50_) do
					if L_63_forvar1 and L_63_forvar1.Remove then
						L_63_forvar1:Remove()
					end
				end
				if L_51_ then
					L_51_:Disconnect()
					L_51_ = nil
				end
			end
		end)
	end
	for L_64_forvar0, L_65_forvar1 in pairs(Players:GetPlayers()) do
		if L_65_forvar1 ~= LocalPlayer then
			L_16_(L_65_forvar1)
		end
	end
	Players.PlayerAdded:Connect(L_16_)
	local function L_18_func(L_66_arg0)
		local L_67_ = {
			circle = L_14_(Config.ToolEsp)
		}
		local L_68_ = {
			name = L_13_(Config.ToolEsp)
		}
		local L_69_ = nil
		L_69_ = RunService.RenderStepped:Connect(function()
			if Config.ToolEsp.Enabled then
				local L_70_ = L_66_arg0:FindFirstChild("Handle")
				local L_71_ = nil
				local L_72_ = nil
				if L_70_ then
					local L_73_, L_74_ = L_11_(L_70_.Position)
					L_72_ = L_74_
					L_71_ = L_73_
				end
				if L_72_ then
					L_67_.circle.Position = L_71_
					L_68_.name.Position = Vector2.new(L_67_.circle.Position.X, L_67_.circle.Position.Y - 20)
					L_68_.name.Text = L_66_arg0.Name
					L_67_.circle.Color = Config.ToolEsp.Color
					L_68_.name.Color = Config.ToolEsp.Color
					L_67_.circle.Visible = true
					L_68_.name.Visible = true
				else
					L_67_.circle.Visible = false
					L_68_.name.Visible = false
				end
			else
				L_67_.circle.Visible = false
				L_68_.name.Visible = false
			end
		end)
		L_66_arg0.Parent.ChildRemoved:Connect(function(L_75_arg0)
			if L_66_arg0 == L_75_arg0 then
				for L_76_forvar0, L_77_forvar1 in pairs(L_67_) do
					if L_77_forvar1 and L_77_forvar1.Remove then
						L_77_forvar1:Remove()
					end
				end
				for L_78_forvar0, L_79_forvar1 in pairs(L_68_) do
					if L_79_forvar1 and L_79_forvar1.Remove then
						L_79_forvar1:Remove()
					end
				end
				if L_69_ then
					L_69_:Disconnect()
					L_69_ = nil
				end
			end
		end)
		Workspace.ChildRemoved:Connect(function(L_80_arg0)
			if L_80_arg0.Name == "Map" then
				for L_81_forvar0, L_82_forvar1 in pairs(L_67_) do
					if L_82_forvar1 and L_82_forvar1.Remove then
						L_82_forvar1:Remove()
					end
				end
				for L_83_forvar0, L_84_forvar1 in pairs(L_68_) do
					if L_84_forvar1 and L_84_forvar1.Remove then
						L_84_forvar1:Remove()
					end
				end
				if L_69_ then
					L_69_:Disconnect()
					L_69_ = nil
				end
			end
		end)
	end
	local function L_19_func(L_85_arg0)
		local L_86_ = {
			circle = L_14_(Config.TrapsEsp)
		}
		local L_87_ = {
			name = L_13_(Config.TrapsEsp)
		}
		local L_88_ = nil
		L_88_ = RunService.RenderStepped:Connect(function()
			if not Config.TrapsEsp.Enabled then
				L_86_.circle.Visible = false
				L_87_.name.Visible = false
			else
				local L_89_ = L_85_arg0:FindFirstChild("Root")
				local L_90_ = nil
				local L_91_ = nil
				if L_89_ then
					local L_92_, L_93_ = L_11_(L_89_.Position)
					L_91_ = L_93_
					L_90_ = L_92_
				end
				if not L_91_ then
					L_86_.circle.Visible = false
					L_87_.name.Visible = false
				else
					L_86_.circle.Position = L_90_
					L_87_.name.Position = Vector2.new(L_86_.circle.Position.X, L_86_.circle.Position.Y - 20)
					L_87_.name.Text = L_85_arg0.Name
					L_86_.circle.Color = Config.TrapsEsp.Color
					L_87_.name.Color = Config.TrapsEsp.Color
					L_86_.circle.Visible = true
					L_87_.name.Visible = true
				end
			end
		end)
		L_85_arg0.AncestryChanged:Connect(function(L_94_arg0, L_95_arg1)
			local L_96_ = nil
			if L_95_arg1 == L_96_ then
				for L_97_forvar0, L_98_forvar1 in pairs(L_86_) do
					if L_98_forvar1 and L_98_forvar1.Remove then
						L_98_forvar1:Remove()
					end
				end
				for L_99_forvar0, L_100_forvar1 in pairs(L_87_) do
					if L_100_forvar1 and L_100_forvar1.Remove then
						L_100_forvar1:Remove()
					end
				end
				if L_88_ then
					L_88_:Disconnect()
					L_88_ = nil
				end
			end
		end)
		Workspace.ChildRemoved:Connect(function(L_101_arg0)
			if L_101_arg0.Name == "Map" then
				for L_102_forvar0, L_103_forvar1 in pairs(L_86_) do
					if L_103_forvar1 and L_103_forvar1.Remove then
						L_103_forvar1:Remove()
					end
				end
				for L_104_forvar0, L_105_forvar1 in pairs(L_87_) do
					if L_105_forvar1 and L_105_forvar1.Remove then
						L_105_forvar1:Remove()
					end
				end
				if L_88_ then
					L_88_:Disconnect()
					L_88_ = nil
				end
			end
		end)
	end
	function startTool()
		if Workspace:FindFirstChild("Map") and Config.Map ~= "Map" and Workspace.Map:FindFirstChild(Config.Map) and Workspace.Map[Config.Map]:FindFirstChild("Tools") then
			for L_106_forvar0, L_107_forvar1 in pairs(Workspace.Map[Config.Map].Tools:GetChildren()) do
				if L_107_forvar1 then
					L_18_func(L_107_forvar1)
				end
			end
			for L_108_forvar0, L_109_forvar1 in pairs(Players:GetPlayers()) do
				do
					local L_110_ = L_109_forvar1
					if LocalPlayer ~= L_110_ then
						L_110_.CharacterAdded:Connect(function(L_112_arg0)
							repeat
								task.wait()
							until L_110_.Character
							L_112_arg0.ChildAdded:Connect(function(L_113_arg0)
								if L_113_arg0:IsA("Model") and L_113_arg0:WaitForChild("Handle") then
									L_18_func(L_113_arg0)
								end
							end)
						end)
						local L_111_ = L_110_.Character
						if L_111_ then
							L_111_.ChildAdded:Connect(function(L_114_arg0)
								if L_114_arg0:IsA("Model") and L_114_arg0:WaitForChild("Handle") then
									L_18_func(L_114_arg0)
								end
							end)
							for L_115_forvar0, L_116_forvar1 in pairs(L_111_:GetChildren()) do
								if L_116_forvar1:IsA("Model") and L_116_forvar1:FindFirstChild("Handle") then
									L_18_func(L_116_forvar1)
								end
							end
						end
					end
				end
			end
			Workspace.Map[Config.Map].Tools.ChildAdded:Connect(function(L_117_arg0)
				if L_117_arg0:WaitForChild("Handle") then
					L_18_func(L_117_arg0)
				end
			end)
			Players.PlayerAdded:Connect(function(L_118_arg0)
				L_118_arg0.CharacterAdded:Connect(function(L_119_arg0)
					repeat
						task.wait()
					until L_118_arg0.Character
					L_119_arg0.ChildAdded:Connect(function(L_120_arg0)
						if L_120_arg0:IsA("Model") and L_120_arg0:WaitForChild("Handle") then
							L_18_func(L_120_arg0)
						end
					end)
				end)
			end)
		else
			repeat
				task.wait()
			until Workspace:FindFirstChild("Map") and Config.Map ~= "wait" and Workspace.Map:FindFirstChild(Config.Map) and Workspace.Map[Config.Map]:FindFirstChild("Tools")
			for L_121_forvar0, L_122_forvar1 in pairs(Workspace.Map[Config.Map].Tools:GetChildren()) do
				if L_122_forvar1 then
					L_18_func(L_122_forvar1)
				end
			end
			for L_123_forvar0, L_124_forvar1 in pairs(Players:GetPlayers()) do
				do
					local L_125_ = L_124_forvar1
					if LocalPlayer ~= L_125_ then
						L_125_.CharacterAdded:Connect(function(L_127_arg0)
							repeat
								task.wait()
							until L_125_.Character
							L_127_arg0.ChildAdded:Connect(function(L_128_arg0)
								if L_128_arg0:IsA("Model") and L_128_arg0:WaitForChild("Handle") then
									L_18_func(L_128_arg0)
								end
							end)
						end)
						local L_126_ = L_125_.Character
						if L_126_ then
							L_126_.ChildAdded:Connect(function(L_129_arg0)
								if L_129_arg0:IsA("Model") and L_129_arg0:WaitForChild("Handle") then
									L_18_func(L_129_arg0)
								end
							end)
							for L_130_forvar0, L_131_forvar1 in pairs(L_126_:GetChildren()) do
								if L_131_forvar1:IsA("Model") and L_131_forvar1:FindFirstChild("Handle") then
									L_18_func(L_131_forvar1)
								end
							end
						end
					end
				end
			end
			Workspace.Map[Config.Map].Tools.ChildAdded:Connect(function(L_132_arg0)
				if L_132_arg0:WaitForChild("Handle") then
					L_18_func(L_132_arg0)
				end
			end)
			Players.PlayerAdded:Connect(function(L_133_arg0)
				L_133_arg0.CharacterAdded:Connect(function(L_134_arg0)
					repeat
						task.wait()
					until L_133_arg0.Character
					L_134_arg0.ChildAdded:Connect(function(L_135_arg0)
						if L_135_arg0:IsA("Model") and L_135_arg0:WaitForChild("Handle") then
							L_18_func(L_135_arg0)
						end
					end)
				end)
			end)
		end
	end
	function startTrap()
		if not Workspace:FindFirstChild("Map") or not Workspace.Map:FindFirstChild("Traps") then
			repeat
				task.wait()
			until Workspace:FindFirstChild("Map") and Workspace.Map:FindFirstChild("Traps")
			for L_136_forvar0, L_137_forvar1 in pairs(Workspace.Map.Traps:GetChildren()) do
				if L_137_forvar1 then
					L_19_func(L_137_forvar1)
				end
			end
			Workspace.Map.Traps.ChildAdded:Connect(function(L_138_arg0)
				if L_138_arg0:WaitForChild("Root") then
					L_19_func(L_138_arg0)
				end
			end)
		else
			for L_139_forvar0, L_140_forvar1 in pairs(Workspace.Map.Traps:GetChildren()) do
				if L_140_forvar1 then
					L_19_func(L_140_forvar1)
				end
			end
			Workspace.Map.Traps.ChildAdded:Connect(function(L_141_arg0)
				if L_141_arg0:WaitForChild("Root") then
					L_19_func(L_141_arg0)
				end
			end)
		end
	end
	spawn(L_17_func)
	spawn(startTool)
	spawn(startTrap)
	Workspace.ChildAdded:Connect(function(L_142_arg0)
		if L_142_arg0.Name == "Map" then
			spawn(startTool)
			spawn(startTrap)
		end
	end)
	if game:GetService("CoreGui"):FindFirstChild("Granny") then
		game:GetService("CoreGui").Granny:Destroy()
	end
	local L_20_ = Instance.new("ScreenGui")
	local L_21_ = Instance.new("ScrollingFrame")
	local L_22_ = Instance.new("UIGridLayout")
	local L_23_ = Instance.new("TextLabel")
	local L_24_ = Instance.new("UIAspectRatioConstraint")
	local L_25_ = Instance.new("UITextSizeConstraint")
	local L_26_ = Instance.new("UIAspectRatioConstraint")
	local L_27_ = Instance.new("UIStroke")
	L_20_.Name = "Granny"
	L_20_.Parent = game:GetService("CoreGui")
	L_20_.ResetOnSpawn = false
	L_20_.Enabled = false
	L_21_.Name = "Spectators"
	L_21_.Parent = L_20_
	L_21_.Active = true
	L_21_.Visible = true
	L_21_.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
	L_21_.BackgroundTransparency = 0.5
	L_21_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_21_.BorderSizePixel = 0
	L_21_.Position = UDim2.new(0.882681549, 0, 0, 0)
	L_21_.Size = UDim2.new(0.117318437, 0, 0.341365457, 0)
	L_21_.ScrollBarThickness = 0
	spawn(function()
		while task.wait() do
			L_21_.Visible = Config.SpectatorGui
		end
	end)
	L_22_.Parent = L_21_
	L_22_.SortOrder = Enum.SortOrder.LayoutOrder
	L_22_.CellPadding = UDim2.new(0, 0, 0.00300000003, 0)
	L_22_.CellSize = UDim2.new(1, 0, 0.0299999993, 0)
	L_23_.Name = "Player"
	L_23_.Parent = L_21_
	L_23_.Active = true
	L_23_.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	L_23_.BackgroundTransparency = 0.5
	L_23_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	L_23_.BorderSizePixel = 0
	L_23_.Size = UDim2.new(0, 200, 0, 50)
	L_23_.Visible = false
	L_23_.Font = Enum.Font.Nunito
	L_23_.TextColor3 = Color3.fromRGB(83, 83, 83)
	L_23_.TextScaled = true
	L_23_.TextSize = 14
	L_23_.TextWrapped = true
	L_24_.Parent = L_23_
	L_24_.AspectRatio = 4.217
	L_25_.Parent = L_23_
	L_25_.MaxTextSize = 29
	L_26_.Parent = L_21_
	L_26_.AspectRatio = 0.741
	L_27_.Parent = L_23_
	L_27_.Color = Color3.fromRGB(36, 36, 36)
	L_27_.Thickness = 2
	local function L_28_func(L_143_arg0)
		local L_144_ = L_23_:Clone()
		L_144_.Text = L_143_arg0.Name
		L_144_.Visible = true
		L_144_.Parent = L_21_
		ReplicatedStorage.Game.Spectators.ChildRemoved:Connect(function(L_145_arg0)
			if L_145_arg0 == L_143_arg0 then
				L_144_:Destroy()
			end
		end)
	end
	for L_146_forvar0, L_147_forvar1 in pairs(ReplicatedStorage.Game.Spectators:GetChildren()) do
		if L_147_forvar1 and L_147_forvar1.Name ~= LocalPlayer.Name then
			L_28_func(L_147_forvar1)
		end
	end
	ReplicatedStorage.Game.Spectators.ChildAdded:Connect(function(L_148_arg0)
		if L_148_arg0.Name ~= LocalPlayer.Name then
			L_28_func(L_148_arg0)
		end
	end)
	local function L_29_func(L_149_arg0)
		if L_149_arg0 then
			if not Config.OnScreen then
				return true
			else
				for L_150_forvar0, L_151_forvar1 in pairs(L_149_arg0:GetChildren()) do
					if L_151_forvar1:IsA("BasePart") then
						local L_152_, L_153_ = L_11_(L_151_forvar1.Position)
						if not L_153_ then
							return false
						else
							return true
						end
					end
				end
			end
		end
	end
	local function L_30_func(L_154_arg0)
		if L_154_arg0 then
			if Config.CanSee then
				if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
					local L_155_ = RaycastParams.new()
					L_155_.FilterDescendantsInstances = {
						LocalPlayer.Character
					}
					L_155_.FilterType = Enum.RaycastFilterType.Exclude
					for L_156_forvar0, L_157_forvar1 in pairs(L_154_arg0:GetChildren()) do
						if L_157_forvar1:IsA("BasePart") then
							local L_158_ = L_157_forvar1.Position - LocalPlayer.Character.HumanoidRootPart.Position
							local L_159_ = Workspace:Raycast(LocalPlayer.Character.HumanoidRootPart.Position, L_158_, L_155_)
							if L_159_ and L_159_.Instance:IsDescendantOf(L_154_arg0) then
								return true, L_159_.Instance, L_159_.Position, L_159_.Normal
							end
						end
					end
					return false
				end
			else
				return true
			end
		end
	end
	local function L_31_func()
		local L_160_ = nil
		local L_161_ = math.huge
		for L_162_forvar0, L_163_forvar1 in pairs(Players:GetPlayers()) do
			if L_163_forvar1 ~= LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and L_163_forvar1.Character and L_163_forvar1.Character:FindFirstChild("HumanoidRootPart") and L_163_forvar1.Character:FindFirstChild("Humanoid") and L_163_forvar1.Character.Humanoid.MoveDirection.Magnitude ~= 0 and L_29_func(L_163_forvar1.Character) and L_30_func(L_163_forvar1.Character) then
				local L_164_ = (L_163_forvar1.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude
				if L_164_ < L_161_ then
					L_161_ = L_164_
					L_160_ = L_163_forvar1.Character
				end
			end
		end
		return L_160_
	end
	local ShootRMT = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Shoot")
	local L_33_ = false
	local function L_34_func(L_165_arg0)
		L_33_ = L_165_arg0
		while L_33_ do
			task.wait()
		end
	end
	spawn(function()
		while task.wait() do
			if Config.AutoShoot then
				local L_166_ = L_31_func()
				local L_167_ = L_29_func(L_166_)
				local L_168_, L_169_, L_170_, L_171_ = L_30_func(L_166_)
				if L_167_ and L_168_ and L_169_ then
					local L_172_ = {
						{
							Normal = L_171_,
							Instance = L_169_,
							Position = L_170_
						},
						Ray.new(LocalPlayer.Character.HumanoidRootPart.Position, -L_171_)
					}
					ShootRMT:FireServer(unpack(L_172_))
				end
			end
		end
	end)
	local L_35_ = nil
	L_35_ = hookmetamethod(game, "__namecall", function(L_173_arg0, ...)
		local L_174_ = getnamecallmethod():lower()
		if Config.AutoShootP and L_173_arg0 == ShootRMT and L_174_ == "fireserver" and LocalPlayer.Character.Name ~= "Enemy" then
			local L_175_ = (ReplicatedStorage.Game.Enemy.Value.UpperTorso.Position - LocalPlayer.Character.UpperTorso.Position).Unit
			local L_176_ = {
				{
					Normal = L_175_,
					Instance = ReplicatedStorage.Game.Enemy.Value.Character.UpperTorso,
					Position = ReplicatedStorage.Game.Enemy.Value.Character.UpperTorso.Position
				},
				Ray.new(LocalPlayer.Character.HumanoidRootPart.Position, -L_175_)
			}
			return L_35_(L_173_arg0, unpack(L_176_))
		else
			return L_35_(L_173_arg0, ...)
		end
	end)
	function autoKill()
		local L_177_ = ReplicatedStorage.Game.Players
		while task.wait() do
			if Config.AutoKill and LocalPlayer.Character.Name == "Enemy" then
				for L_178_forvar0, Player in pairs(Players:GetPlayers()) do
					do
						if Player ~= LocalPlayer and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and Config.AutoKill then
							local L_181_ = false
							local L_182_ = nil
							do
								local L_183_ = L_181_
								L_182_ = L_177_.ChildRemoved:Connect(function(L_184_arg0)
									if L_184_arg0.Name == Player.Name then
										L_183_ = true
									end
								end)
								repeat
									task.wait()
									if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
										local L_185_ = Player.Character.HumanoidRootPart
										LocalPlayer.Character.HumanoidRootPart.CFrame = L_185_.CFrame
										ReplicatedStorage.Events.Attack:FireServer()
									end
								until L_183_ or not Config.AutoKill
								L_182_:Disconnect()
								L_182_ = nil
							end
						end
					end
				end
			end
		end
	end
	spawn(autoKill) --this code is so fucking ass holy shit
	Library = Loadstr(HttpGet(game, "https://raw.githubusercontent.com/GabiPizdosu/Deobfuscated/refs/heads/main/WYF_Lib.lua"))()
	local Window = Library:CreateWindow({
		Name = "Granny",
		Credit = "by Wayfer",
		SaveConfig = true,
		ConfigFolder = "Wayfer"
	})
	local EspT = Window:CreateTab({
		Name = "Esp",
		Icon = "rbxassetid://90186710841083"
	})
	local PlayerT = Window:CreateTab({
		Name = "Player",
		Icon = "rbxassetid://76459810928876"
	})
	EspT:CreateToler({
		Name = "Enemy",
		Default = true,
		Save = true,
		Flag = "EnemyEsp",
		Color = Color3.fromRGB(255, 0, 0),
		Callback = function(arg1, arg2)
			Config.EnemyEsp.Enabled = arg1
			Config.EnemyEsp.Color = arg2
		end
	})
	EspT:CreateToler({
		Name = "Players",
		Default = true,
		Save = true,
		Flag = "PlayersEsp",
		Color = Color3.fromRGB(255, 255, 255),
		Callback = function(arg1, arg2)
			Config.PlayersEsp.Enabled = arg1
			Config.PlayersEsp.Color = arg2
		end
	})
	EspT:CreateToler({
		Name = "Tools",
		Default = true,
		Save = true,
		Flag = "ToolsEsp",
		Color = Color3.fromRGB(0, 0, 255),
		Callback = function(arg1, arg2)
			Config.ToolEsp.Enabled = arg1
			Config.ToolEsp.Color = arg2
		end
	})
	EspT:CreateToler({
		Name = "Traps",
		Default = true,
		Save = true,
		Flag = "TrapsEsp",
		Color = Color3.fromRGB(205, 127, 50),
		Callback = function(arg1, arg2)
			Config.TrapsEsp.Enabled = arg1
			Config.TrapsEsp.Color = arg2
		end
	})
	EspT:CreateToggle({
		Name = "Spectators",
		Default = false,
		Save = true,
		Flag = "Spectators",
		Callback = function(arg)
			L_20_.Enabled = arg
		end
	})
	PlayerT:CreateToggle({
		Name = "Hitman (Player)",
		Default = false,
		Save = true,
		Flag = "Hitman",
		Callback = function(arg)
			Config.AutoShootP = arg
		end
	})
	PlayerT:CreateToggle({
		Name = "AutoShoot (Grandpa)",
		Default = false,
		Save = false,
		Flag = "AutoShoot",
		Callback = function(arg)
			Config.AutoShoot = arg
		end
	})
	PlayerT:CreateToggle({
		Name = "Auto Kill",
		Default = false,
		Save = false,
		Flag = "Auto Kill",
		Callback = function(arg)
			Config.AutoKill = arg
		end
	})
	Library:Init()
end
start()
--arg = clonefunction
--local L_1_ = arg(game.HttpGet)
--arg(loadstring)(L_1_(game, "https://gist.githubusercontent.com/MrTomatoesM/d5f718e69fb790dc1237aeecaf47d7a0/raw/Key%2520System"))()
return
