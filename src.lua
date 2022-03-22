--- Game Optimizer by nul#3174 ---

-- For the non setfflag flag setting to work, you must execute this before the game loads --
-- It works best in autoexec with autoattach on --

local setfflag = setfflag or function(flag, bool)
    game:DefineFastFlag(tostring(flag), bool)
end

-- I have two sets of these because some exploits don't like the Boolean being outside of "" ---

task.spawn(function()
pcall(function() setfflag("DebugRenderForceTechnologyVoxel", true) end)
pcall(function() setfflag("ThrottleLightGridUpdate3", true) end)
pcall(function() setfflag("ThrottleDeveloperConsoleEvents", true) end)	
pcall(function() setfflag("CharacterTaskQueueReschedule", true) end)
pcall(function() setfflag("BillboardGuiDistanceStepping2", true) end)
pcall(function() setfflag("ReduceTrussSearchDistance2", true) end)
pcall(function() setfflag("InterpolateCullDistance", true) end)
end)

task.spawn(function()
pcall(function() setfflag("DebugRenderForceTechnologyVoxel", "true") end)
pcall(function() setfflag("ThrottleLightGridUpdate3", "true") end)
pcall(function() setfflag("ThrottleDeveloperConsoleEvents", "true") end)	
pcall(function() setfflag("CharacterTaskQueueReschedule", "true") end)
pcall(function() setfflag("BillboardGuiDistanceStepping2", "true") end)
pcall(function() setfflag("ReduceTrussSearchDistance2", "true") end)
pcall(function() setfflag("InterpolateCullDistance", "true") end)
end)

if not game:IsLoaded() then
    game.Loaded:Wait()
end

repeat task.wait() until game:IsLoaded()

local Rendering = settings().Rendering
local Diagnostics = settings().Diagnostics
local userSettings = UserSettings():GetService("UserGameSettings")

local cloneref = cloneref or function(ref)
	return ref
end

local L = cloneref(game:GetService("Lighting"))
local P = cloneref(game:GetService("Players"))
local W = cloneref(game:GetService("Workspace"))

--- mhm... i liek workspace properties ---

pcall(function() sethiddenproperty(W, "LevelOfDetail", "Disabled") end)
pcall(function() sethiddenproperty(W, "InterpolationThrottling", "Enabled") end)
pcall(function() W.ClientAnimatorThrottling = "Enabled" end)

task.spawn(function()
for i, v in pairs(getinstances and getinstances() or game:GetDescendants()) do
	if v:IsA("MeshPart") or v:IsA("UnionOperation") or v:IsA("PartOperation") then
	   pcall(function() sethiddenproperty(v, "RenderFidelity", Enum.RenderFidelity.Performance) end)
	end
    end
end)

task.spawn(function()
	pcall(function() sethiddenproperty(L, "Outlines", false) end)
	pcall(function() sethiddenproperty(L, "Brightness", 3) end)
	pcall(function() sethiddenproperty(L, "GlobalShadows", false) end)
	pcall(function() sethiddenproperty(L, "EnvironmentDiffuseScale", 0) end)
	pcall(function() sethiddenproperty(L, "EnvironmentSpecularScale", 0) end)	
end)

task.spawn(function()
for i, v in pairs(L:GetDescendants()) do
	if v:IsA("PostEffect") then 
	   v.Enabled = false
	end
    end
end)

task.spawn(function()
for i, v in pairs(L:GetDescendants()) do
	if v:IsA("Atmosphere") then
	   v:Destroy()
	end
    end
end)

Diagnostics.IsScriptStackTracingEnabled = false
Rendering.AutoFRMLevel = 1
Rendering.EditQualityLevel = "Level01"
Rendering.QualityLevel = "Level01"
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
			v.CastShadow = false
		end
	end
end)

task.spawn(function()
	for i, v in pairs(getinstances and getinstances() or game:GetDescendants()) do
		if v:IsA("BasePart") and v.Material == "Plastic" then
			v.Material = "SmoothPlastic"
			obj.CastShadow = false
		end
	end
end)

task.spawn(function()
	for i, v in pairs(getinstances and getinstances() or game:GetDescendants()) do
		if v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Beam") or v:IsA("Smoke") then
			v.Enabled = false
		end
	end
end)

task.spawn(function()
P.PlayerAdded:Connect(function(p)
	p.CharacterAdded:Connect(function(c)
		for i, v in pairs(c:GetDescendants()) do
		if v:IsA("BasePart") then
			v.CastShadow = false
		end
		if v:IsA("BasePart") and v.Material == "Plastic" then
			v.Material = "SmoothPlastic"
			obj.CastShadow = false
	    end
		if v:IsA("MeshPart") or v:IsA("UnionOperation") or v:IsA("PartOperation") then
		    pcall(function() sethiddenproperty(v, "RenderFidelity", Enum.RenderFidelity.Performance) end)
		    pcall(function() obj.CastShadow = false end)
		end
		if v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Beam") or v:IsA("Smoke") then
		   v.Enabled = false
	    end
	end
end)
end)
end)
	
local function OnDescendantAdded(obj)
	if obj:IsA("BasePart") then
		obj.CastShadow = false
	end
	if obj:IsA("BasePart") and obj.Material == "Plastic" then
		obj.Material = "SmoothPlastic"
		obj.CastShadow = false
	end
	if obj:IsA("ParticleEmitter") or obj:IsA("Fire") or obj:IsA("Beam") or obj:IsA("Smoke") then
		obj.Enabled = false
	end
	if obj:IsA("MeshPart") or obj:IsA("UnionOperation") or obj:IsA("PartOperation") then
	    pcall(function() sethiddenproperty(obj, "RenderFidelity", Enum.RenderFidelity.Performance) end)
	    pcall(function() obj.CastShadow = false end)
	end
end

game.DescendantAdded:Connect(function(v)
	task.spawn(OnDescendantAdded, v)
end)
