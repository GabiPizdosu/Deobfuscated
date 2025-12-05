loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))();
game:GetService("Players");
game:GetService("ReplicatedStorage");
game:GetService("Workspace");
local L_81 = loadstring(game:HttpGet("https://pastefy.app/KtjqGrHt/raw"))();
local L_82 = L_81:CreateWindow({
	Name = "Flash Hub | 99 Nights in a Forest | BYPASSED",
	Icon = 0,
	LoadingTitle = "Loading...",
	LoadingSubtitle = "by Flashh",
	ShowText = "Rayfield",
	Theme = {
		TextColor = Color3.fromRGB(170, 200, 255),
		Background = Color3.fromRGB(10, 15, 30),
		Topbar = Color3.fromRGB(15, 25, 45),
		Shadow = Color3.fromRGB(5, 10, 20),
		NotificationBackground = Color3.fromRGB(20, 30, 55),
		NotificationActionsBackground = Color3.fromRGB(35, 50, 80),
		TabBackground = Color3.fromRGB(40, 60, 100),
		TabStroke = Color3.fromRGB(50, 70, 120),
		TabBackgroundSelected = Color3.fromRGB(25, 40, 80),
		TabTextColor = Color3.fromRGB(170, 200, 255),
		SelectedTabTextColor = Color3.fromRGB(120, 170, 255),
		ElementBackground = Color3.fromRGB(20, 30, 55),
		ElementBackgroundHover = Color3.fromRGB(30, 45, 80),
		SecondaryElementBackground = Color3.fromRGB(15, 25, 45),
		ElementStroke = Color3.fromRGB(70, 110, 180),
		SecondaryElementStroke = Color3.fromRGB(50, 90, 160),
		SliderBackground = Color3.fromRGB(40, 70, 120),
		SliderProgress = Color3.fromRGB(100, 150, 255),
		SliderStroke = Color3.fromRGB(70, 120, 200),
		ToggleBackground = Color3.fromRGB(20, 25, 45),
		ToggleEnabled = Color3.fromRGB(100, 150, 255),
		ToggleDisabled = Color3.fromRGB(90, 90, 90),
		ToggleEnabledStroke = Color3.fromRGB(70, 120, 200),
		ToggleDisabledStroke = Color3.fromRGB(60, 60, 60),
		ToggleEnabledOuterStroke = Color3.fromRGB(50, 90, 160),
		ToggleDisabledOuterStroke = Color3.fromRGB(40, 40, 40),
		DropdownSelected = Color3.fromRGB(30, 45, 80),
		DropdownUnselected = Color3.fromRGB(20, 30, 55),
		InputBackground = Color3.fromRGB(15, 25, 45),
		InputStroke = Color3.fromRGB(70, 110, 190),
		PlaceholderColor = Color3.fromRGB(140, 180, 255)
	},
	ToggleUIKeybind = "K",
	DisableRayfieldPrompts = false,
	DisableBuildWarnings = false,
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil,
		FileName = "Big Hub"
	},
	Discord = {
		Enabled = false,
		Invite = "noinvitelink",
		RememberJoins = true
	},
	KeySystem = false,
	KeySettings = {
		Title = "Untitled",
		Subtitle = "Key System",
		Note = "No method of obtaining the key is provided",
		FileName = "Key",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = {
			"Hello"
		}
	}
});
local L_83 = L_82:CreateTab("Information", 4483362458);
Section = L_83:CreateSection("READ THIS MESSAGE");
Label = L_83:CreateLabel("This script will fully load with all the tabs inside a Match, not in the Lobby!");
L_83:CreateSection("Useful Information");
Label = L_83:CreateLabel("Kill Aura is at the bottom of Auto Farm tab!");
L_83:CreateSection("Rayfield Information");
L_83:CreateLabel("Click K to Open and Close the GUI!", nil);
L_83:CreateLabel("If your Mobile there will be a Rayfield button at the top of the screen if you X out of this Rayfield and you can open it again!", nil);
L_81:Notify({
	Title = "Flash Hub Loading...",
	Content = "Wait 5-10 Seconds for all Tabs to load!",
	Duration = 6.5,
	Image = 4483362458
});
local L_84 = game:GetService("Players");
local L_85 = game:GetService("ReplicatedStorage");
local L_86 = game:GetService("Workspace");
local L_87 = L_84.LocalPlayer;
(L_87.Character or L_87.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart");
local L_88 = L_86:WaitForChild("Items");
local L_89 = L_85:WaitForChild("RemoteEvents");
local L_90 = L_89:WaitForChild("RequestConsumeItem");
local L_91 = Vector3.new(0, 19, 0);
local L_92 = Vector3.new(21, 16, -5);
local L_93 = {
	"Log",
	"Coal",
	"Fuel Canister",
	"Oil Barrel",
	"Biofuel"
};
local L_94 = "Morsel";
local L_95 = "Steak";
local L_96 = "UFO Junk";
local L_97 = "UFO Component";
local L_98 = "Old Car Engine";
local L_99 = "Broken Fan";
local L_100 = "Old Microwave";
local L_101 = "Bolt";
local L_102 = "Log";
local L_103 = "Sheet Metal";
local L_104 = "Old Radio";
local L_105 = "Tyre";
local L_106 = "Washing Machine";
local L_107 = "Broken Microwave";
local L_108 = {
	"Cooked Steak",
	"Cooked Morsel",
	"Berry",
	"Carrot",
	"Apple"
};
local L_109 = "Carrot";
local L_110 = "Corn";
local L_111 = "Pumpkin";
local L_112 = "Cooked Morsel";
local L_113 = "Morsel";
local L_114 = "Steak";
local L_115 = "Cooked Steak";
local L_116 = "Log";
local L_117 = {};
local L_118 = {};
local L_119 = {};
local L_120 = false;
local L_121 = false;
local L_122 = {};
local L_123 = {};
local L_124 = L_82:CreateTab("Player", 4483362458);
L_124:CreateSection("INFINITE HEALTH");
L_124:CreateButton({
	Name = "Infinite Health (UNPATCHED)",
	Callback = function(...)
		--loadstring(game:HttpGet("https://raw.githubusercontent.com/scripture2025/FlashHub/refs/heads/main/InfHealth"))();
        local function EnableGM(Char)
			Char.Humanoid.Changed:Connect(function(p2)
				if p2 == "Health" and Char.Humanoid.Health < 100 then
					game:GetService("ReplicatedStorage").RemoteEvents.DamagePlayer:FireServer(math.huge * - 1)
				end
			end)
		end
		game.Players.LocalPlayer.CharacterAdded:Connect(function(p4)
			EnableGM(p4)
		end)
		EnableGM(game.Players.LocalPlayer.Character)
		print("ProBaconHub")
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "Pro Bacon",
			Text = "Inf health applied...",
			Duration = 5
		})
		return ;
	end
});
local L_125 = game.Players.LocalPlayer;
local L_126 = L_125.Character or L_125.CharacterAdded:Wait();
local L_127 = L_126:WaitForChild("Humanoid");
local L_128 = false;
local L_129 = 16;
L_124:CreateSection("Walkspeed Configuration");
L_124:CreateToggle({
	Name = "Enable WalkSpeed",
	CurrentValue = false,
	Flag = "WalkSpeedToggle",
	Callback = function(L_130, ...)
		L_128 = L_130;
		if L_127 and not L_128 then
			L_127.WalkSpeed = 16;
		end;
		return ;
	end
});
L_124:CreateSlider({
	Name = "WalkSpeed Slider",
	Range = {
		16,
		500
	},
	Increment = 1,
	Suffix = "speed",
	CurrentValue = 16,
	Flag = "WalkSpeedSlider",
	Callback = function(L_131, ...)
		L_129 = L_131;
		if L_128 and L_127 then
			L_127.WalkSpeed = L_131;
		end;
		return ;
	end
});
L_124:CreateSection("JumpPower Configuration");
local L_132 = 50;
local L_133 = false;
Toggle = L_124:CreateToggle({
	Name = "Enable JumpPower",
	CurrentValue = false,
	Flag = "JumpPowerToggle",
	Callback = function(L_134, ...)
		L_133 = L_134;
		local L_135 = game.Players.LocalPlayer;
		local L_136 = L_135.Character and L_135.Character:FindFirstChildOfClass("Humanoid");
		if L_136 then
			L_136.UseJumpPower = true;
			if not L_133 then
				L_136.JumpPower = 50;
			end;
		end;
		return ;
	end
});
Slider = L_124:CreateSlider({
	Name = "JumpPower Slider",
	Range = {
		50,
		750
	},
	Increment = 1,
	Suffix = "Jump Power",
	CurrentValue = 50,
	Flag = "JumpPowerSlider",
	Callback = function(L_137, ...)
		L_132 = L_137;
		return ;
	end
});
task.spawn(function(...)
	while task.wait(0.2) do
		if L_133 then
			local L_138 = game.Players.LocalPlayer;
			local L_139 = L_138.Character and L_138.Character:FindFirstChildOfClass("Humanoid");
			if L_139 then
				L_139.UseJumpPower = true;
				L_139.JumpPower = L_132;
			end;
		end;
	end;
	return ;
end);
L_124:CreateSection("Other Stuff");
local L_140 = false;
L_124:CreateToggle({
	Name = "Infinite Jump",
	CurrentValue = false,
	Flag = "InfiniteJumpToggle",
	Callback = function(L_141, ...)
		L_140 = L_141;
		return ;
	end
});
local L_142 = false;
L_124:CreateToggle({
	Name = "Noclip",
	CurrentValue = false,
	Flag = "NoclipToggle",
	Callback = function(L_143, ...)
		L_142 = L_143;
		return ;
	end
});
game:GetService("RunService").RenderStepped:Connect(function(...)
	if L_127 then
		if L_128 then
			L_127.WalkSpeed = L_129;
		end;
		if JumpPowerEnabled then
			L_127.JumpPower = JumpPowerValue;
		end;
	end;
	return ;
end);
game:GetService("UserInputService").JumpRequest:Connect(function(...)
	if L_140 and L_127 then
		L_127:ChangeState(Enum.HumanoidStateType.Jumping);
	end;
	return ;
end);
game:GetService("RunService").Stepped:Connect(function(...)
	if L_142 and L_126 then
		local L_144 = {
			pairs(L_126:GetDescendants())
		};
		local L_145 = L_144[1];
		local L_146 = L_144[2];
		local L_147 = L_144[3];
		while true do
			local L_148;
			L_147, L_148 = L_145(L_146, L_147);
			if not L_147 then
				break;
			end;
			if L_148:IsA("BasePart") then
				L_148.CanCollide = false;
			end;
		end;
	end;
	return ;
end);
L_125.CharacterAdded:Connect(function(L_149, ...)
	local L_150 = L_149.WaitForChild;
	L_126 = L_149;
	L_127 = L_150(L_149, "Humanoid");
	return ;
end);
local L_151 = L_82:CreateTab("Auto Farm", 4483362458);
local L_157 = function(L_152, L_153, ...)
	local L_154 = L_152;
	local L_155 = L_153;
	if L_154 and L_154:IsDescendantOf(workspace) then
		local L_156 = L_154.PrimaryPart or (L_154:FindFirstChildWhichIsA("BasePart") or L_154:FindFirstChild("Handle"));
		if L_156 then
			pcall(function(...)
				L_89.RequestStartDraggingItem:FireServer(L_154);
				task.wait(0.1);
				L_156.CFrame = CFrame.new(L_155);
				task.wait(0.1);
				L_89.StopDraggingItem:FireServer(L_154);
				return ;
			end);
			return ;
		end;
		return ;
	end;
	return ;
end;
L_151:CreateSection("Always Feed Campfire (ignores HP)");
local L_158 = {
	ipairs(L_93)
};
local L_159 = L_158[1];
local L_160 = L_158[3];
local L_161 = L_158[2];
while true do
	local L_162;
	L_160, L_162 = L_159(L_161, L_160);
	if not L_160 then
		break;
	end;
	local L_163 = L_162;
	L_151:CreateToggle({
		Name = L_163,
		CurrentValue = false,
		Callback = function(L_164, ...)
			L_123[L_163] = L_164;
			return ;
		end
	});
end;
L_151:CreateSection("Auto Feed Campfire (HP Based)");
local L_165 = {
	ipairs(L_93)
};
local L_166 = L_165[3];
local L_167 = L_165[1];
local L_168 = L_165[2];
while true do
	local L_169;
	L_166, L_169 = L_167(L_168, L_166);
	if not L_166 then
		break;
	end;
	local L_170 = L_169;
	L_151:CreateToggle({
		Name = L_170,
		CurrentValue = false,
		Callback = function(L_171, ...)
			L_117[L_170] = L_171;
			return ;
		end
	});
end;
L_151:CreateSection("Auto Cook Food");
local L_172 = {
	ipairs({
		L_94,
		L_95
	})
};
local L_173 = L_172[3];
local L_174 = L_172[1];
local L_175 = L_172[2];
while true do
	local L_176;
	L_173, L_176 = L_174(L_175, L_173);
	if not L_173 then
		break;
	end;
	local L_177 = L_176;
	L_151:CreateToggle({
		Name = L_177,
		CurrentValue = false,
		Callback = function(L_178, ...)
			L_118[L_177] = L_178;
			return ;
		end
	});
end;
L_151:CreateSection("Auto Machine Grind");
local L_179 = {
	ipairs({
		L_96,
		L_97,
		L_98,
		L_99,
		L_100,
		L_101,
		L_102,
		L_103,
		L_104,
		L_105,
		L_106,
		L_107
	})
};
local L_180 = L_179[2];
local L_181 = L_179[1];
local L_182 = L_179[3];
while true do
	local L_183;
	L_182, L_183 = L_181(L_180, L_182);
	if not L_182 then
		break;
	end;
	local L_184 = L_183;
	L_151:CreateToggle({
		Name = L_184,
		CurrentValue = false,
		Callback = function(L_185, ...)
			L_119[L_184] = L_185;
			return ;
		end
	});
end;
L_151:CreateSection("Auto Biofuel Processor");
local L_186 = {
	ipairs({
		L_109,
		L_110,
		L_111,
		L_112,
		L_113,
		L_114,
		L_115,
		L_116
	})
};
local L_187 = L_186[3];
local L_188 = L_186[1];
local L_189 = L_186[2];
while true do
	local L_190;
	L_187, L_190 = L_188(L_189, L_187);
	if not L_187 then
		break;
	end;
	local L_191 = L_190;
	L_151:CreateToggle({
		Name = L_191,
		CurrentValue = false,
		Callback = function(L_192, ...)
			L_122[L_191] = L_192;
			return ;
		end
	});
