--- Game Optimizer by nul#3174 ---

-- For the non setfflag flag setting to work, you must execute this before the game loads --
-- It works best in autoexec with autoattach on --

local Rendering = settings().Rendering
local Diagnostics = settings().Diagnostics
local userSettings = UserSettings():GetService("UserGameSettings")

local cloneref = cloneref or function(ref)
	return ref
end

local L = cloneref(game.lighting)
local P = cloneref(game:FindFirstChildOfClass("Players"))

local setfflag = setfflag or function(flag, bool)
	game:DefineFastFlag(tostring(flag), bool)
end

pcall(function() setfflag("DebugRenderForceTechnologyVoxel", true) end)
pcall(function() setfflag("ThrottleLightGridUpdate3", true) end)
pcall(function() setfflag("DebugRenderingSetDeterministic", true) end)	

task.spawn(function()
for i, v in pairs(getinstances and getinstances() or game:GetDescendants()) do
	if v:IsA("MeshPart") or v:IsA("UnionOperation") or v:IsA("PartOperation") then
	   pcall(function() sethiddenproperty(v, "RenderFidelity", Enum.RenderFidelity.Performance) end)
	end
	   task.wait()
	end
end)

task.spawn(function()
	pcall(function() sethiddenproperty(L, "Outlines", false) end)
	pcall(function() sethiddenproperty(L, "Brightness", 3) end)
	pcall(function() sethiddenproperty(L, "GlobalShadows", false) end)
end)

task.spawn(function()
for i, v in pairs(L:GetDescendants()) do
	if v:IsA("PostEffect") then 
		v.Enabled = false
	end
	task.wait()
end
end)

Diagnostics.IsScriptStackTracingEnabled = false
Rendering.AutoFRMLevel = 1
Rendering.EditQualityLevel = "Level03"
Rendering.QualityLevel = "Level03"
Rendering.ReloadAssets = true
Rendering.MeshCacheSize = tonumber(999999999)
Rendering.FrameRateManager = "On"
Rendering.ExportMergeByMaterial = true
Rendering.EnableFRM = true
userSettings.GraphicsQualityLevel = 1
userSettings.SavedQualityLevel = "1"

task.spawn(function()
	for i, v in pairs(getinstances and getinstances() or game:GetDescendants()) do
		if v:IsA("BasePart") then
			pcall(function() sethiddenproperty(v, "CastShadow", false) end)
		end
		task.wait()
	end
end)

task.spawn(function()
	for i, v in pairs(getinstances and getinstances() or game:GetDescendants()) do
		if v:IsA("BasePart") and v.Material == "Plastic" then
			pcall(function() sethiddenproperty(v, "Material", "SmoothPlastic") end)
		end
		task.wait()
	end
end)

task.spawn(function()
	for i, v in pairs(getinstances and getinstances() or game:GetDescendants()) do
		if v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Beam") or v:IsA("Smoke") then
			v.Enabled = false
		end
		task.wait()
	end
end)

P.PlayerAdded:Connect(function(p)
	p.CharacterAdded:Connect(function(c)
		for i, v in pairs(c:GetDescendants()) do
		if v:IsA("BasePart") then
			pcall(function() sethiddenproperty(v, "CastShadow", false) end)
		end
		if v:IsA("BasePart") and v.Material == "Plastic" then
			pcall(function() sethiddenproperty(v, "Material", "SmoothPlastic") end)
	    end
		if v:IsA("MeshPart") or v:IsA("UnionOperation") or v:IsA("PartOperation") then
		    pcall(function() sethiddenproperty(v, "RenderFidelity", Enum.RenderFidelity.Performance) end)
		end
		if v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Beam") or v:IsA("Smoke") then
			v.Enabled = false
	    end
		task.wait()
	end
end)
end)
	
local function OnDescendantAdded(obj)
	if obj:IsA("BasePart") then
		pcall(function() sethiddenproperty(obj, "CastShadow", false) end)
	end
	if obj:IsA("BasePart") and obj.Material == "Plastic" then
			pcall(function() sethiddenproperty(v, "Material", "SmoothPlastic") end)
	end
	if obj:IsA("ParticleEmitter") or obj:IsA("Fire") or obj:IsA("Beam") or obj:IsA("Smoke") then
			obj.Enabled = false
	end
	if obj:IsA("MeshPart") or obj:IsA("UnionOperation") or obj:IsA("PartOperation") then
		pcall(function() sethiddenproperty(obj, "RenderFidelity", Enum.RenderFidelity.Performance) end)
	end
end

game.DescendantAdded:Connect(function(v)
	task.spawn(OnDescendantAdded, v)
end)