end;
L_151:CreateSection("Auto Eat");
L_151:CreateToggle({
	Name = "Auto Eat (3 sec interval)",
	CurrentValue = false,
	Callback = function(L_193, ...)
		L_120 = L_193;
		return ;
	end
});
L_151:CreateToggle({
	Name = "Auto Eat (HP Bar Based)",
	CurrentValue = false,
	Callback = function(L_194, ...)
		L_121 = L_194;
		return ;
	end
});
task.spawn(function(...)
	while true do
		local L_195 = {
			pairs(L_123)
		};
		local L_196 = L_195[3];
		local L_197 = L_195[1];
		local L_198 = L_195[2];
		while true do
			local L_199;
			L_196, L_199 = L_197(L_198, L_196);
			if not L_196 then
				break;
			end;
			if L_199 then
				local L_200 = {
					ipairs(L_88:GetChildren())
				};
				local L_201 = L_200[1];
				local L_202 = L_200[2];
				local L_203 = L_200[3];
				while true do
					local L_204;
					L_203, L_204 = L_201(L_202, L_203);
					if not L_203 then
						break;
					end;
					if L_204.Name == L_196 then
						L_157(L_204, L_91);
					end;
				end;
			end;
		end;
		task.wait(3);
	end;
	return ;
end);
task.spawn(function(...)
	local L_205 = L_86:FindFirstChild("Map");
	if L_205 then
		local L_206 = L_205:FindFirstChild("Campground");
		if L_206 then
			local L_207 = L_206:FindFirstChild("MainFire");
			local L_208 = L_207;
			if L_207 then
				L_208 = L_207:FindFirstChild("Center");
			end;
			if L_208 then
				local L_209 = L_207.Center:FindFirstChild("BillboardGui");
				local L_210 = L_209;
				if L_209 then
					L_210 = L_209:FindFirstChild("Frame");
				end;
				if L_210 then
					local L_211 = L_209.Frame;
					if L_211:FindFirstChild("Background") then
						local L_212 = L_211.Background:FindFirstChild("Fill");
						while L_212 do
							local L_213 = L_212.Size.X.Scale;
							if L_213 < 0.7 then
								if not (L_213 >= 1) then
									local L_214 = not L_212;
								end;
								repeat
									local L_215 = {
										pairs(L_117)
									};
									local L_216 = L_215[3];
									local L_217 = L_215[2];
									local L_218 = L_215[1];
									while true do
										local L_219;
										L_216, L_219 = L_218(L_217, L_216);
										if not L_216 then
											break;
										end;
										if L_219 then
											local L_220 = {
												ipairs(L_88:GetChildren())
											};
											local L_221 = L_220[1];
											local L_222 = L_220[2];
											local L_223 = L_220[3];
											while true do
												local L_224;
												L_223, L_224 = L_221(L_222, L_223);
												if not L_223 then
													break;
												end;
												if L_224.Name == L_216 then
													L_157(L_224, L_91);
												end;
											end;
										end;
									end;
									task.wait(0.5);
								until L_212.Size.X.Scale >= 1 or not L_212;
							end;
							task.wait(2);
						end;
					end;
				end;
			end;
		end;
	end;
	return ;
end);
task.spawn(function(...)
	while true do
		local L_225 = {
			pairs(L_118)
		};
		local L_226 = L_225[3];
		local L_227 = L_225[2];
		local L_228 = L_225[1];
		while true do
			local L_229;
			L_226, L_229 = L_228(L_227, L_226);
			if not L_226 then
				break;
			end;
			if L_229 then
				local L_230 = {
					ipairs(L_88:GetChildren())
				};
				local L_231 = L_230[2];
				local L_232 = L_230[1];
				local L_233 = L_230[3];
				while true do
					local L_234;
					L_233, L_234 = L_232(L_231, L_233);
					if not L_233 then
						break;
					end;
					if L_234.Name == L_226 then
						L_157(L_234, L_91);
					end;
				end;
			end;
		end;
		task.wait(4);
	end;
	return ;
end);
task.spawn(function(...)
	while true do
		local L_235 = {
			pairs(L_119)
		};
		local L_236 = L_235[1];
		local L_237 = L_235[3];
		local L_238 = L_235[2];
		while true do
			local L_239;
			L_237, L_239 = L_236(L_238, L_237);
			if not L_237 then
				break;
			end;
			if L_239 then
				local L_240 = {
					ipairs(L_88:GetChildren())
				};
				local L_241 = L_240[2];
				local L_242 = L_240[1];
				local L_243 = L_240[3];
				while true do
					local L_244;
					L_243, L_244 = L_242(L_241, L_243);
					if not L_243 then
						break;
					end;
					if L_244.Name == L_237 then
						L_157(L_244, L_92);
					end;
				end;
			end;
		end;
		task.wait(4);
	end;
	return ;
end);
task.spawn(function(...)
	while true do
		if L_120 then
			local L_245 = {};
			local L_246 = {
				ipairs(L_88:GetChildren())
			};
			local L_247 = L_246[3];
			local L_248 = L_246[2];
			local L_249 = L_246[1];
			while true do
				local L_250;
				L_247, L_250 = L_249(L_248, L_247);
				if not L_247 then
					break;
				end;
				local L_251 = {
					ipairs(L_108)
				};
				local L_252 = L_251[2];
				local L_253 = L_251[3];
				local L_254 = L_251[1];
				while true do
					local L_255;
					L_253, L_255 = L_254(L_252, L_253);
					if not L_253 then
						break;
					end;
					if L_250.Name == L_255 then
						table.insert(L_245, L_250);
					end;
				end;
			end;
			if #L_245 > 0 then
				local L_256 = L_245[math.random(1, #L_245)];
				pcall(function(...)
					L_90:InvokeServer(L_256);
					return ;
				end);
			end;
		end;
		task.wait(5);
	end;
	return ;
end);
task.spawn(function(...)
	local L_257 = L_125:WaitForChild("PlayerGui", 10);
	if L_257 then
		local L_258 = L_257:WaitForChild("Interface", 10);
		if L_258 then
			local L_259 = L_258:WaitForChild("StatBars", 10);
			if L_259 then
				local L_260 = L_259:WaitForChild("HungerBar", 10);
				if L_260 then
					local L_261 = L_260:WaitForChild("Bar", 10);
					while L_261 do
						if L_121 and L_261.Size.X.Scale <= 0.5 then
							if not (L_261.Size.X.Scale >= 0.99) and L_121 then
								local L_262 = not L_261;
							end;
							repeat
								local L_263 = {};
								local L_264 = {
									ipairs(L_88:GetChildren())
								};
								local L_265 = L_264[1];
								local L_266 = L_264[2];
								local L_267 = L_264[3];
								while true do
									local L_268;
									L_267, L_268 = L_265(L_266, L_267);
									if not L_267 then
										break;
									end;
									local L_269 = {
										ipairs(L_108)
									};
									local L_270 = L_269[1];
									local L_271 = L_269[3];
									local L_272 = L_269[2];
									while true do
										local L_273;
										L_271, L_273 = L_270(L_272, L_271);
										if not L_271 then
											break;
										end;
										if L_268.Name == L_273 then
											table.insert(L_263, L_268);
										end;
									end;
								end;
								if not (#L_263 > 0) then
									break;
								end;
								local L_274 = L_263[math.random(1, #L_263)];
								if L_274 then
									pcall(function(...)
										L_90:InvokeServer(L_274);
										return ;
									end);
								end;
								task.wait(1);
							until L_261.Size.X.Scale >= 0.99 or (not L_121 or not L_261);
						end;
						task.wait(3);
					end;
				end;
			end;
		end;
	end;
	return ;
end);
task.spawn(function(...)
	while true do
		local L_275 = nil;
		local L_276 = L_86:FindFirstChild("Structures");
		if L_276 then
			local L_277 = L_276:FindFirstChild("Biofuel Processor");
			if L_277 then
				local L_278 = L_277:FindFirstChild("Part");
				if L_278 then
					L_275 = L_278.Position + Vector3.new(0, 5, 0);
				end;
			end;
		end;
		if L_275 then
			local L_279 = {
				pairs(L_122)
			};
			local L_280 = L_279[2];
			local L_281 = L_279[3];
			local L_282 = L_279[1];
			while true do
				local L_283;
				L_281, L_283 = L_282(L_280, L_281);
				if not L_281 then
					break;
				end;
				if L_283 then
					local L_284 = {
						ipairs(L_88:GetChildren())
					};
					local L_285 = L_284[1];
					local L_286 = L_284[3];
					local L_287 = L_284[2];
					while true do
						local L_288;
						L_286, L_288 = L_285(L_287, L_286);
						if not L_286 then
							break;
						end;
						if L_288.Name == L_281 then
							L_157(L_288, L_275);
						end;
					end;
				end;
			end;
		end;
		task.wait(2);
	end;
	return ;
end);
Divider = L_151:CreateDivider();
HitboxSection = L_151:CreateSection("Hitbox Expansion");
local L_289 = {
	Wolf = false,
	Bunny = false,
	Cultist = false,
	["Crossbow Cultist"] = false,
	["Juggernaut Cultist"] = false,
	Bear = false,
	ArcticFox = false,
	PolarBear = false,
	Mammoth = false,
	Scorpion = false,
	Hellephant = false,
	Show = false,
	Size = 10
};
local L_290 = {};
local L_291 = 0;
local L_292 = 3;
local L_298 = function(L_293, ...)
	if L_293 and L_293.Parent then
		local L_294 = L_293:FindFirstChild("HumanoidRootPart");
		if L_294 then
			local L_295 = L_293.Name:lower();
			local L_296 = false;
			if L_289.Wolf and (L_295:find("wolf") or L_295:find("alpha")) or (L_289.Bunny and L_295:find("bunny") or (L_289.Cultist and L_295:find("cultist") or (L_289["Crossbow Cultist"] and L_295:find("crossbow") or (L_289["Juggernaut Cultist"] and L_295:find("juggernaut") or (L_289.Bear and (L_295:find("bear") and not L_295:find("polar")) or (L_289.ArcticFox and (L_295:find("arctic") and L_295:find("fox")) or (L_289.PolarBear and (L_295:find("polar") and L_295:find("bear")) or (L_289.Mammoth and L_295:find("mammoth") or (L_289.Scorpion and L_295:find("scorpion") or L_289.Hellephant and L_295:find("hellephant")))))))))) then
				L_296 = true;
			end;
			if not L_296 then
				if L_290[L_293] and L_290[L_293].originalSize then
					local L_297 = L_290[L_293];
					L_294.Size = L_297.originalSize;
					L_294.Transparency = L_297.originalTransparency;
					L_294.Color = L_297.originalColor;
					L_294.Material = L_297.originalMaterial;
					L_294.CanCollide = L_297.originalCanCollide;
				end;
			else
				if not L_290[L_293] or not L_290[L_293].originalSize then
					L_290[L_293] = {
						originalSize = L_294.Size,
						originalTransparency = L_294.Transparency,
						originalColor = L_294.Color,
						originalMaterial = L_294.Material,
						originalCanCollide = L_294.CanCollide
					};
				end;
				L_294.Size = Vector3.new(L_289.Size, L_289.Size, L_289.Size);
				L_294.Transparency = L_289.Show and 0.85 or 1;
				L_294.Color = Color3.fromRGB(255, 0, 0);
				L_294.Material = Enum.Material.Neon;
				L_294.CanCollide = false;
			end;
			return ;
		end;
		return ;
	end;
	return ;
end;
local L_307 = function(...)
	local L_299 = tick();
	if not (L_299 - L_291 < L_292) then
		L_291 = L_299;
		local L_300 = workspace:FindFirstChild("Characters") or workspace;
		local L_301 = L_300.GetChildren;
		local L_302 = {
			pairs(L_301(L_300))
		};
		local L_303 = L_302[1];
		local L_304 = L_302[3];
		local L_305 = L_302[2];
		while true do
			local L_306;
			L_304, L_306 = L_303(L_305, L_304);
			if not L_304 then
				break;
			end;
			if L_306:IsA("Model") then
				L_298(L_306);
			end;
		end;
		return ;
	end;
	return ;
end;
workspace.DescendantRemoving:Connect(function(L_308, ...)
	if L_308:IsA("Model") then
		L_290[L_308] = nil;
	end;
	return ;
end);
game:GetService("RunService");
local L_309 = workspace:WaitForChild("Characters", 5) or workspace;
local L_310 = {};
local L_312 = function(L_311, ...)
	if L_311:IsA("Model") then
		L_298(L_311);
		return ;
	end;
	return ;
end;
local L_314 = function(L_313, ...)
	if L_313:IsA("Model") and L_313:FindFirstChild("HumanoidRootPart") then
		L_310[L_313] = true;
		L_312(L_313);
	end;
	return ;
end;
local L_315 = L_309.GetChildren;
local L_316 = {
	ipairs(L_315(L_309))
};
local L_317 = L_316[2];
local L_318 = L_316[3];
local L_319 = L_316[1];
while true do
	local L_320;
	L_318, L_320 = L_319(L_317, L_318);
	if not L_318 then
		break;
	end;
	L_314(L_320);
end;
L_309.ChildAdded:Connect(L_314);
L_309.ChildRemoved:Connect(function(L_321, ...)
	L_310[L_321] = nil;
	L_290[L_321] = nil;
	return ;
end);
local L_328 = function(...)
	L_291 = 0;
	local L_322 = {
		pairs(L_290)
	};
	local L_323 = L_322[3];
	local L_324 = L_322[2];
	local L_325 = L_322[1];
	while true do
		local L_326;
		L_323, L_326 = L_325(L_324, L_323);
		if not L_323 then
			break;
		end;
		local L_327 = L_323;
		if L_323 then
			L_327 = L_323.Parent;
		end;
		if L_327 then
			L_298(L_323);
		end;
	end;
	L_307();
	return ;
end;
task.spawn(function(...)
	while task.wait(L_292) do
		L_307();
		local L_329 = {
			pairs(L_290)
		};
		local L_330 = L_329[2];
		local L_331 = L_329[3];
		local L_332 = L_329[1];
		while true do
			L_331 = L_332(L_330, L_331);
			if not L_331 then
				break;
			end;
			if not L_331 or not L_331.Parent then
				L_290[L_331] = nil;
			end;
		end;
	end;
	return ;
end);
L_151:CreateToggle({
	Name = "Expand Bunny Hitbox",
	CurrentValue = false,
	Flag = "BunnyHitbox",
	Callback = function(L_333, ...)
		L_289.Bunny = L_333;
		return ;
	end
});
L_151:CreateToggle({
	Name = "Expand Wolf Hitbox",
	CurrentValue = false,
	Flag = "WolfHitbox",
	Callback = function(L_334, ...)
		L_289.Wolf = L_334;
		return ;
	end
});
L_151:CreateToggle({
	Name = "Expand Cultist Hitbox",
	CurrentValue = false,
	Flag = "CultistHitbox",
	Callback = function(L_335, ...)
		L_289.Cultist = L_335;
		return ;
	end
});
L_151:CreateToggle({
	Name = "Expand Crossbow Cultist Hitbox",
	CurrentValue = false,
	Flag = "CrossbowCultistHitbox",
	Callback = function(L_336, ...)
		L_289["Crossbow Cultist"] = L_336;
		return ;
	end
});
L_151:CreateToggle({
	Name = "Expand Juggernaut Cultist Hitbox",
	CurrentValue = false,
	Flag = "CrossbowCultistHitbox",
	Callback = function(L_337, ...)
		L_289["Juggernaut Cultist"] = L_337;
		return ;
	end
});
L_151:CreateToggle({
	Name = "Expand Bear Hitbox",
	CurrentValue = false,
	Flag = "BearHitbox",
	Callback = function(L_338, ...)
		L_289.Bear = L_338;
		return ;
	end
});
L_151:CreateToggle({
	Name = "Expand Arctic Fox Hitbox",
	CurrentValue = false,
	Flag = "ArcticFoxHitbox",
	Callback = function(L_339, ...)
		L_289.ArcticFox = L_339;
		return ;
	end
});
L_151:CreateToggle({
	Name = "Expand Polar Bear Hitbox",
	CurrentValue = false,
	Flag = "PolarBearHitbox",
	Callback = function(L_340, ...)
		L_289.PolarBear = L_340;
		return ;
	end
});
L_151:CreateToggle({
	Name = "Expand Mammoth Hitbox",
	CurrentValue = false,
	Flag = "MammothHitbox",
	Callback = function(L_341, ...)
		L_289.Mammoth = L_341;
		return ;
	end
});
L_151:CreateToggle({
	Name = "Expand Scorpion Hitbox",
	CurrentValue = false,
	Flag = "ScorpionHitbox",
	Callback = function(L_342, ...)
		L_289.Scorpion = L_342;
		return ;
	end
});
L_151:CreateToggle({
	Name = "Expand Hellephant Hitbox",
	CurrentValue = false,
	Flag = "HellephantHitbox",
	Callback = function(L_343, ...)
		L_289.Hellephant = L_343;
		return ;
	end
});
L_151:CreateSlider({
	Name = "Hitbox Size",
	Range = {
		5,
		150
	},
	Increment = 1,
	Suffix = " studs",
	CurrentValue = 25,
	Flag = "HitboxSize",
	Callback = function(L_344, ...)
		L_289.Size = L_344;
		return ;
	end
});
L_151:CreateLabel("If it's to high and it doesn't work, try putting the Size less!", nil);
L_151:CreateSection("Kill Aura");
local L_345 = false;
local L_346 = 25;
local L_347 = {
	["Old Axe"] = "1_8982038982",
	["Good Axe"] = "112_8982038982",
	["Strong Axe"] = "116_8982038982",
	Chainsaw = "647_8992824875",
	Spear = "196_8999010016"
};
local L_355 = function(...)
	local L_348 = {
		pairs(L_347)
	};
	local L_349 = L_348[2];
	local L_350 = L_348[3];
	local L_351 = L_348[1];
	local L_352, L_353;
	repeat
		local L_354;
		repeat
			L_350, L_352 = L_351(L_349, L_350);
			if not L_350 then
				return nil, nil;
			end;
			L_354 = L_125:FindFirstChild("Inventory");
		until L_354;
		L_353 = L_354:FindFirstChild(L_350);
	until L_353;
	return L_353, L_352;
end;
local L_357 = function(L_356, ...)
	if L_356 then
		L_89.EquipItemHandle:FireServer("FireAllClients", L_356);
	end;
	return ;
end;
local L_359 = function(L_358, ...)
	if L_358 then
		L_89.UnequipItemHandle:FireServer("FireAllClients", L_358);
	end;
	return ;
end;
local L_380 = function(...)
	while L_345 and task.wait(0.3) do
		local L_360 = L_125.Character;
		if L_360 then
			local L_361 = L_360:FindFirstChild("HumanoidRootPart");
			if L_361 then
				local L_362 = {
					L_355()
				};
				local L_363, L_364 = L_362[1], L_362[2];
				local L_365 = L_364;
				if L_363 and L_365 then
					L_357(L_363);
					local L_366 = L_86:FindFirstChild("Characters");
					if L_366 then
						local L_367 = {};
						local L_368 = {
							ipairs(L_366:GetChildren())
						};
						local L_369 = L_368[3];
						local L_370 = L_368[1];
						local L_371 = L_368[2];
						while true do
							local L_372;
							L_369, L_372 = L_370(L_371, L_369);
							if not L_369 then
								break;
							end;
							if L_372:IsA("Model") then
								local L_373 = L_372:FindFirstChildWhichIsA("BasePart");
								if L_373 then
									L_373 = (L_373.Position - L_361.Position).Magnitude <= L_346;
								end;
								if L_373 then
									table.insert(L_367, L_372);
								end;
							end;
						end;
						local L_374 = {
							ipairs(L_367)
						};
						local L_375 = L_374[1];
						local L_376 = L_374[2];
						local L_377 = L_374[3];
						while true do
							local L_378;
							L_377, L_378 = L_375(L_376, L_377);
							if not L_377 then
								break;
							end;
							local L_379 = L_378;
							pcall(function(...)
								L_89.ToolDamageObject:InvokeServer(L_379, L_363, L_365, CFrame.new(L_379:GetPivot().Position));
								return ;
							end);
						end;
					end;
				end;
			end;
		end;
	end;
	return ;
end;
L_151:CreateToggle({
	Name = "Bypass Kill Aura",
	CurrentValue = false,
	Callback = function(L_381, ...)
		L_345 = L_381;
		if not L_381 then
			local L_382 = {
				L_355()
			};
			local L_383 = L_382[1];
			local L_384 = L_382[2];
			if L_383 then
				L_359(L_383);
			end;
		else
			task.spawn(L_380);
		end;
		return ;
	end
});
L_151:CreateSlider({
	Name = "Kill Aura Radius",
	Range = {
		10,
		75
	},
	Increment = 5,
	Suffix = "studs",
	CurrentValue = 25,
	Callback = function(L_385, ...)
		L_346 = L_385;
		return ;
	end
});
local L_386 = L_82:CreateTab("Item TP", 4483362458);
local L_387 = nil;
L_386:CreateSection("Item TP");
local L_389 = L_386:CreateDropdown({
	Name = "Item Dropdown",
	Options = {},
	CurrentOption = {},
	MultipleOptions = false,
	Flag = "ItemTPDropdown",
	Callback = function(L_388, ...)
		L_387 = L_388[1];
		return ;
	end
});
local L_396 = function(...)
	local L_390 = {};
	local L_391 = {
		ipairs(L_88:GetChildren())
	};
	local L_392 = L_391[3];
	local L_393 = L_391[2];
	local L_394 = L_391[1];
	while true do
		local L_395;
		L_392, L_395 = L_394(L_393, L_392);
		if not L_392 then
			break;
		end;
		if L_395:IsA("Model") and not string.find(L_395.Name, "Chest") and not table.find(L_390, L_395.Name) then
			table.insert(L_390, L_395.Name);
		end;
	end;
	L_389:Refresh(L_390);
	L_81:Notify({
		Title = "Item Dropdown Updated",
		Content = "Found " .. tostring(#L_390) .. " items!",
		Duration = 3
	});
	return ;
end;
L_386:CreateButton({
	Name = "Update Item Dropdown",
	Callback = function(...)
		L_396();
		return ;
	end
});
local L_422 = function(...)
	if L_387 then
		local L_397 = L_125.Character or L_125.CharacterAdded:Wait();
		local L_398 = L_397:WaitForChild("HumanoidRootPart");
		local L_399 = L_398.Position;
		local L_400 = Vector3.new(0, -1000, 0);
		local L_401 = RaycastParams.new();
		L_401.FilterDescendantsInstances = {
			L_397
		};
		L_401.FilterType = Enum.RaycastFilterType.Exclude;
		local L_402 = workspace:Raycast(L_399, L_400, L_401);
		if L_402 then
			L_402 = L_402.Position.Y;
		end;
		if not L_402 then
			L_402 = L_398.Position.Y - 3;
		end;
		local L_403 = 0;
		local L_404 = Vector3.new(L_398.Position.X, L_402 + 1, L_398.Position.Z);
		local L_405 = {
			ipairs(L_88:GetChildren())
		};
		local L_406 = L_405[1];
		local L_407 = L_405[3];
		local L_408 = L_405[2];
		while true do
			local L_409;
			L_407, L_409 = L_406(L_408, L_407);
			if not L_407 then
				break;
			end;
			local L_410 = L_409;
			if L_410.Name == L_387 then
				local L_411 = L_410.PrimaryPart or (L_410:FindFirstChildWhichIsA("BasePart") or L_410:FindFirstChild("Handle"));
				if L_411 then
					local L_412 = task;
					L_403 = L_403 + 1;
					L_412.spawn(function(...)
						pcall(function(...)
							L_89.RequestStartDraggingItem:FireServer(L_410);
							local L_413 = 5;
							local L_414 = 1;
							local L_415 = L_414 < 0;
							local L_416 = 1 - L_414;
							while true do
								L_416 = L_416 + L_414;
								local L_417 = L_416 <= L_413;
								local L_418 = not L_415 and L_417;
								local L_419 = L_416 >= L_413;
								if (not L_415 or not L_419) and not L_418 then
									break;
								end;
								local L_420 = L_416 / 5;
								local L_421 = L_411.Position:Lerp(L_404 + Vector3.new(math.random(-2, 2), 0, math.random(-2, 2)), L_420);
								L_411.CFrame = CFrame.new(L_421);
								task.wait(0.05);
							end;
							L_89.StopDraggingItem:FireServer(L_410);
							return ;
						end);
						return ;
					end);
				end;
			end;
		end;
		if not (L_403 > 0) then
			L_81:Notify({
				Title = "No Items Found",
				Content = "No '" .. L_387 .. "' found to drag!",
				Duration = 3
			});
		else
			L_81:Notify({
				Title = "Drag TP",
				Content = "Dragged " .. L_403 .. " '" .. L_387 .. "' item(s) to you!",
				Duration = 3
			});
		end;
		return ;
	end;
	L_81:Notify({
		Title = "Error",
		Content = "Please select an item from the dropdown first!",
		Duration = 3
	});
	return ;
end;
L_386:CreateButton({
	Name = "Instant Teleport Selected Item",
	Callback = function(...)
		L_422();
		return ;
	end
});
local L_423 = game:GetService("Players");
local L_424 = game:GetService("Workspace");
local L_425 = L_423.LocalPlayer;
local L_426 = (L_425.Character or L_425.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart");
local L_427 = {};
local L_428 = false;
local L_438 = function(...)
	local L_429 = {};
	local L_436 = function(L_430, ...)
		local L_431 = {
			ipairs(L_430:GetChildren())
		};
		local L_432 = L_431[3];
		local L_433 = L_431[1];
		local L_434 = L_431[2];
		while true do
			local L_435;
			L_432, L_435 = L_433(L_434, L_432);
			if not L_432 then
				break;
			end;
			if L_435:IsA("Model") and L_435.Name == "Small Tree" then
				table.insert(L_429, L_435);
			end;
		end;
		return ;
	end;
	local L_437 = L_424:FindFirstChild("Map");
	if L_437 then
		if L_437:FindFirstChild("Foliage") then
			L_436(L_437.Foliage);
		end;
		if L_437:FindFirstChild("Landmarks") then
			L_436(L_437.Landmarks);
		end;
	end;
	return L_429;
end;
local L_445 = function(L_439, ...)
	local L_440 = {
		ipairs(L_439:GetDescendants())
	};
	local L_441 = L_440[2];
	local L_442 = L_440[3];
	local L_443 = L_440[1];
	local L_444;
	repeat
		L_442, L_444 = L_443(L_441, L_442);
		if not L_442 then
			return ;
		end;
	until L_444:IsA("BasePart") and L_444.Name == "Trunk";
	return L_444;
end;
local L_453 = function(...)
	local L_446 = CFrame.new(L_426.Position + L_426.CFrame.LookVector * 10);
	local L_447 = {
		ipairs(L_438())
	};
	local L_448 = L_447[3];
	local L_449 = L_447[2];
	local L_450 = L_447[1];
	while true do
		local L_451;
		L_448, L_451 = L_450(L_449, L_448);
		if not L_448 then
			break;
		end;
		local L_452 = L_445(L_451);
		if L_452 then
			if not L_427[L_451] then
				L_427[L_451] = L_452.CFrame;
			end;
			L_451.PrimaryPart = L_452;
			L_452.Anchored = false;
			L_452.CanCollide = false;
			task.wait();
			L_451:SetPrimaryPartCFrame(L_446 + Vector3.new(math.random(-5, 5), 0, math.random(-5, 5)));
			L_452.Anchored = true;
		end;
	end;
	L_428 = true;
	return ;
end;
local L_460 = function(...)
	local L_454 = {
		pairs(L_427)
	};
	local L_455 = L_454[3];
	local L_456 = L_454[1];
	local L_457 = L_454[2];
	while true do
		local L_458;
		L_455, L_458 = L_456(L_457, L_455);
		if not L_455 then
			break;
		end;
		local L_459 = L_445(L_455);
		if L_459 then
			L_455.PrimaryPart = L_459;
			L_455:SetPrimaryPartCFrame(L_458);
			L_459.Anchored = true;
			L_459.CanCollide = true;
		end;
	end;
	L_427 = {};
	L_428 = false;
	return ;
end;
L_386:CreateSection("Coins & Flowers & Chests");
local L_461 = game:GetService("ReplicatedStorage");
local L_462 = game:GetService("Workspace");
local L_463 = L_461:WaitForChild("RemoteEvents"):WaitForChild("RequestCollectCoints");
local L_478 = function(...)
	local L_464 = {};
	local L_465 = {
		ipairs(L_462:GetDescendants())
	};
	local L_466 = L_465[1];
	local L_467 = L_465[3];
	local L_468 = L_465[2];
	while true do
		local L_469;
		L_467, L_469 = L_466(L_468, L_467);
		if not L_467 then
			break;
		end;
		if L_469.Name == "Coin Stack" and L_469.Parent then
			table.insert(L_464, L_469);
		end;
	end;
	local L_470 = {
		ipairs(L_464)
	};
	local L_471 = L_470[2];
	local L_472 = L_470[1];
	local L_473 = L_470[3];
	while true do
		local L_474;
		L_473, L_474 = L_472(L_471, L_473);
		if not L_473 then
			break;
		end;
		local L_475 = L_474;
		if L_475 and L_475.Parent then
			local L_476 = {
				pcall(function(...)
					L_463:InvokeServer(L_475);
					return ;
				end)
			};
			local L_477 = L_476[2];
			if not L_476[1] then
				warn("failed to collect shit so make it work boyyyyy", L_475:GetFullName(), L_477);
			else
				print("nigga the coin is collected yayyyy", L_475:GetFullName());
			end;
			task.wait(0.25);
		end;
	end;
	L_81:Notify({
		Title = "Coin Stacks",
		Content = "All Coin Stacks have been collected!",
		Duration = 5,
		Image = 4483362458
	});
	return ;
end;
L_386:CreateButton({
	Name = "Collect ALL Coin Stacks",
	Callback = function(...)
		L_478();
		return ;
	end
});
local L_479 = game:GetService("Players");
local L_480 = game:GetService("Workspace");
local L_481 = L_479.LocalPlayer;
local L_482 = (L_481.Character or L_481.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart");
local L_483 = L_480:WaitForChild("Map"):WaitForChild("Landmarks");
local L_503 = function(...)
	local L_484 = {};
	local L_485 = {
		ipairs(L_483:GetChildren())
	};
	local L_486 = L_485[3];
	local L_487 = L_485[1];
	local L_488 = L_485[2];
	while true do
		local L_489;
		L_486, L_489 = L_487(L_488, L_486);
		if not L_486 then
			break;
		end;
		if L_489.Name == "Flower" and L_489.Parent then
			table.insert(L_484, L_489);
		end;
	end;
	local L_490 = math.ceil(math.sqrt(#L_484));
	local L_491 = 4;
	local L_492 = L_482.Position.X - (L_490 - 1) / 2 * L_491;
	local L_493 = L_482.Position.Z - (L_490 - 1) / 2 * L_491;
	local L_494 = L_482.Position.Y + 3;
	local L_495 = {
		ipairs(L_484)
	};
	local L_496 = L_495[1];
	local L_497 = L_495[3];
	local L_498 = L_495[2];
	while true do
		local L_499;
		L_497, L_499 = L_496(L_498, L_497);
		if not L_497 then
			break;
		end;
		local L_500 = math.floor((L_497 - 1) / L_490);
		local L_501 = (L_497 - 1) % L_490;
		local L_502 = Vector3.new(L_492 + L_501 * L_491, L_494, L_493 + L_500 * L_491);
		if not L_499:IsA("Model") or not L_499.PrimaryPart then
			if L_499:IsA("BasePart") then
				L_499.CFrame = CFrame.new(L_502);
			end;
		else
			L_499:SetPrimaryPartCFrame(CFrame.new(L_502));
		end;
		task.wait(0.1);
	end;
	L_81:Notify({
		Title = "Flowers",
		Content = "All Flowers have been teleported boy!!!",
		Duration = 5,
		Image = 4483362458
	});
	return ;
end;
L_386:CreateButton({
	Name = "Bring All Flowers",
	Callback = function(...)
		L_503();
		return ;
	end
});
L_386:CreateButton({
	Name = "Open All Chests",
	Callback = function(...)
		local L_504 = true;
		task.spawn(function(...)
			while L_504 do
				local L_505 = L_480:FindFirstChild("Items");
				if L_505 then
					local L_506 = L_505.GetChildren;
					local L_507 = {
						ipairs(L_506(L_505))
					};
					local L_508 = L_507[2];
					local L_509 = L_507[1];
					local L_510 = L_507[3];
					while true do
						local L_511;
						L_510, L_511 = L_509(L_508, L_510);
						if not L_510 then
							break;
						end;
						if L_511:IsA("Model") and L_511.Name:match("^Item Chest%d*$") then
							local L_512 = L_511:FindFirstChildWhichIsA("ProximityPrompt", true);
							if L_512 then
								fireproximityprompt(L_512, 3);
							end;
						end;
					end;
				end;
				task.wait(2);
				L_504 = false;
			end;
			return ;
		end);
		return ;
	end
});
L_386:CreateToggle({
	Name = "Auto Open Chests",
	CurrentValue = false,
	Flag = "AutoChestsToggle",
	Callback = function(L_513, ...)
		if not L_513 then
			chestsRunning = false;
		else
			chestsRunning = true;
			task.spawn(function(...)
				while chestsRunning do
					local L_514 = L_480:FindFirstChild("Items");
					if L_514 then
						local L_515 = L_514.GetChildren;
						local L_516 = {
							ipairs(L_515(L_514))
						};
						local L_517 = L_516[3];
						local L_518 = L_516[1];
						local L_519 = L_516[2];
						while true do
							local L_520;
							L_517, L_520 = L_518(L_519, L_517);
							if not L_517 then
								break;
							end;
							if L_520:IsA("Model") and L_520.Name:match("^Item Chest%d*$") then
								local L_521 = L_520:FindFirstChildWhichIsA("ProximityPrompt", true);
								if L_521 then
									fireproximityprompt(L_521, 3);
								end;
							end;
						end;
					end;
					task.wait(2);
				end;
				return ;
			end);
		end;
		return ;
	end
});
L_386:CreateLabel("Pickup All Flowers next update!", nil);
L_386:CreateSection("Tree Teleport");
L_386:CreateButton({
	Name = "Bring All Small Trees",
	Callback = function(...)
		if L_428 then
			L_81:Notify({
				Title = "Info",
				Content = "Trees are already brought to you!",
				Duration = 3
			});
		else
			L_453();
			L_81:Notify({
				Title = "Success",
				Content = "All Small Trees brought to you!",
				Duration = 3
			});
		end;
		return ;
	end
});
L_386:CreateButton({
	Name = "Restore Trees to Original Positions",
	Callback = function(...)
		if not L_428 then
			L_81:Notify({
				Title = "Info",
				Content = "Trees are already in original positions!",
				Duration = 3
			});
		else
			L_460();
			L_81:Notify({
				Title = "Success",
				Content = "Trees restored to original positions!",
				Duration = 3
			});
		end;
		return ;
	end
});
L_386:CreateButton({
	Name = "Count Small Trees",
	Callback = function(...)
		local L_522 = L_438();
		L_81:Notify({
			Title = "Tree Count",
			Content = "Found " .. #L_522 .. " Small Trees in the map",
			Duration = 5
		});
		return ;
	end
});
L_386:CreateLabel("Everything works, notify us if anything bugged!", nil);
local L_523 = L_82:CreateTab("Auto Trees & Invisibility", 4483362458);
L_523:CreateSection("Chop Aura Settings");
local L_524 = false;
local L_525 = 50;
local L_526 = 0;
local L_527 = {
	["Old Axe"] = "3_7367831688",
	["Good Axe"] = "116_7367831688",
	["Strong Axe"] = "116_7367831688",
	["Ice Axe"] = "116_7367831688",
	Chainsaw = "647_8992824875"
};
local L_536 = function(L_528, ...)
	local L_529 = game:GetService("Players").LocalPlayer;
	local L_530 = {
		pairs(L_527)
	};
	local L_531 = L_530[3];
	local L_532 = L_530[1];
	local L_533 = L_530[2];
	local L_534, L_535;
	repeat
		repeat
			L_531, L_534 = L_532(L_533, L_531);
			if not L_531 then
				return nil, nil;
			end;
			if L_528 then
				L_528 = L_531 ~= "Old Axe" and (L_531 ~= "Good Axe" and (L_531 ~= "Strong Axe" and (L_531 ~= "Ice Axe" and L_531 ~= "Chainsaw")));
			end;
		until not L_528;
		L_535 = L_529:FindFirstChild("Inventory") and L_529.Inventory:FindFirstChild(L_531);
	until L_535;
	return L_535, L_534;
end;
local L_538 = function(L_537, ...)
	if L_537 then
		game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents").EquipItemHandle:FireServer("FireAllClients", L_537);
	end;
	return ;
end;
local L_566 = function(...)
	local L_539 = game:GetService("Players").LocalPlayer;
	local L_540 = game:GetService("Workspace");
	local L_541 = game:GetService("ReplicatedStorage");
	while L_524 do
		local L_542 = (L_539.Character or L_539.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart");
		if not L_542 then
			task.wait(0.5);
		else
			local L_543 = {
				L_536(true)
			};
			local L_544 = L_543[2];
			local L_545 = L_543[1];
			if not L_545 or not L_544 then
				task.wait(1);
			else
				L_538(L_545);
				L_526 = L_526 + 1;
				local L_546 = {};
				local L_547 = L_540:FindFirstChild("Map");
				if L_547 then
					if L_547:FindFirstChild("Foliage") then
						local L_548 = {
							ipairs(L_547.Foliage:GetChildren())
						};
						local L_549 = L_548[1];
						local L_550 = L_548[3];
						local L_551 = L_548[2];
						while true do
							local L_552;
							L_550, L_552 = L_549(L_551, L_550);
							if not L_550 then
								break;
							end;
							if L_552:IsA("Model") and (L_552.Name == "Small Tree" or L_552.Name == "Snowy Small Tree") then
								table.insert(L_546, L_552);
							end;
						end;
					end;
					if L_547:FindFirstChild("Landmarks") then
						local L_553 = {
							ipairs(L_547.Landmarks:GetChildren())
						};
						local L_554 = L_553[1];
						local L_555 = L_553[3];
						local L_556 = L_553[2];
						while true do
							local L_557;
							L_555, L_557 = L_554(L_556, L_555);
							if not L_555 then
								break;
							end;
							if L_557:IsA("Model") and L_557.Name == "Small Tree" then
								table.insert(L_546, L_557);
							end;
						end;
					end;
				end;
				local L_558 = {
					ipairs(L_546)
				};
				local L_559 = L_558[2];
				local L_560 = L_558[3];
				local L_561 = L_558[1];
				while true do
					local L_562;
					L_560, L_562 = L_561(L_559, L_560);
					if not L_560 then
						break;
					end;
					local L_563 = L_562;
					local L_564 = L_563:FindFirstChild("Trunk");
					if L_564 then
						L_564 = L_564:IsA("BasePart") and (L_564.Position - L_542.Position).Magnitude <= L_525;
					end;
					if L_564 then
						local L_565 = false;
						task.spawn(function(...)
							while L_524 and (L_563 and (L_563.Parent and not L_565)) do
								L_565 = true;
								L_526 = L_526 + 1;
								pcall(function(...)
									L_541:WaitForChild("RemoteEvents").ToolDamageObject:InvokeServer(L_563, L_545, tostring(L_526) .. "_7367831688", CFrame.new(-2.962610244751, 4.5547881126404, -75.950843811035, 0.89621275663376, -1.3894891459643e-8, 0.44362446665764, -7.994568895775e-10, 1, 3.293635941759e-8, -0.44362446665764, -2.9872644802253e-8, 0.89621275663376));
									return ;
								end);
								task.wait(0.5);
							end;
							return ;
						end);
					end;
				end;
				task.wait(0.1);
			end;
		end;
	end;
	return ;
end;
L_523:CreateToggle({
	Name = "Chop Aura (Not Patched)",
	CurrentValue = false,
	Flag = "ChopAuraToggle",
	Callback = function(L_567, ...)
		L_524 = L_567;
		if not L_567 then
			local L_568 = {
				L_536(true)
			};
			local L_569 = L_568[1];
			local L_570 = L_568[2];
			if L_569 then
				game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents").UnequipItemHandle:FireServer("FireAllClients", L_569);
			end;
			L_81:Notify({
				Title = "Chop Aura",
				Content = "Chop Aura has been disabled!",
				Duration = 3,
				Image = 4483362458
			});
		else
			task.spawn(L_566);
			L_81:Notify({
				Title = "Chop Aura",
				Content = "Chop Aura has been enabled!",
				Duration = 3,
				Image = 4483362458
			});
		end;
		return ;
	end
});
L_523:CreateSlider({
	Name = "Aura Radius",
	Range = {
		10,
		150
	},
	Increment = 10,
	Suffix = "Studs",
	CurrentValue = 50,
	Flag = "AuraRadius",
	Callback = function(L_571, ...)
		L_525 = L_571;
		return ;
	end
});
L_523:CreateLabel("Use this on Auto Make Trees under this Text, pretty good for Auto Make Trees & Auto Build!", nil);
local L_572 = false;
local L_573 = false;
local L_574 = false;
local L_575 = false;
local L_577 = function(...)
	while L_572 do
		local L_576 = {
			Instance.new("Model"),
			Vector3.new(-41.2053, 1.0633, 29.2236)
		};
		game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RequestPlantItem"):InvokeServer(unpack(L_576));
		task.wait(1);
	end;
	return ;
end;
local L_578 = game:GetService("RunService");
local L_579 = game:GetService("Players");
local L_580 = game:GetService("ReplicatedStorage");
local L_590 = function(...)
	local L_581 = L_579.LocalPlayer;
	local L_582 = (L_581.Character or L_581.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart");
	local L_583 = 80;
	local L_584 = 5;
	while L_573 do
		pcall(function(...)
			local L_585 = L_480:FindFirstChild("Characters") and L_480.Characters:FindFirstChild("Owl");
			local L_586 = L_585;
			if L_585 then
				L_586 = L_585:FindFirstChild("HumanoidRootPart");
			end;
			if L_586 then
				local L_587 = L_582.Position;
				local L_588 = L_585.HumanoidRootPart.Position;
				if (L_587 - L_588).Magnitude < L_583 then
					local L_589 = (L_587 - L_588).Unit;
					L_582.CFrame = L_582.CFrame + L_589 * L_584;
				end;
			end;
			return ;
		end);
		L_578.RenderStepped:Wait();
	end;
	return ;
end;
local L_600 = function(...)
	local L_591 = L_579.LocalPlayer;
	local L_592 = (L_591.Character or L_591.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart");
	local L_593 = 60;
	local L_594 = 4;
	while L_574 do
		pcall(function(...)
			local L_595 = L_480:FindFirstChild("Characters") and L_480.Characters:FindFirstChild("Deer");
			local L_596 = L_595;
			if L_595 then
				L_596 = L_595:FindFirstChild("HumanoidRootPart");
			end;
			if L_596 then
				local L_597 = L_592.Position;
				local L_598 = L_595.HumanoidRootPart.Position;
				if (L_597 - L_598).Magnitude < L_593 then
					local L_599 = (L_597 - L_598).Unit;
					L_592.CFrame = L_592.CFrame + L_599 * L_594;
				end;
			end;
			return ;
		end);
		L_578.RenderStepped:Wait();
	end;
	return ;
end;
local L_604 = function(...)
	while L_575 do
		pcall(function(...)
			local L_601 = L_580:FindFirstChild("RemoteEvents") and L_580.RemoteEvents:FindFirstChild("DeerHitByTorch");
			local L_602 = L_480:FindFirstChild("Characters") and L_480.Characters:FindFirstChild("Deer");
			local L_603 = L_601;
			if L_601 then
				L_603 = L_602;
			end;
			if L_603 then
				L_601:InvokeServer(L_602);
			end;
			return ;
		end);
		task.wait(0.1);
	end;
	return ;
end;
L_523:CreateSection("Auto Make Trees");
local L_605 = false;
L_523:CreateButton({
	Name = "Dupe Sapling Plant (1 Sapling Needed)",
	Info = "Continuously plants saplings in a grid pattern",
	Callback = function(...)
		local L_606 = false;
		local L_607 = game:GetService("Players");
		local L_608 = game:GetService("ReplicatedStorage");
		local L_609 = L_607.LocalPlayer;
		local L_610 = (L_609.Character or L_609.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart");
		local L_611 = L_480:FindFirstChild("Items");
		local L_612 = nil;
		if L_611 then
			local L_613 = {
				ipairs(L_611:GetChildren())
			};
			local L_614 = L_613[3];
			local L_615 = L_613[2];
			local L_616 = L_613[1];
			local L_617;
			repeat
				L_614, L_617 = L_616(L_615, L_614);
				if not L_614 then
					L_606 = true;
				end;
				if L_606 then
					break;
				end;
			until L_617:IsA("Model") and L_617.Name == "Sapling";
			if not L_606 then
				L_612 = L_617;
			end;
		end;
		L_606 = false;
		if L_612 then
			L_605 = true;
			L_81:Notify({
				Title = "Dupe Sapling Plant",
				Content = "Started infinite sapling planting! Click Stop to end.",
				Duration = 3
			});
			while L_605 do
				local L_618 = (L_610.CFrame * CFrame.new(0, 0, -8)).Position;
				local L_619 = 5;
				local L_620 = 3;
				local L_621 = 1;
				local L_622 = L_621 < 0;
				local L_623 = 1 - L_621;
				repeat
					L_623 = L_623 + L_621;
					local L_624 = L_623 <= L_619;
					local L_625 = not L_622 and L_624;
					local L_626 = L_623 >= L_619;
					if (not L_622 or not L_626) and not L_625 then
						break;
					end;
					local L_627 = 1;
					local L_628 = L_627 < 0;
					local L_629 = 1 - L_627;
					while true do
						L_629 = L_629 + L_627;
						local L_630 = L_629 <= L_619;
						local L_631 = not L_628 and L_630;
						local L_632 = L_629 >= L_619;
						if not (L_628 and L_632 or L_631) or not L_605 then
							break;
						end;
						local L_633 = L_618 + Vector3.new((L_623 - L_619 / 2) * L_620, 0, (L_629 - L_619 / 2) * L_620);
						pcall(function(...)
							L_608:WaitForChild("RemoteEvents"):WaitForChild("RequestPlantItem"):InvokeServer(L_612, L_633);
							return ;
						end);
						task.wait(0.05);
					end;
				until not L_605;
				if L_605 then
					task.wait(0.1);
				end;
			end;
			L_81:Notify({
				Title = "Dupe Sapling Plant",
				Content = "Stopped planting saplings.",
				Duration = 3
			});
			return ;
		end;
		warn("No sapling found to use as template!");
		L_81:Notify({
			Title = "Dupe Sapling Plant",
			Content = "Error: No sapling found in workspace!",
			Duration = 5,
			Type = "Error"
		});
		return ;
	end
});
L_523:CreateButton({
	Name = "Stop Dupe Sapling Plant",
	Info = "Stops the infinite sapling planting",
	Callback = function(...)
		L_605 = false;
		L_81:Notify({
			Title = "Dupe Sapling Plant",
			Content = "Stopping sapling planting...",
			Duration = 3
		});
		return ;
	end
});
L_523:CreateLabel("Dupe Sapling Plant now 100% works!", nil);
L_523:CreateSection("Anti Monster");
L_523:CreateToggle({
	Name = "Escape From Owl",
	CurrentValue = false,
	Flag = "EscapeOwlToggle",
	Callback = function(L_634, ...)
		L_573 = L_634;
		if not L_634 then
			L_81:Notify({
				Title = "Escape Owl",
				Content = "Escape from Owl has been disabled!",
				Duration = 3,
				Image = 4483362458
			});
		else
			task.spawn(L_590);
			L_81:Notify({
				Title = "Escape Owl",
				Content = "Escape from Owl has been enabled!",
				Duration = 3,
				Image = 4483362458
			});
		end;
		return ;
	end
});
L_523:CreateToggle({
	Name = "Escape From Deer",
	CurrentValue = false,
	Flag = "EscapeDeerToggle",
	Callback = function(L_635, ...)
		L_574 = L_635;
		if not L_635 then
			L_81:Notify({
				Title = "Escape Deer",
				Content = "Escape from Deer has been disabled!",
				Duration = 3,
				Image = 4483362458
			});
		else
			task.spawn(L_600);
			L_81:Notify({
				Title = "Escape Deer",
				Content = "Escape from Deer has been enabled!",
				Duration = 3,
				Image = 4483362458
			});
		end;
		return ;
	end
});
L_523:CreateToggle({
	Name = "Auto Stun Deer (Need Flashlight)",
	CurrentValue = false,
	Flag = "AutoStunDeerToggle",
	Callback = function(L_636, ...)
		L_575 = L_636;
		if not L_636 then
			L_81:Notify({
				Title = "Auto Stun Deer",
				Content = "Auto Stun Deer has been disabled!",
				Duration = 3,
				Image = 4483362458
			});
		else
			task.spawn(L_604);
			L_81:Notify({
				Title = "Auto Stun Deer",
				Content = "Auto Stun Deer has been enabled!",
				Duration = 3,
				Image = 4483362458
			});
		end;
		return ;
	end
});
local L_637 = L_82:CreateTab("Best Auto Win", 4483362458);
L_637:CreateSection("Auto Win");
L_637:CreateButton({
	Name = "Enable Godmode",
	Callback = function(...)
		--loadstring(game:HttpGet("https://raw.githubusercontent.com/scripture2025/FlashHub/refs/heads/main/InfHealth"))();
		local function EnableGM(Char)
			Char.Humanoid.Changed:Connect(function(p2)
				if p2 == "Health" and Char.Humanoid.Health < 100 then
					game:GetService("ReplicatedStorage").RemoteEvents.DamagePlayer:FireServer(math.huge * - 1)
				end
			end)
		end
		game.Players.LocalPlayer.CharacterAdded:Connect(function(p4)
			EnableGM(p4)
		end)
		EnableGM(game.Players.LocalPlayer.Character)
		print("ProBaconHub")
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "Pro Bacon",
			Text = "Inf health applied...",
			Duration = 5
		})
		return ;
	end
});
local L_638 = game:GetService("Players");
AntiAFK = function(...)
	local L_639 = getconnections or get_signal_cons;
	if not L_639 then
		local L_640 = cloneref(game:GetService("VirtualUser"));
		L_638.LocalPlayer.Idled:Connect(function(...)
			L_640:CaptureController();
			L_640:ClickButton2(Vector2.new());
			return ;
		end);
	else
		local L_641 = {
			pairs(L_639(L_638.LocalPlayer.Idled))
		};
		local L_642 = L_641[2];
		local L_643 = L_641[3];
		local L_644 = L_641[1];
		while true do
			local L_645;
			L_643, L_645 = L_644(L_642, L_643);
			if not L_643 then
				break;
			end;
			if not L_645.Disable then
				if L_645.Disconnect then
					L_645.Disconnect(L_645);
				end;
			else
				L_645.Disable(L_645);
			end;
		end;
	end;
	if notify then
		notify("Anti Idle", "Anti idle is enabled");
	end;
	return ;
end;
L_637:CreateToggle({
	Name = "Auto Days & Anti-AFK",
	CurrentValue = false,
	Flag = "AutoDaysToggle",
	Callback = function(L_646, ...)
		autoDaysActive = L_646;
		if not L_646 then
			autoDaysActive = false;
			local L_647 = Vector3.new(-37.08, 6.98, -16.33);
			local L_648 = (L_638.LocalPlayer.Character or L_638.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart");
			if L_648 then
				L_648.CFrame = CFrame.new(L_647);
			end;
		else
			autoDaysThread = task.spawn(function(...)
				local L_649 = game:GetService("Players");
				local L_650 = game:GetService("Workspace");
				local L_651 = game:GetService("VirtualInputManager");
				local L_652 = L_650.CurrentCamera;
				local L_653 = L_649.LocalPlayer;
				local L_654 = Vector3.new(0.25, 7.82, -0.65);
				local L_655 = Vector3.new(-1.88, -40.59, 3.62);
				local L_656 = 1500;
				local L_657 = 50;
				local L_658 = 10;
				local L_659 = 0.05;
				local L_661 = function(L_660, ...)
					L_652.CFrame = CFrame.new(L_652.CFrame.Position, L_660.Position);
					return ;
				end;
				(function(...)
					if not L_650:FindFirstChild("SafePlatform") then
						local L_662 = Instance.new("Part");
						L_662.Size = Vector3.new(10, 1, 10);
						L_662.Position = L_655 - Vector3.new(0, 0.5, 0);
						L_662.Anchored = true;
						L_662.Name = "SafePlatform";
						L_662.Parent = L_650;
					end;
					return ;
				end)();
				(function(L_663, ...)
					local L_664 = false;
					local L_665 = (L_653.Character or L_653.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart");
					local L_666 = tick();
					repeat
						local L_667;
						repeat
							local L_668, L_669, L_670;
							if not L_664 then
								if not (tick() - L_666 < L_663) or not autoDaysActive then
									return ;
								end;
								L_668 = L_656;
								L_669 = L_657;
								L_670 = L_669 < 0;
								L_667 = 0 - L_669;
							end;
							L_664 = false;
							L_667 = L_667 + L_669;
							local L_671 = L_667 <= L_668;
							local L_672 = not L_670 and L_671;
							local L_673 = L_667 >= L_668;
						until L_670 and L_673 or L_672;
						local L_674 = 360;
						local L_675 = L_658;
						local L_676 = L_675 < 0;
						local L_677 = 0 - L_675;
						repeat
							L_677 = L_677 + L_675;
							local L_678 = L_677 <= L_674;
							local L_679 = not L_676 and L_678;
							local L_680 = L_677 >= L_674;
							if (not L_676 or not L_680) and not L_679 then
								L_664 = true;
							end;
							if L_664 then
								break;
							end;
							if not autoDaysActive then
								return ;
							end;
							local L_681 = math.rad(L_677);
							local L_682 = L_654.X + L_667 * math.cos(L_681);
							local L_683 = L_654.Z + L_667 * math.sin(L_681);
							L_665.CFrame = CFrame.new(L_682, L_654.Y, L_683);
							task.wait(L_659);
						until tick() - L_666 >= L_663;
					until not L_664;
					return ;
				end)(80);
				if autoDaysActive then
					local L_684 = (L_653.Character or L_653.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart");
					L_684.CFrame = CFrame.new(L_655);
					task.wait(60);
					while autoDaysActive do
						(function(L_685, ...)
							local L_686 = false;
							local L_687 = (L_653.Character or L_653.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart");
							local L_688 = 1;
							local L_689 = L_688 < 0;
							local L_690 = 1 - L_688;
							while true do
								L_690 = L_690 + L_688;
								local L_691 = L_690 <= L_685;
								local L_692 = not L_689 and L_691;
								local L_693 = L_690 >= L_685;
								if (not L_689 or not L_693) and not L_692 then
									break;
								end;
								if not autoDaysActive then
									return ;
								end;
								local L_694 = {};
								local L_695 = L_650:FindFirstChild("Items") and L_650.Items:FindFirstChild("Carrot");
								local L_696 = L_650:FindFirstChild("Map") and (L_650.Map:FindFirstChild("Foliage") and L_650.Map.Foliage:FindFirstChild("Carrot Patch"));
								local L_697 = L_650:FindFirstChild("Items") and L_650.Items:FindFirstChild("Berry");
								if L_695 then
									table.insert(L_694, L_695);
								end;
								if L_696 then
									table.insert(L_694, L_696);
								end;
								if L_697 then
									table.insert(L_694, L_697);
								end;
								local L_698 = {
									ipairs(L_694)
								};
								local L_699 = L_698[1];
								local L_700 = L_698[2];
								local L_701 = L_698[3];
								local L_702;
								repeat
									local L_703;
									L_701, L_703 = L_699(L_700, L_701);
									if not L_701 then
										L_686 = true;
									end;
									if L_686 then
										break;
									end;
									if not autoDaysActive then
										return ;
									end;
									L_702 = L_703:IsA("Model") and L_703.PrimaryPart or L_703;
								until L_702;
								if not L_686 then
									local L_704 = (L_702.Position - L_687.Position).Unit;
									local L_705 = L_702.Position - L_704 * 2;
									L_687.CFrame = CFrame.new(L_705 + Vector3.new(0, 2, 0));
									L_661(L_702);
									L_651:SendKeyEvent(true, Enum.KeyCode.E, false, game);
									task.wait(0.1);
									L_651:SendKeyEvent(false, Enum.KeyCode.E, false, game);
								end;
								L_686 = false;
								task.wait(0.2);
							end;
							return ;
						end)(15);
						if not autoDaysActive then
							return ;
						end;
						L_684.CFrame = CFrame.new(L_655);
						task.wait(60);
					end;
					return ;
				end;
				return ;
			end);
		end;
		return ;
	end
});
Divider = L_637:CreateDivider();
L_637:CreateLabel("You must enable everything for the Auto Win to work!", nil);
L_637:CreateLabel("Recommendation: Get the kids, and get beds for higher day multiplier!", nil);
L_637:CreateLabel("Recommendation: Don't use Anti Monster when using Auto Win!", nil);
local L_706 = L_82:CreateTab("Game ESPs", 4483362458);
L_706:CreateSection("Animal ESPs");
local L_707 = "Bunny";
local L_708 = "Wolf";
local L_709 = "Alpha Wolf";
local L_710 = "Cultist";
local L_711 = "Crossbow Cultist";
local L_712 = "Juggernaut Cultist";
local L_713 = "Bear";
local L_714 = "Arctic Fox";
local L_715 = "Polar Bear";
local L_716 = "Mammoth";
local L_717 = "Scorpion";
local L_718 = "Hellephant";
local L_719 = false;
local L_720 = {};
local L_721 = {};
createESP = function(L_722, ...)
	if not L_721[L_722] then
		local L_723 = Instance.new("Highlight");
		L_723.Name = "AnimalESP_Highlight";
		L_723.FillColor = Color3.fromRGB(255, 0, 0);
		L_723.OutlineColor = Color3.fromRGB(255, 255, 255);
		L_723.FillTransparency = 0.6;
		L_723.OutlineTransparency = 0;
		L_723.Parent = L_722;
		local L_724 = Instance.new("BillboardGui");
		L_724.Name = "AnimalESP_Label";
		L_724.Size = UDim2.new(0, 100, 0, 30);
		L_724.StudsOffset = Vector3.new(0, 4, 0);
		L_724.AlwaysOnTop = true;
		L_724.Parent = L_722:FindFirstChildWhichIsA("BasePart") or (L_722.PrimaryPart or L_722);
		local L_725 = Instance.new("TextLabel");
		L_725.Size = UDim2.new(1, 0, 1, 0);
		L_725.BackgroundTransparency = 1;
		L_725.Text = L_722.Name;
		L_725.TextColor3 = Color3.fromRGB(255, 0, 0);
		L_725.TextStrokeTransparency = 0;
		L_725.TextScaled = true;
		L_725.Font = Enum.Font.SourceSansBold;
		L_725.Parent = L_724;
		L_721[L_722] = {
			Highlight = L_723,
			Label = L_724
		};
		return ;
	end;
	return ;
end;
local L_727 = function(L_726, ...)
	if L_721[L_726] then
		if L_721[L_726].Highlight then
			L_721[L_726].Highlight:Destroy();
		end;
		if L_721[L_726].Label then
			L_721[L_726].Label:Destroy();
		end;
		L_721[L_726] = nil;
	end;
	return ;
end;
local L_734 = function(...)
	local L_728 = L_480:WaitForChild("Characters");
	local L_729 = {
		pairs(L_728:GetChildren())
	};
	local L_730 = L_729[2];
	local L_731 = L_729[1];
	local L_732 = L_729[3];
	while true do
		local L_733;
		L_732, L_733 = L_731(L_730, L_732);
		if not L_732 then
			break;
		end;
		if not table.find(L_720, L_733.Name) then
			L_727(L_733);
		elseif not L_719 then
			L_727(L_733);
		elseif not L_721[L_733] then
			createESP(L_733);
		end;
	end;
	return ;
end;
L_480.Characters.ChildAdded:Connect(function(L_735, ...)
	local L_736 = L_719;
	if L_736 then
		L_736 = table.find(L_720, L_735.Name);
	end;
	if L_736 then
		createESP(L_735);
	end;
	return ;
end);
L_480.Characters.ChildRemoved:Connect(function(L_737, ...)
	L_727(L_737);
	return ;
end);
L_706:CreateDropdown({
	Name = "Select Animals for ESP",
	Options = {
		L_707,
		L_708,
		L_709,
		L_710,
		L_711,
		L_712,
		L_713,
		L_714,
		L_715,
		L_716,
		L_717,
		L_718
	},
	CurrentOption = {},
	MultipleOptions = true,
	Flag = "AnimalESP_Dropdown",
	Callback = function(L_738, ...)
		L_720 = L_738;
		L_734();
		return ;
	end
});
L_706:CreateButton({
	Name = "Enable Animal ESP",
	Callback = function(...)
		L_719 = true;
		L_734();
		L_81:Notify({
			Title = "Animal ESP",
			Content = "Enabled for selected animals.",
			Duration = 3
		});
		return ;
	end
});
L_706:CreateButton({
	Name = "Disable Animal ESP",
	Callback = function(...)
		L_719 = false;
		L_734();
		L_81:Notify({
			Title = "Animal ESP",
			Content = "Disabled for all animals.",
			Duration = 3
		});
		return ;
	end
});
L_706:CreateLabel("ESP for all the Animals including in Snow and Volcanic!", nil);
L_706:CreateSection("Item ESP");
local L_739 = L_480:WaitForChild("Items");
local L_740 = false;
local L_741 = {};
local L_742 = 0;
local L_743 = 10;
local L_750 = function(...)
	local L_744 = tick();
	if not (L_744 - L_742 < L_743) then
		L_742 = L_744;
		local L_745 = {
			pairs(L_741)
		};
		local L_746 = L_745[2];
		local L_747 = L_745[1];
		local L_748 = L_745[3];
		while true do
			local L_749;
			L_748, L_749 = L_747(L_746, L_748);
			if not L_748 then
				break;
			end;
			if not L_748 or not L_748.Parent then
				if L_749.Highlight then
					L_749.Highlight:Destroy();
				end;
				if L_749.Label then
					L_749.Label:Destroy();
				end;
				L_741[L_748] = nil;
			end;
		end;
		return ;
	end;
	return ;
end;
local L_757 = function(...)
	if L_740 then
		L_750();
		local L_751 = {
			pairs(L_741)
		};
		local L_752 = L_751[1];
		local L_753 = L_751[3];
		local L_754 = L_751[2];
		while true do
			local L_755;
			L_753, L_755 = L_752(L_754, L_753);
			if not L_753 then
				break;
			end;
			local L_756 = L_753;
			if L_753 then
				L_756 = L_753.Parent;
			end;
			if L_756 and L_755.Highlight then
				L_755.Highlight.Adornee = L_753;
			end;
		end;
		return ;
	end;
	return ;
end;
task.spawn(function(...)
	while task.wait(2) do
		L_757();
	end;
	return ;
end);
local L_762 = function(L_758, ...)
	if not L_741[L_758] then
		local L_759 = Instance.new("Highlight");
		L_759.Name = "ItemESP_Highlight";
		L_759.FillColor = Color3.fromRGB(0, 255, 0);
		L_759.OutlineColor = Color3.fromRGB(255, 255, 255);
		L_759.FillTransparency = 0.6;
		L_759.OutlineTransparency = 0;
		L_759.Parent = L_758;
		local L_760 = Instance.new("BillboardGui");
		L_760.Name = "ItemESP_Label";
		L_760.Size = UDim2.new(0, 120, 0, 30);
		L_760.StudsOffset = Vector3.new(0, 4, 0);
		L_760.AlwaysOnTop = true;
		L_760.Parent = L_758:FindFirstChildWhichIsA("BasePart") or (L_758.PrimaryPart or L_758);
		local L_761 = Instance.new("TextLabel");
		L_761.Size = UDim2.new(1, 0, 1, 0);
		L_761.BackgroundTransparency = 1;
		L_761.Text = L_758.Name;
		L_761.TextColor3 = Color3.fromRGB(0, 255, 0);
		L_761.TextStrokeTransparency = 0;
		L_761.TextScaled = true;
		L_761.Font = Enum.Font.SourceSansBold;
		L_761.Parent = L_760;
		L_741[L_758] = {
			Highlight = L_759,
			Label = L_760
		};
		return ;
	end;
	return ;
end;
local L_764 = function(L_763, ...)
	if L_741[L_763] then
		if L_741[L_763].Highlight then
			L_741[L_763].Highlight:Destroy();
		end;
		if L_741[L_763].Label then
			L_741[L_763].Label:Destroy();
		end;
		L_741[L_763] = nil;
	end;
	return ;
end;
local L_770 = function(...)
	local L_765 = {
		pairs(L_739:GetChildren())
	};
	local L_766 = L_765[2];
	local L_767 = L_765[3];
	local L_768 = L_765[1];
	while true do
		local L_769;
		L_767, L_769 = L_768(L_766, L_767);
		if not L_767 then
			break;
		end;
		if not table.find(SelectedItems, L_769.Name) then
			L_764(L_769);
		elseif not L_740 then
			L_764(L_769);
		elseif not L_741[L_769] then
			L_762(L_769);
		end;
	end;
	return ;
end;
L_739.ChildAdded:Connect(function(L_771, ...)
	local L_772 = L_740;
	if L_772 then
		L_772 = table.find(SelectedItems, L_771.Name);
	end;
	if L_772 then
		L_762(L_771);
	end;
	return ;
end);
L_739.ChildRemoved:Connect(function(L_773, ...)
	L_764(L_773);
	return ;
end);
local L_779 = function(...)
	ValidItems = {};
	local L_774 = {
		ipairs(L_739:GetChildren())
	};
	local L_775 = L_774[2];
	local L_776 = L_774[3];
	local L_777 = L_774[1];
	while true do
		local L_778;
		L_776, L_778 = L_777(L_775, L_776);
		if not L_776 then
			break;
		end;
		if L_778:IsA("Model") and not string.find(L_778.Name, "Chest") and not table.find(ValidItems, L_778.Name) then
			table.insert(ValidItems, L_778.Name);
		end;
	end;
	ItemDropdown:Refresh(ValidItems);
	L_81:Notify({
		Title = "Item ESP",
		Content = "Item list updated! Found " .. tostring(#ValidItems) .. " items!",
		Duration = 3
	});
	return ;
end;
ItemDropdown = L_706:CreateDropdown({
	Name = "Select Items for ESP",
	Options = {},
	CurrentOption = {},
	MultipleOptions = true,
	Flag = "ItemESP_Dropdown",
	Callback = function(L_780, ...)
		SelectedItems = L_780;
		L_770();
		return ;
	end
});
L_706:CreateButton({
	Name = "Update Item Dropdown",
	Callback = function(...)
		L_779();
		return ;
	end
});
L_706:CreateButton({
	Name = "Enable Item ESP",
	Callback = function(...)
		L_740 = true;
		L_770();
		L_81:Notify({
			Title = "Item ESP",
			Content = "Enabled for selected items!",
			Duration = 3
		});
		return ;
	end
});
L_706:CreateButton({
	Name = "Disable Item ESP",
	Callback = function(...)
		L_740 = false;
		L_770();
		L_81:Notify({
			Title = "Item ESP",
			Content = "Disabled for all items.",
			Duration = 3
		});
		return ;
	end
});
L_706:CreateToggle({
	Name = "Enable All Items ESP",
	CurrentValue = false,
	Flag = "AllItemsESP_Toggle",
	Callback = function(L_781, ...)
		if not L_781 then
			L_740 = false;
			L_770();
			L_81:Notify({
				Title = "Item ESP",
				Content = "Disabled ESP for all items.",
				Duration = 3
			});
		else
			L_740 = true;
			SelectedItems = {};
			local L_782 = {
				ipairs(L_739:GetChildren())
			};
			local L_783 = L_782[3];
			local L_784 = L_782[2];
			local L_785 = L_782[1];
			while true do
				local L_786;
				L_783, L_786 = L_785(L_784, L_783);
				if not L_783 then
					break;
				end;
				if L_786:IsA("Model") then
					table.insert(SelectedItems, L_786.Name);
				end;
			end;
			if ItemDropdown then
				ItemDropdown:Refresh(SelectedItems);
			end;
			L_770();
			L_81:Notify({
				Title = "Item ESP",
				Content = "Enabled ESP for ALL items! (" .. #SelectedItems .. " items)",
				Duration = 3
			});
		end;
		return ;
	end
});
L_706:CreateSection("Chest ESP");
local L_787 = L_480:WaitForChild("Items");
local L_788 = {};
local L_789 = {
	Normal = {
		["Item Chest"] = true,
		["Item Chest2"] = true,
		["Item Chest3"] = true,
		["Item Chest4"] = true,
		["Item Chest5"] = true,
		["Item Chest6"] = true,
		["Item Chest7"] = true
	},
	Snow = {
		["Snow Chest"] = true,
		["Snow Chest1"] = true,
		["Snow Chest2"] = true,
		["Snow Chest3"] = true
	},
	Volcanic = {
		["Volcanic Chest"] = true,
		["Volcanic Chest1"] = true,
		["Volcanic Chest2"] = true,
		["Volcanic Chest3"] = true
	}
};
local L_790 = false;
local L_791 = false;
local L_792 = false;
local L_798 = function(L_793, ...)
	if not L_788[L_793] then
		local L_794 = L_793:FindFirstChildWhichIsA("BasePart") or L_793.PrimaryPart;
		if L_794 then
			local L_795 = Instance.new("Highlight");
			L_795.Name = "ChestESP_Highlight";
			L_795.FillColor = Color3.fromRGB(255, 200, 0);
			L_795.OutlineColor = Color3.fromRGB(255, 255, 255);
			L_795.FillTransparency = 0.4;
			L_795.OutlineTransparency = 0;
			L_795.Parent = L_793;
			local L_796 = Instance.new("BillboardGui");
			L_796.Name = "ChestESP_Label";
			L_796.Size = UDim2.new(0, 120, 0, 30);
			L_796.StudsOffset = Vector3.new(0, 4, 0);
			L_796.AlwaysOnTop = true;
			L_796.Parent = L_794;
			local L_797 = Instance.new("TextLabel");
			L_797.Size = UDim2.new(1, 0, 1, 0);
			L_797.BackgroundTransparency = 1;
			L_797.Text = L_793.Name;
			L_797.TextColor3 = Color3.fromRGB(255, 220, 80);
			L_797.TextStrokeTransparency = 0;
			L_797.TextScaled = true;
			L_797.Font = Enum.Font.SourceSansBold;
			L_797.Parent = L_796;
			L_788[L_793] = {
				Highlight = L_795,
				Label = L_796
			};
			return ;
		end;
		return ;
	end;
	return ;
end;
local L_800 = function(L_799, ...)
	if L_788[L_799] then
		if L_788[L_799].Highlight then
			L_788[L_799].Highlight:Destroy();
		end;
		if L_788[L_799].Label then
			L_788[L_799].Label:Destroy();
		end;
		L_788[L_799] = nil;
	end;
	return ;
end;
local L_802 = function(L_801, ...)
	if not L_790 or not L_789.Normal[L_801] then
		if not L_791 or not L_789.Snow[L_801] then
			if not L_792 or not L_789.Volcanic[L_801] then
				return false;
			end;
			return true;
		end;
		return true;
	end;
	return true;
end;
local L_808 = function(...)
	local L_803 = {
		pairs(L_787:GetChildren())
	};
	local L_804 = L_803[3];
	local L_805 = L_803[2];
	local L_806 = L_803[1];
	while true do
		local L_807;
		L_804, L_807 = L_806(L_805, L_804);
		if not L_804 then
			break;
		end;
		if not L_802(L_807.Name) then
			L_800(L_807);
		elseif not L_788[L_807] then
			L_798(L_807);
		end;
	end;
	return ;
end;
L_787.ChildAdded:Connect(function(L_809, ...)
	if L_802(L_809.Name) then
		L_798(L_809);
	end;
	return ;
end);
L_787.ChildRemoved:Connect(function(L_810, ...)
	L_800(L_810);
	return ;
end);
L_706:CreateToggle({
	Name = "Normal Chest ESP",
	CurrentValue = false,
	Flag = "NormalChestESP_Toggle",
	Callback = function(L_811, ...)
		L_790 = L_811;
		L_808();
		local L_812 = L_81;
		local L_813 = "Title";
		local L_814 = "Chest ESP";
		local L_815 = "Content";
		if L_811 then
			L_811 = "Enabled Normal Chest ESP!";
		end;
		if not L_811 then
			L_811 = "Disabled Normal Chest ESP.";
		end;
		L_812:Notify({
			[L_813] = L_814,
			[L_815] = L_811,
			Duration = 3
		});
		return ;
	end
});
L_706:CreateToggle({
	Name = "Snow Chest ESP",
	CurrentValue = false,
	Flag = "SnowChestESP_Toggle",
	Callback = function(L_816, ...)
		L_791 = L_816;
		L_808();
		local L_817 = L_81;
		local L_818 = "Title";
		local L_819 = "Chest ESP";
		local L_820 = "Content";
		if L_816 then
			L_816 = "Enabled Snow Chest ESP!";
		end;
		if not L_816 then
			L_816 = "Disabled Snow Chest ESP.";
		end;
		L_817:Notify({
			[L_818] = L_819,
			[L_820] = L_816,
			Duration = 3
		});
		return ;
	end
});
L_706:CreateToggle({
	Name = "Volcanic Chest ESP",
	CurrentValue = false,
	Flag = "VolcanicChestESP_Toggle",
	Callback = function(L_821, ...)
		L_792 = L_821;
		L_808();
		local L_822 = L_81;
		local L_823 = "Title";
		local L_824 = "Chest ESP";
		local L_825 = "Content";
		if L_821 then
			L_821 = "Enabled Volcanic Chest ESP!";
		end;
		if not L_821 then
			L_821 = "Disabled Volcanic Chest ESP.";
		end;
		L_822:Notify({
			[L_823] = L_824,
			[L_825] = L_821,
			Duration = 3
		});
		return ;
	end
});
L_706:CreateButton({
	Name = "Enable All Chest ESP",
	Callback = function(...)
		L_790 = true;
		L_791 = true;
		L_792 = true;
		L_808();
		L_81:Notify({
			Title = "Chest ESP",
			Content = "Enabled all chest ESPs!",
			Duration = 3
		});
		return ;
	end
});
L_706:CreateButton({
	Name = "Disable All Chest ESP",
	Callback = function(...)
		L_790 = false;
		L_791 = false;
		L_792 = false;
		L_808();
		L_81:Notify({
			Title = "Chest ESP",
			Content = "Disabled all chest ESPs.",
			Duration = 3
		});
		return ;
	end
});
local L_826 = L_82:CreateTab("Chest Tab", 4483362458);
L_826:CreateSection("Best Diamond Farm V2");
L_826:CreateButton({
	Name = "Diamond Farm V2",
	Callback = function(...)
		getgenv().WebhookURL = "";
		getgenv().AutoFarm = true;
		getgenv().hop = "old";
		loadstring(game:HttpGet("https://raw.githubusercontent.com/scripture2025/FlashHub/refs/heads/main/99NightsDiamondFarm"))();
		return ;
	end
});
L_826:CreateButton({
	Name = "Copy Diamond Farm Script",
	Callback = function(...)
		setclipboard("getgenv().WebhookURL = \"\" --If not used do not write anything\ngetgenv().AutoFarm = true\ngetgenv().hop = \"old\"\nloadstring(game:HttpGet(\"https://raw.githubusercontent.com/scripture2025/FlashHub/refs/heads/main/99NightsDiamondFarm\"))()\n      ");
		L_81:Notify({
			Title = "Copied!",
			Content = "Diamond Farm V2 script copied to clipboard.",
			Duration = 5
		});
		return ;
	end
});
L_826:CreateLabel("Put this script in your Auto Execute in order to Diamond Farm!", nil);
local L_827 = game:GetService("Players");
local L_828 = game:GetService("Workspace");
local L_829 = L_827.LocalPlayer;
local L_830 = L_828:WaitForChild("Items");
local L_831 = {};
local L_832 = {
	Normal = {
		["Item Chest"] = true,
		["Item Chest2"] = true,
		["Item Chest3"] = true,
		["Item Chest4"] = true,
		["Item Chest5"] = true,
		["Item Chest6"] = true,
		["Item Chest7"] = true
	},
	Snow = {
		["Snow Chest"] = true,
		["Snow Chest1"] = true,
		["Snow Chest2"] = true,
		["Snow Chest3"] = true
	},
	Volcanic = {
		["Volcanic Chest"] = true,
		["Volcanic Chest1"] = true,
		["Volcanic Chest2"] = true,
		["Volcanic Chest3"] = true
	}
};
local L_835 = function(L_833, L_834, ...)
	return L_832[L_834] and L_832[L_834][L_833.Name];
end;
local L_847 = function(L_836, ...)
	local L_837 = L_829.Character and L_829.Character:FindFirstChild("HumanoidRootPart");
	if L_837 then
		local L_838 = nil;
		local L_839 = math.huge;
		local L_840 = {
			pairs(L_830:GetChildren())
		};
		local L_841 = L_840[1];
		local L_842 = L_840[2];
		local L_843 = L_840[3];
		while true do
			local L_844;
			L_843, L_844 = L_841(L_842, L_843);
			if not L_843 then
				break;
			end;
			if L_835(L_844, L_836) then
				local L_845 = L_844:FindFirstChildWhichIsA("BasePart");
				if L_845 then
					local L_846 = (L_837.Position - L_845.Position).Magnitude;
					if L_846 < L_839 then
						L_839 = L_846;
						L_838 = L_845;
					end;
				end;
			end;
		end;
		return L_838;
	end;
	return nil;
end;
local L_860 = function(L_848, ...)
	local L_849 = {};
	local L_850 = {
		pairs(L_830:GetChildren())
	};
	local L_851 = L_850[3];
	local L_852 = L_850[1];
	local L_853 = L_850[2];
	while true do
		local L_854;
		L_851, L_854 = L_852(L_853, L_851);
		if not L_851 then
			break;
		end;
		if L_835(L_854, L_848) then
			table.insert(L_849, L_854);
		end;
	end;
	if #L_849 > 0 and #L_831 >= #L_849 then
		L_831 = {};
	end;
	local L_855 = {
		ipairs(L_849)
	};
	local L_856 = L_855[2];
	local L_857 = L_855[1];
	local L_858 = L_855[3];
	local L_859;
	repeat
		L_858, L_859 = L_857(L_856, L_858);
		if not L_858 then
			return nil;
		end;
	until not table.find(L_831, L_859);
	return L_859;
end;
L_826:CreateSection("Chest Teleports");
L_826:CreateButton({
	Name = "Teleport to Normal Chest",
	Callback = function(...)
		local L_861 = L_829.Character and L_829.Character:FindFirstChild("HumanoidRootPart");
		local L_862 = L_860("Normal");
		local L_863 = L_861;
		if L_861 then
			L_863 = L_862;
		end;
		if L_863 then
			local L_864 = L_862:FindFirstChildWhichIsA("BasePart");
			if L_864 then
				L_861.CFrame = L_864.CFrame + Vector3.new(0, 5, 0);
				table.insert(L_831, L_862);
			end;
		end;
		return ;
	end
});
L_826:CreateButton({
	Name = "Teleport to Snow Chest",
	Callback = function(...)
		local L_865 = L_829.Character and L_829.Character:FindFirstChild("HumanoidRootPart");
		local L_866 = L_860("Snow");
		local L_867 = L_865;
		if L_865 then
			L_867 = L_866;
		end;
		if L_867 then
			local L_868 = L_866:FindFirstChildWhichIsA("BasePart");
			if L_868 then
				L_865.CFrame = L_868.CFrame + Vector3.new(0, 5, 0);
				table.insert(L_831, L_866);
			end;
		end;
		return ;
	end
});
L_826:CreateButton({
	Name = "Teleport to Volcanic Chest",
	Callback = function(...)
		local L_869 = L_829.Character and L_829.Character:FindFirstChild("HumanoidRootPart");
		local L_870 = L_860("Volcanic");
		local L_871 = L_869;
		if L_869 then
			L_871 = L_870;
		end;
		if L_871 then
			local L_872 = L_870:FindFirstChildWhichIsA("BasePart");
			if L_872 then
				L_869.CFrame = L_872.CFrame + Vector3.new(0, 5, 0);
				table.insert(L_831, L_870);
			end;
		end;
		return ;
	end
});
L_826:CreateSection("Nearest Chest Teleports");
L_826:CreateButton({
	Name = "Teleport to Nearest Normal Chest",
	Callback = function(...)
		local L_873 = L_829.Character and L_829.Character:FindFirstChild("HumanoidRootPart");
		local L_874 = L_847("Normal");
		local L_875 = L_873;
		if L_873 then
			L_875 = L_874;
		end;
		if L_875 then
			L_873.CFrame = L_874.CFrame + Vector3.new(0, 5, 0);
		end;
		return ;
	end
});
L_826:CreateButton({
	Name = "Teleport to Nearest Snow Chest",
	Callback = function(...)
		local L_876 = L_829.Character and L_829.Character:FindFirstChild("HumanoidRootPart");
		local L_877 = L_847("Snow");
		local L_878 = L_876;
		if L_876 then
			L_878 = L_877;
		end;
		if L_878 then
			L_876.CFrame = L_877.CFrame + Vector3.new(0, 5, 0);
		end;
		return ;
	end
});
L_826:CreateButton({
	Name = "Teleport to Nearest Volcanic Chest",
	Callback = function(...)
		local L_879 = L_829.Character and L_829.Character:FindFirstChild("HumanoidRootPart");
		local L_880 = L_847("Volcanic");
		local L_881 = L_879;
		if L_879 then
			L_881 = L_880;
		end;
		if L_881 then
			L_879.CFrame = L_880.CFrame + Vector3.new(0, 5, 0);
		end;
		return ;
	end
});
L_826:CreateLabel("Chest ESP is in the Game ESPs tab!");
local L_882 = L_82:CreateTab("Auto-Build", 4483362458);
L_882:CreateSection("Auto Tree Build");
local L_883 = 70;
L_882:CreateSlider({
	Name = "Build Distance",
	Range = {
		30,
		120
	},
	Increment = 10,
	Suffix = "studs",
	CurrentValue = 70,
	Flag = "BuildDistance",
	Callback = function(L_884, ...)
		L_883 = L_884;
		return ;
	end
});
L_882:CreateButton({
	Name = "Auto Tree Build (1 Sapling Needed)",
	Info = "Builds a dense circle of trees at the specified distance",
	Callback = function(...)
		local L_885 = false;
		local L_886 = game:GetService("Players");
		local L_887 = game:GetService("ReplicatedStorage");
		local L_888 = L_886.LocalPlayer;
		if not L_888.Character then
			L_888.CharacterAdded:Wait();
		end;
		local L_889 = L_480:FindFirstChild("Items");
		local L_890 = nil;
		if L_889 then
			local L_891 = {
				ipairs(L_889:GetChildren())
			};
			local L_892 = L_891[2];
			local L_893 = L_891[1];
			local L_894 = L_891[3];
			local L_895;
			repeat
				L_894, L_895 = L_893(L_892, L_894);
				if not L_894 then
					L_885 = true;
				end;
				if L_885 then
					break;
				end;
			until L_895:IsA("Model") and L_895.Name == "Sapling";
			if not L_885 then
				L_890 = L_895;
			end;
		end;
		L_885 = false;
		if L_890 then
			local L_896 = Vector3.new(0, 3, 0);
			local L_897 = L_883;
			local L_898 = 2 * math.pi * L_897;
			local L_899 = math.floor(L_898 / 0.7);
			local L_900 = math.min(L_899, 2000);
			local L_901 = 0;
			L_81:Notify({
				Title = "Auto Tree Build",
				Content = "Starting to plant " .. L_900 .. " trees...",
				Duration = 3
			});
			local L_902 = 1;
			local L_903 = L_902 < 0;
			local L_904 = 1 - L_902;
			while true do
				L_904 = L_904 + L_902;
				local L_905 = L_904 <= L_900;
				local L_906 = not L_903 and L_905;
				local L_907 = L_904 >= L_900;
				if (not L_903 or not L_907) and not L_906 then
					break;
				end;
				local L_908 = (L_904 - 1) * (2 * math.pi / L_900);
				local L_909 = L_896.X + L_897 * math.cos(L_908);
				local L_910 = L_896.Z + L_897 * math.sin(L_908);
				local L_911 = L_896.Y;
				local L_912 = Vector3.new(L_909, L_911, L_910);
				if pcall(function(...)
					L_887:WaitForChild("RemoteEvents"):WaitForChild("RequestPlantItem"):InvokeServer(L_890, L_912);
					return ;
				end) then
					L_901 = L_901 + 1;
				end;
				task.wait(0.1);
			end;
			L_81:Notify({
				Title = "Auto Tree Build",
				Content = "Successfully planted " .. L_901 .. " trees at " .. L_883 .. " studs distance!",
				Duration = 6
			});
			return ;
		end;
		warn("No sapling found to use as template!");
		L_81:Notify({
			Title = "Auto Tree Build",
			Content = "Error: No sapling found in workspace!",
			Duration = 5,
			Type = "Error"
		});
		return ;
	end
});
L_882:CreateLabel("If you use this, don't try Planting stuff manually, or it'll break the Auto Build!");
L_882:CreateSection("Auto Tree Build Floors");
L_882:CreateButton({
	Name = "Auto Tree Build (2nd Floor)",
	Info = "Builds a dense circle of trees at the specified distance",
	Callback = function(...)
		local L_913 = false;
		local L_914 = game:GetService("Players");
		local L_915 = game:GetService("ReplicatedStorage");
		local L_916 = L_914.LocalPlayer;
		if not L_916.Character then
			L_916.CharacterAdded:Wait();
		end;
		local L_917 = L_480:FindFirstChild("Items");
		local L_918 = nil;
		if L_917 then
			local L_919 = L_917.GetChildren;
			local L_920 = {
				ipairs(L_919(L_917))
			};
			local L_921 = L_920[1];
			local L_922 = L_920[3];
			local L_923 = L_920[2];
			local L_924;
			repeat
				L_922, L_924 = L_921(L_923, L_922);
				if not L_922 then
					L_913 = true;
				end;
				if L_913 then
					break;
				end;
			until L_924:IsA("Model") and L_924.Name == "Sapling";
			if not L_913 then
				L_918 = L_924;
			end;
		end;
		L_913 = false;
		if L_918 then
			local L_925 = Vector3.new(0, 49, 0);
			local L_926 = L_883;
			local L_927 = 2 * math.pi * L_926;
			local L_928 = math.floor(L_927 / 0.7);
			local L_929 = math.min(L_928, 2000);
			local L_930 = 0;
			L_81:Notify({
				Title = "Auto Tree Build",
				Content = "Starting to plant " .. L_929 .. " trees...",
				Duration = 3
			});
			local L_931 = 1;
			local L_932 = L_931 < 0;
			local L_933 = 1 - L_931;
			while true do
				L_933 = L_933 + L_931;
				local L_934 = L_933 <= L_929;
				local L_935 = not L_932 and L_934;
				local L_936 = L_933 >= L_929;
				if (not L_932 or not L_936) and not L_935 then
					break;
				end;
				local L_937 = (L_933 - 1) * (2 * math.pi / L_929);
				local L_938 = L_925.X + L_926 * math.cos(L_937);
				local L_939 = L_925.Z + L_926 * math.sin(L_937);
				local L_940 = L_925.Y;
				local L_941 = Vector3.new(L_938, L_940, L_939);
				if pcall(function(...)
					L_915:WaitForChild("RemoteEvents"):WaitForChild("RequestPlantItem"):InvokeServer(L_918, L_941);
					return ;
				end) then
					L_930 = L_930 + 1;
				end;
				task.wait(0.1);
			end;
			L_81:Notify({
				Title = "Auto Tree Build",
				Content = "Successfully planted " .. L_930 .. " trees at " .. L_883 .. " studs distance!",
				Duration = 6
			});
			return ;
		end;
		warn("No sapling found to use as template!");
		L_81:Notify({
			Title = "Auto Tree Build",
			Content = "Error: No sapling found in workspace!",
			Duration = 5,
			Type = "Error"
		});
		return ;
	end
});
L_882:CreateButton({
	Name = "Auto Tree Build (3rd Floor)",
	Info = "Builds a dense circle of trees at the specified distance",
	Callback = function(...)
		local L_942 = false;
		local L_943 = game:GetService("Players");
		local L_944 = game:GetService("ReplicatedStorage");
		local L_945 = L_943.LocalPlayer;
		if not L_945.Character then
			L_945.CharacterAdded:Wait();
		end;
		local L_946 = L_480:FindFirstChild("Items");
		local L_947 = nil;
		if L_946 then
			local L_948 = L_946.GetChildren;
			local L_949 = {
				ipairs(L_948(L_946))
			};
			local L_950 = L_949[3];
			local L_951 = L_949[1];
			local L_952 = L_949[2];
			local L_953;
			repeat
				L_950, L_953 = L_951(L_952, L_950);
				if not L_950 then
					L_942 = true;
				end;
				if L_942 then
					break;
				end;
			until L_953:IsA("Model") and L_953.Name == "Sapling";
			if not L_942 then
				L_947 = L_953;
			end;
		end;
		L_942 = false;
		if L_947 then
			local L_954 = Vector3.new(0, 98, 0);
			local L_955 = L_883;
			local L_956 = 2 * math.pi * L_955;
			local L_957 = math.floor(L_956 / 0.7);
			local L_958 = math.min(L_957, 2000);
			local L_959 = 0;
			L_81:Notify({
				Title = "Auto Tree Build",
				Content = "Starting to plant " .. L_958 .. " trees...",
				Duration = 3
			});
			local L_960 = 1;
			local L_961 = L_960 < 0;
			local L_962 = 1 - L_960;
			while true do
				L_962 = L_962 + L_960;
				local L_963 = L_962 <= L_958;
				local L_964 = not L_961 and L_963;
				local L_965 = L_962 >= L_958;
				if (not L_961 or not L_965) and not L_964 then
					break;
				end;
				local L_966 = (L_962 - 1) * (2 * math.pi / L_958);
				local L_967 = L_954.X + L_955 * math.cos(L_966);
				local L_968 = L_954.Z + L_955 * math.sin(L_966);
				local L_969 = L_954.Y;
				local L_970 = Vector3.new(L_967, L_969, L_968);
				if pcall(function(...)
					L_944:WaitForChild("RemoteEvents"):WaitForChild("RequestPlantItem"):InvokeServer(L_947, L_970);
					return ;
				end) then
					L_959 = L_959 + 1;
				end;
				task.wait(0.1);
			end;
			L_81:Notify({
				Title = "Auto Tree Build",
				Content = "Successfully planted " .. L_959 .. " trees at " .. L_883 .. " studs distance!",
				Duration = 6
			});
			return ;
		end;
		warn("No sapling found to use as template!");
		L_81:Notify({
			Title = "Auto Tree Build",
			Content = "Error: No sapling found in workspace!",
			Duration = 5,
			Type = "Error"
		});
		return ;
	end
});
L_882:CreateButton({
	Name = "Auto Tree Build (4th Floor)",
	Info = "Builds a dense circle of trees at the specified distance",
	Callback = function(...)
		local L_971 = false;
		local L_972 = game:GetService("Players");
		local L_973 = game:GetService("ReplicatedStorage");
		local L_974 = L_972.LocalPlayer;
		if not L_974.Character then
			L_974.CharacterAdded:Wait();
		end;
		local L_975 = L_480:FindFirstChild("Items");
		local L_976 = nil;
		if L_975 then
			local L_977 = {
				ipairs(L_975:GetChildren())
			};
			local L_978 = L_977[2];
			local L_979 = L_977[1];
			local L_980 = L_977[3];
			local L_981;
			repeat
				L_980, L_981 = L_979(L_978, L_980);
				if not L_980 then
					L_971 = true;
				end;
				if L_971 then
					break;
				end;
			until L_981:IsA("Model") and L_981.Name == "Sapling";
			if not L_971 then
				L_976 = L_981;
			end;
		end;
		L_971 = false;
		if L_976 then
			local L_982 = Vector3.new(0, 147, 0);
			local L_983 = L_883;
			local L_984 = 2 * math.pi * L_983;
			local L_985 = math.floor(L_984 / 0.7);
			local L_986 = math.min(L_985, 2000);
			local L_987 = 0;
			L_81:Notify({
				Title = "Auto Tree Build",
				Content = "Starting to plant " .. L_986 .. " trees...",
				Duration = 3
			});
			local L_988 = 1;
			local L_989 = L_988 < 0;
			local L_990 = 1 - L_988;
			while true do
				L_990 = L_990 + L_988;
				local L_991 = L_990 <= L_986;
				local L_992 = not L_989 and L_991;
				local L_993 = L_990 >= L_986;
				if (not L_989 or not L_993) and not L_992 then
					break;
				end;
				local L_994 = (L_990 - 1) * (2 * math.pi / L_986);
				local L_995 = L_982.X + L_983 * math.cos(L_994);
				local L_996 = L_982.Z + L_983 * math.sin(L_994);
				local L_997 = L_982.Y;
				local L_998 = Vector3.new(L_995, L_997, L_996);
				if pcall(function(...)
					L_973:WaitForChild("RemoteEvents"):WaitForChild("RequestPlantItem"):InvokeServer(L_976, L_998);
					return ;
				end) then
					L_987 = L_987 + 1;
				end;
				task.wait(0.1);
			end;
			L_81:Notify({
				Title = "Auto Tree Build",
				Content = "Successfully planted " .. L_987 .. " trees at " .. L_883 .. " studs distance!",
				Duration = 6
			});
			return ;
		end;
		warn("No sapling found to use as template!");
		L_81:Notify({
			Title = "Auto Tree Build",
			Content = "Error: No sapling found in workspace!",
			Duration = 5,
			Type = "Error"
		});
		return ;
	end
});
L_882:CreateButton({
	Name = "Auto Tree Build (5th Floor)",
	Info = "Builds a dense circle of trees at the specified distance",
	Callback = function(...)
		local L_999 = false;
		local L_1000 = game:GetService("Players");
		local L_1001 = game:GetService("ReplicatedStorage");
		local L_1002 = L_1000.LocalPlayer;
		if not L_1002.Character then
			L_1002.CharacterAdded:Wait();
		end;
		local L_1003 = L_480:FindFirstChild("Items");
		local L_1004 = nil;
		if L_1003 then
			local L_1005 = {
				ipairs(L_1003:GetChildren())
			};
			local L_1006 = L_1005[3];
			local L_1007 = L_1005[1];
			local L_1008 = L_1005[2];
			local L_1009;
			repeat
				L_1006, L_1009 = L_1007(L_1008, L_1006);
				if not L_1006 then
					L_999 = true;
				end;
				if L_999 then
					break;
				end;
			until L_1009:IsA("Model") and L_1009.Name == "Sapling";
			if not L_999 then
				L_1004 = L_1009;
			end;
		end;
		L_999 = false;
		if L_1004 then
			local L_1010 = Vector3.new(0, 196, 0);
			local L_1011 = L_883;
			local L_1012 = 2 * math.pi * L_1011;
			local L_1013 = math.floor(L_1012 / 0.7);
			local L_1014 = math.min(L_1013, 2000);
			local L_1015 = 0;
			L_81:Notify({
				Title = "Auto Tree Build",
				Content = "Starting to plant " .. L_1014 .. " trees...",
				Duration = 3
			});
			local L_1016 = 1;
			local L_1017 = L_1016 < 0;
			local L_1018 = 1 - L_1016;
			while true do
				L_1018 = L_1018 + L_1016;
				local L_1019 = L_1018 <= L_1014;
				local L_1020 = not L_1017 and L_1019;
				local L_1021 = L_1018 >= L_1014;
				if (not L_1017 or not L_1021) and not L_1020 then
					break;
				end;
				local L_1022 = (L_1018 - 1) * (2 * math.pi / L_1014);
				local L_1023 = L_1010.X + L_1011 * math.cos(L_1022);
				local L_1024 = L_1010.Z + L_1011 * math.sin(L_1022);
				local L_1025 = L_1010.Y;
				local L_1026 = Vector3.new(L_1023, L_1025, L_1024);
				if pcall(function(...)
					L_1001:WaitForChild("RemoteEvents"):WaitForChild("RequestPlantItem"):InvokeServer(L_1004, L_1026);
					return ;
				end) then
					L_1015 = L_1015 + 1;
				end;
				task.wait(0.1);
			end;
			L_81:Notify({
				Title = "Auto Tree Build",
				Content = "Successfully planted " .. L_1015 .. " trees at " .. L_883 .. " studs distance!",
				Duration = 6
			});
			return ;
		end;
		warn("No sapling found to use as template!");
		L_81:Notify({
			Title = "Auto Tree Build",
			Content = "Error: No sapling found in workspace!",
			Duration = 5,
			Type = "Error"
		});
		return ;
	end
});
L_882:CreateLabel("If you use this, don't try Planting stuff manually, or it'll break the Auto Build!");
L_882:CreateSection("Auto Tree Build Setup");
L_882:CreateLabel("1 Sapling Needed somewhere in the Map to Dupe and Plant!");
L_882:CreateLabel("Recommendation: 100 Distance for the Tree Auto Build is recommended!");
Divider = L_882:CreateDivider();
L_882:CreateSection("Log Wall Auto-Build");
L_882:CreateLabel("Log Wall Auto Build will be here tomorrow GUARENTEED!", nil);
local L_1027 = L_82:CreateTab("Missing Kids", 4483362458);
L_1027:CreateSection("Unlock Map");
local L_1028 = false;
local L_1029 = nil;
local L_1039 = function(...)
	local L_1030 = L_480:FindFirstChild("Map");
	if L_1030 then
		local L_1031 = L_1030:FindFirstChild("Foliage");
		if L_1031 then
			local L_1032 = {};
			local L_1033 = L_1031.GetChildren;
			local L_1034 = {
				ipairs(L_1033(L_1031))
			};
			local L_1035 = L_1034[3];
			local L_1036 = L_1034[2];
			local L_1037 = L_1034[1];
			while true do
				local L_1038;
				L_1035, L_1038 = L_1037(L_1036, L_1035);
				if not L_1035 then
					break;
				end;
				if L_1038:IsA("Model") and L_1038.Name == "Small Tree" then
					table.insert(L_1032, L_1038);
				end;
			end;
			return L_1032;
		end;
		return {};
	end;
	return {};
end;
local L_1044 = function(L_1040, ...)
	local L_1041 = game.Players.LocalPlayer.Character;
	if L_1041 and L_1041:FindFirstChild("HumanoidRootPart") then
		local L_1042 = L_1041.HumanoidRootPart;
		local L_1043 = L_1040:GetPivot().Position + Vector3.new(0, 10, 0);
		L_1042.CFrame = CFrame.new(L_1043);
		return true;
	end;
	return false;
end;
local L_1054 = function(...)
	while L_1028 do
		local L_1045 = L_1039();
		if #L_1045 == 0 then
			L_81:Notify({
				Title = "Unlocking Map ERROR",
				Content = "No Small Trees found in Map \226\134\146 Foliage folder!",
				Duration = 3
			});
			return ;
		end;
		local L_1046 = L_1045[math.random(1, #L_1045)];
		L_1029 = L_1046;
		if not L_1044(L_1046) then
			L_81:Notify({
				Title = "Unlocking Map FAIL",
				Content = "Failed to teleport to tree!",
				Duration = 3
			});
		else
			L_81:Notify({
				Title = "Unlocking Map SUCCESS",
				Content = "Teleported to Small Tree. Next teleport in 3 seconds...",
				Duration = 3
			});
		end;
		local L_1047 = 3;
		local L_1048 = 1;
		local L_1049 = L_1048 < 0;
		local L_1050 = 1 - L_1048;
		while true do
			L_1050 = L_1050 + L_1048;
			local L_1051 = L_1050 <= L_1047;
			local L_1052 = not L_1049 and L_1051;
			local L_1053 = L_1050 >= L_1047;
			if not (L_1049 and L_1053 or L_1052) or not L_1028 then
				break;
			end;
			task.wait(1);
		end;
	end;
	return ;
end;
L_1027:CreateToggle({
	Name = "Unlock Map [WORKING]",
	CurrentValue = false,
	Flag = "AutoDaysToggle",
	Callback = function(L_1055, ...)
		autoDaysActive = L_1055;
		if not L_1055 then
			autoDaysActive = false;
			local L_1056 = Vector3.new(-37.08, 6.98, -16.33);
			local L_1057 = (L_827.LocalPlayer.Character or L_827.LocalPlayer.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart");
			if L_1057 then
				L_1057.CFrame = CFrame.new(L_1056);
			end;
		else
			autoDaysThread = task.spawn(function(...)
				local L_1058 = game:GetService("Players");
				local L_1059 = game:GetService("Workspace");
				local L_1060 = game:GetService("VirtualInputManager");
				local L_1061 = L_1059.CurrentCamera;
				local L_1062 = L_1058.LocalPlayer;
				local L_1063 = Vector3.new(0.25, 7.82, -0.65);
				local L_1064 = Vector3.new(-1.88, -40.59, 3.62);
				local L_1065 = 1500;
				local L_1066 = 50;
				local L_1067 = 10;
				local L_1068 = 0.05;
				local L_1070 = function(L_1069, ...)
					L_1061.CFrame = CFrame.new(L_1061.CFrame.Position, L_1069.Position);
					return ;
				end;
				(function(...)
					if not L_1059:FindFirstChild("SafePlatform") then
						local L_1071 = Instance.new("Part");
						L_1071.Size = Vector3.new(10, 1, 10);
						L_1071.Position = L_1064 - Vector3.new(0, 0.5, 0);
						L_1071.Anchored = true;
						L_1071.Name = "SafePlatform";
						L_1071.Parent = L_1059;
					end;
					return ;
				end)();
				(function(L_1072, ...)
					local L_1073 = false;
					local L_1074 = (L_1062.Character or L_1062.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart");
					local L_1075 = tick();
					repeat
						local L_1076;
						repeat
							local L_1077, L_1078, L_1079;
							if not L_1073 then
								if not (tick() - L_1075 < L_1072) or not autoDaysActive then
									return ;
								end;
								L_1077 = L_1065;
								L_1078 = L_1066;
								L_1079 = L_1078 < 0;
								L_1076 = 0 - L_1078;
							end;
							L_1073 = false;
							L_1076 = L_1076 + L_1078;
							local L_1080 = L_1076 <= L_1077;
							local L_1081 = not L_1079 and L_1080;
							local L_1082 = L_1076 >= L_1077;
						until L_1079 and L_1082 or L_1081;
						local L_1083 = 360;
						local L_1084 = L_1067;
						local L_1085 = L_1084 < 0;
						local L_1086 = 0 - L_1084;
						repeat
							L_1086 = L_1086 + L_1084;
							local L_1087 = L_1086 <= L_1083;
							local L_1088 = not L_1085 and L_1087;
							local L_1089 = L_1086 >= L_1083;
							if (not L_1085 or not L_1089) and not L_1088 then
								L_1073 = true;
							end;
							if L_1073 then
								break;
							end;
							if not autoDaysActive then
								return ;
							end;
							local L_1090 = math.rad(L_1086);
							local L_1091 = L_1063.X + L_1076 * math.cos(L_1090);
							local L_1092 = L_1063.Z + L_1076 * math.sin(L_1090);
							L_1074.CFrame = CFrame.new(L_1091, L_1063.Y, L_1092);
							task.wait(L_1068);
						until tick() - L_1075 >= L_1072;
					until not L_1073;
					return ;
				end)(80);
				if autoDaysActive then
					local L_1093 = (L_1062.Character or L_1062.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart");
					L_1093.CFrame = CFrame.new(L_1064);
					task.wait(60);
					while autoDaysActive do
						(function(L_1094, ...)
							local L_1095 = false;
							local L_1096 = (L_1062.Character or L_1062.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart");
							local L_1097 = 1;
							local L_1098 = L_1097 < 0;
							local L_1099 = 1 - L_1097;
							while true do
								L_1099 = L_1099 + L_1097;
								local L_1100 = L_1099 <= L_1094;
								local L_1101 = not L_1098 and L_1100;
								local L_1102 = L_1099 >= L_1094;
								if (not L_1098 or not L_1102) and not L_1101 then
									break;
								end;
								if not autoDaysActive then
									return ;
								end;
								local L_1103 = {};
								local L_1104 = L_1059:FindFirstChild("Items") and L_1059.Items:FindFirstChild("Carrot");
								local L_1105 = L_1059:FindFirstChild("Map") and (L_1059.Map:FindFirstChild("Foliage") and L_1059.Map.Foliage:FindFirstChild("Carrot Patch"));
								local L_1106 = L_1059:FindFirstChild("Items") and L_1059.Items:FindFirstChild("Berry");
								if L_1104 then
									table.insert(L_1103, L_1104);
								end;
								if L_1105 then
									table.insert(L_1103, L_1105);
								end;
								if L_1106 then
									table.insert(L_1103, L_1106);
								end;
								local L_1107 = {
									ipairs(L_1103)
								};
								local L_1108 = L_1107[2];
								local L_1109 = L_1107[3];
								local L_1110 = L_1107[1];
								local L_1111;
								repeat
									local L_1112;
									L_1109, L_1112 = L_1110(L_1108, L_1109);
									if not L_1109 then
										L_1095 = true;
									end;
									if L_1095 then
										break;
									end;
									if not autoDaysActive then
										return ;
									end;
									L_1111 = L_1112:IsA("Model") and L_1112.PrimaryPart or L_1112;
								until L_1111;
								if not L_1095 then
									local L_1113 = (L_1111.Position - L_1096.Position).Unit;
									local L_1114 = L_1111.Position - L_1113 * 2;
									L_1096.CFrame = CFrame.new(L_1114 + Vector3.new(0, 2, 0));
									L_1070(L_1111);
									L_1060:SendKeyEvent(true, Enum.KeyCode.E, false, game);
									task.wait(0.1);
									L_1060:SendKeyEvent(false, Enum.KeyCode.E, false, game);
								end;
								L_1095 = false;
								task.wait(0.2);
							end;
							return ;
						end)(15);
						if not autoDaysActive then
							return ;
						end;
						L_1093.CFrame = CFrame.new(L_1064);
						task.wait(60);
					end;
					return ;
				end;
				return ;
			end);
		end;
		return ;
	end
});
L_1027:CreateLabel("You need a good level fire like: 4,5,6 (For It To Work Good)");
L_1027:CreateSection("Auto Get Lost Childs");
pressFKey = function(...)
	local L_1115 = game:GetService("VirtualInputManager");
	L_1115:SendKeyEvent(true, Enum.KeyCode.F, false, game);
	wait(0.1);
	L_1115:SendKeyEvent(false, Enum.KeyCode.F, false, game);
	return ;
end;
teleportToLostChild = function(L_1116, ...)
	local L_1117 = L_1116;
	local L_1118 = game:GetService("Workspace"):FindFirstChild("Characters");
	if L_1118 then
		local L_1119 = L_1118:FindFirstChild(L_1117);
		if L_1119 then
			local L_1120 = game:GetService("Players").LocalPlayer;
			local L_1121 = (L_1120.Character or L_1120.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart");
			L_1121.CFrame = L_1119:GetPivot();
			L_81:Notify({
				Title = "Success",
				Content = "Teleported to " .. L_1117 .. "!",
				Duration = 3.5,
				Image = 4483362458
			});
			wait(0.5);
			local L_1123 = {
				pcall(function(...)
					local L_1122 = {
						L_1120:WaitForChild("Inventory"):WaitForChild("Old Sack"),
						L_1120:WaitForChild("ItemBag"):WaitForChild(L_1117)
					};
					game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("RequestBagStoreItem"):InvokeServer(unpack(L_1122));
					return ;
				end)
			};
			local L_1124 = L_1123[1];
			local L_1125 = L_1123[2];
			if L_1124 then
				L_81:Notify({
					Title = "Remote Sent",
					Content = "Successfully executed remote event!",
					Duration = 3.5,
					Image = 4483362458
				});
			else
				L_81:Notify({
					Title = "Remote Error",
					Content = "Failed to execute remote: " .. tostring(L_1125),
					Duration = 6.5,
					Image = 4483362458
				});
			end;
			wait(0.5);
			L_1121.CFrame = CFrame.new(0, 9, 0);
			L_81:Notify({
				Title = "Camp Teleport",
				Content = "Teleported to the camp!",
				Duration = 3.5,
				Image = 4483362458
			});
			wait(1);
			pressFKey();
			L_81:Notify({
				Title = "Action Complete",
				Content = "F key pressed automatically!",
				Duration = 3.5,
				Image = 4483362458
			});
			return ;
		end;
		L_81:Notify({
			Title = "Error",
			Content = L_1117 .. " model not found in Characters folder!",
			Duration = 6.5,
			Image = 4483362458
		});
		return ;
	end;
	L_81:Notify({
		Title = "Error",
		Content = "Characters folder not found!",
		Duration = 6.5,
		Image = 4483362458
	});
	return ;
end;
LostChildButton = L_1027:CreateButton({
	Name = "Auto Get Dino Kid",
	Callback = function(...)
		teleportToLostChild("Lost Child");
		return ;
	end
});
LostChild2Button = L_1027:CreateButton({
	Name = "Auto Get Kraken Kid",
	Callback = function(...)
		teleportToLostChild("Lost Child2");
		return ;
	end
});
LostChild3Button = L_1027:CreateButton({
	Name = "Auto Get Squid Kid",
	Callback = function(...)
		teleportToLostChild("Lost Child3");
		return ;
	end
});
LostChild4Button = L_1027:CreateButton({
	Name = "Auto Get Koala Kid",
	Callback = function(...)
		teleportToLostChild("Lost Child4");
		return ;
	end
});
L_1027:CreateButton({
	Name = "Get All Lost Childs! (Equip Sack)",
	Callback = function(...)
		local L_1126 = {
			"Lost Child",
			"Lost Child2",
			"Lost Child3",
			"Lost Child4"
		};
		local L_1127 = {
			ipairs(L_1126)
		};
		local L_1128 = L_1127[1];
		local L_1129 = L_1127[3];
		local L_1130 = L_1127[2];
		while true do
			local L_1131;
			L_1129, L_1131 = L_1128(L_1130, L_1129);
			if not L_1129 then
				break;
			end;
			L_81:Notify({
				Title = "Processing",
				Content = "Working on " .. L_1131 .. " (" .. L_1129 .. "/4)",
				Duration = 4,
				Image = 4483362458
			});
			teleportToLostChild(L_1131);
			if L_1129 < #L_1126 then
				wait(3);
			end;
		end;
		return ;
	end
});
L_1027:CreateLabel("You must do the Proximity Prompt, then it teleports you to the Camp!", nil);
L_1027:CreateSection("Missing Kids Teleport");
L_827 = game:GetService("Players");
local L_1132 = L_827.LocalPlayer;
local L_1133 = game:GetService("Workspace");
TeleportToCharacter = function(L_1134, ...)
	local L_1135 = L_1133:FindFirstChild("Characters");
	if L_1135 then
		local L_1136 = L_1135:FindFirstChild(L_1134);
		local L_1137 = L_1136;
		if L_1136 then
			L_1137 = L_1136:FindFirstChild("HumanoidRootPart");
		end;
		if not L_1137 then
			warn("Could not find " .. L_1134);
		else
			LocalPlayer.Character:PivotTo(L_1136.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0));
		end;
		return ;
	end;
	warn("Characters folder not found");
	return ;
end;
L_1027:CreateButton({
	Name = "Teleport to Dino Kid",
	Callback = function(...)
		TeleportToCharacter("Lost Child");
		return ;
	end
});
L_1027:CreateButton({
	Name = "Teleport to Kraken Kid",
	Callback = function(...)
		TeleportToCharacter("Lost Child2");
		return ;
	end
});
L_1027:CreateButton({
	Name = "Teleport to Squid Kid",
	Callback = function(...)
		TeleportToCharacter("Lost Child3");
		return ;
	end
});
L_1027:CreateButton({
	Name = "Teleport to Koala Kid",
	Callback = function(...)
		TeleportToCharacter("Lost Child4");
		return ;
	end
});
L_1027:CreateLabel("If the teleport doesn't work, it means the Kids don't exist in the Game currently.", nil);
L_1027:CreateSection("Game Teleports");
L_1027:CreateButton({
	Name = "Teleport to Fire Camp",
	Callback = function(...)
		local L_1138 = game:GetService("Players").LocalPlayer;
		(L_1138.Character or L_1138.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart").CFrame = CFrame.new(Vector3.new(0, 9, 0));
		return ;
	end
});
teleportToFishingHut = function(...)
	local L_1139 = game.Players.LocalPlayer;
	local L_1140 = (L_1139.Character or L_1139.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart");
	local L_1141 = game.Workspace.Map.Landmarks:FindFirstChild("Fishing Hut");
	local L_1142 = L_1141;
	if L_1141 then
		L_1142 = L_1141:IsA("Model") and L_1141:FindFirstChild("PrimaryPart");
	end;
	if not L_1142 then
		local L_1143 = L_1141;
		if L_1141 then
			L_1143 = L_1141:IsA("Model");
		end;
		if not L_1143 then
			warn("Fishing Hut not found!");
		else
			L_1141.PrimaryPart = L_1141:FindFirstChildWhichIsA("BasePart");
			if L_1141.PrimaryPart then
				L_1140.CFrame = L_1141.PrimaryPart.CFrame + Vector3.new(0, 5, 0);
			end;
		end;
	else
		L_1140.CFrame = L_1141.PrimaryPart.CFrame + Vector3.new(0, 5, 0);
	end;
	return ;
end;
L_1027:CreateButton({
	Name = "Teleport to Fishing Hut",
	Callback = teleportToFishingHut
});
L_827 = game:GetService("Players");
local L_1144 = L_827.LocalPlayer;
L_1133 = game:GetService("Workspace");
TeleportToStronghold = function(...)
	local L_1145 = L_1133:WaitForChild("Map"):WaitForChild("Landmarks"):WaitForChild("Stronghold");
	if not L_1145.PrimaryPart then
		local L_1146 = {
			L_1145:GetBoundingBox()
		};
		local L_1147 = L_1146[2];
		local L_1148 = L_1146[1];
		LocalPlayer.Character:PivotTo(L_1148 + Vector3.new(0, L_1147.Y / 2 + 5, 0));
	else
		LocalPlayer.Character:PivotTo(L_1145.PrimaryPart.CFrame + Vector3.new(0, 10, 0));
	end;
	return ;
end;
L_1027:CreateButton({
	Name = "Teleport to Stronghold",
	Callback = function(...)
		TeleportToStronghold();
		return ;
	end
});
L_1027:CreateLabel("If it doesn't work the stronghold hasnt started!'", nil);
local L_1149 = L_82:CreateTab("Proximity Prompt & Fly", 4483362458);
L_1149:CreateSection("Proximity Prompts");
task.wait(1);
local L_1150 = {
	Service = game:GetService("ProximityPromptService"),
	Enabled = false
};
L_1149:CreateToggle({
	Name = "Instant Proximity Prompt",
	CurrentValue = false,
	Flag = "InstantPromptToggle",
	Callback = function(L_1151, ...)
		L_1150.Enabled = L_1151;
		return ;
	end
});
L_1150.Service.PromptButtonHoldBegan:Connect(function(L_1152, ...)
	if L_1150.Enabled then
		task.wait(0.05);
		fireproximityprompt(L_1152);
	end;
	return ;
end);
L_1149:CreateSection("Fly Script");
L_1149:CreateButton({
	Name = "Fly Script V3",
	Callback = function(...)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))();
		return ;
	end
});
return ;
