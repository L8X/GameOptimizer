--- Game Optimizer by nul#3174 ---

-- For the non setfflag flag setting to work, you must execute this before the game loads --
-- It works best in autoexec with autoattach on --

local setfflag = setfflag or function(flag, bool)
    game:DefineFastFlag(tostring(flag), bool)
end

local wait = function(int)
if not int then
   int = 0
end
local t = tick()
repeat task.wait(0/1) until (tick() - t) >= int
    return (tick() - t), t
end

-- I have two sets of these because some exploits don't like the Boolean being outside of "" ;_; ---

task.spawn(function()
--pcall(function() setfflag("DebugRenderForceTechnologyVoxel", "true") end) -- Using manual checks now for this 
pcall(function() setfflag("ThrottleLightGridUpdate3", true) end)
pcall(function() setfflag("ThrottleDeveloperConsoleEvents", true) end)	
pcall(function() setfflag("CharacterTaskQueueReschedule", true) end)
pcall(function() setfflag("BillboardGuiDistanceStepping2", true) end)
pcall(function() setfflag("ReduceTrussSearchDistance2", true) end)
pcall(function() setfflag("HumanoidParallelUseManager4", true) end)
pcall(function() setfflag("HumanoidParallelOnStep", true) end)
pcall(function() setfflag("HumanoidParallelOnStep2", true) end)
pcall(function() setfflag("HumanoidParallelFasterWakeUp", true) end)
pcall(function() setfflag("HumanoidParallelFasterSetCollision", true) end)
pcall(function() setfflag("HumanoidParallelFasterSafeUnseat", true) end)
pcall(function() setfflag("HumanoidParallelFasterSafeCofmUpdate", true) end)
pcall(function() setfflag("HumanoidParallelFixTickleFloor", true) end)
pcall(function() setfflag("HumanoidParallelFixTickleFloor2", true) end)
pcall(function() setfflag("HumanoidDeferredSyncFunction5", true) end)
pcall(function() setfflag("EnableBackgroundModeWhenInactive", true) end)
pcall(function() setfflag("DeliverLowMemoryWarningsViaPolling", true) end)
pcall(function() setfflag("DynamicallyMoveSoundStorageLocationOnMemoryNotification", true) end)
pcall(function() setfflag("TryCacheAndReuseVideoAssets", true) end)
pcall(function() setfflag("AlwaysPutSoundsOnDiskWhenLowOnMemory", true) end)
end)

task.spawn(function()
--pcall(function() setfflag("DebugRenderForceTechnologyVoxel", "true") end) -- Using manual checks now for this 
pcall(function() setfflag("ThrottleLightGridUpdate3", "true") end)
pcall(function() setfflag("ThrottleDeveloperConsoleEvents", "true") end)	
pcall(function() setfflag("CharacterTaskQueueReschedule", "true") end)
pcall(function() setfflag("BillboardGuiDistanceStepping2", "true") end)
pcall(function() setfflag("ReduceTrussSearchDistance2", "true") end)
pcall(function() setfflag("HumanoidParallelUseManager4", "true") end)
pcall(function() setfflag("HumanoidParallelOnStep", "true") end)
pcall(function() setfflag("HumanoidParallelOnStep2", "true") end)
pcall(function() setfflag("HumanoidParallelFasterWakeUp", "true") end)
pcall(function() setfflag("HumanoidParallelFasterSetCollision", "true") end)
pcall(function() setfflag("HumanoidParallelFasterSafeUnseat", "true") end)
pcall(function() setfflag("HumanoidParallelFasterSafeCofmUpdate", "true") end)
pcall(function() setfflag("HumanoidParallelFixTickleFloor", "true") end)
pcall(function() setfflag("HumanoidParallelFixTickleFloor2", "true") end)
pcall(function() setfflag("HumanoidDeferredSyncFunction5", "true") end)
pcall(function() setfflag("EnableBackgroundModeWhenInactive", "true") end)	
pcall(function() setfflag("DeliverLowMemoryWarningsViaPolling", "true") end)
pcall(function() setfflag("DynamicallyMoveSoundStorageLocationOnMemoryNotification", "true") end)
pcall(function() setfflag("TryCacheAndReuseVideoAssets", "true") end)
pcall(function() setfflag("AlwaysPutSoundsOnDiskWhenLowOnMemory", "true") end)
end)

task.spawn(function()
pcall(function() 
if not sethiddenproperty and not gethiddenproperty then
pcall(function() setfflag("DebugRenderForceTechnologyVoxel", true) end)
pcall(function() setfflag("DebugRenderForceTechnologyVoxel", "true") end)
end
end)
end)

if not game:IsLoaded() then
    game.Loaded:Wait()
end

repeat wait() until game:IsLoaded()

local Rendering = settings().Rendering
local Diagnostics = settings().Diagnostics
local userSettings = UserSettings():GetService("UserGameSettings")

local cloneref = cloneref or function(ref)
    return ref
end

local L = cloneref(game:GetService("Lighting"))
local P = cloneref(game:GetService("Players"))
local W = cloneref(game:GetService("Workspace"))
local T = cloneref(W:WaitForChild("Terrain"))
local C = T:FindFirstChildOfClass("Clouds")

--- mhm... i liek workspace properties ---

pcall(function() sethiddenproperty(W, "LevelOfDetail", "Disabled") end)
pcall(function() sethiddenproperty(W, "InterpolationThrottling", "Enabled") end)
pcall(function() W.ClientAnimatorThrottling = "Enabled" end)
pcall(function() sethiddenproperty(W, "LevelOfDetail", "Disabled") end)

task.spawn(function()
pcall(function()
if sethiddenproperty and gethiddenproperty then
if tostring(gethiddenproperty(L, "Technology")) == "Future" then
pcall(function() sethiddenproperty(L, "Technology", "Voxel") end)
end
end
end)
end)
				
task.spawn(function()
pcall(function()
if sethiddenproperty and gethiddenproperty then
if tostring(gethiddenproperty(L, "Technology")) == "ShadowMap" then
pcall(function() sethiddenproperty(L, "Technology", "Voxel") end)
end
end
end)
end)

task.spawn(function()
pcall(function()
for i, v in pairs(getinstances and getinstances() or game:GetDescendants()) do
	if v:IsA("MeshPart") or v:IsA("UnionOperation") or v:IsA("PartOperation") then
	   pcall(function() sethiddenproperty(v, "RenderFidelity", Enum.RenderFidelity.Performance) end) -- There's messages saying it can't be changed but the property does change? Odd. 
	end
	wait()
    end
end)
end)

task.spawn(function()
	pcall(function() L.Outlines = false end)
	pcall(function() L.Brightness = 3 end)
	pcall(function() L.GlobalShadows = false end)
	pcall(function() L.EnvironmentDiffuseScale = 0 end)
	pcall(function() L.EnvironmentSpecularScale = 0 end)
        pcall(function() L.FogEnd = 10000000 end) 
	pcall(function() L.FogStart = 0 end)
end)

task.spawn(function()
pcall(function()
if C ~= nil then
pcall(function() sethiddenproperty(C, "Enabled", false) end)
end
end)
end)

task.spawn(function()
T.ChildAdded:Connect(function(v)
if v:IsA("Clouds") then
pcall(function() sethiddenproperty(v, "Enabled", false)	end)			
end
end)
end)
		
task.spawn(function()
L.Changed:Connect(function(prop)
	if prop == "Brightness" or prop == "GlobalShadows" or prop == "Outlines" or prop == "EnvironmentDiffuseScale" or prop == "EnvironmentSpecularScale" or prop == "FogEnd" or prop == "FogStart" then 
	wait()
	pcall(function() L.Outlines = false end)
	pcall(function() L.Brightness = 2.5 end)
	pcall(function() L.GlobalShadows = false end)
	pcall(function() L.EnvironmentDiffuseScale = 0 end)
	pcall(function() L.EnvironmentSpecularScale = 0 end)
        pcall(function() L.FogEnd = 10000000 end) 
	pcall(function() L.FogStart = 0 end)
	wait()
	end
    end)
end)

task.spawn(function()
for i, v in pairs(L:GetDescendants()) do
	if v:IsA("PostEffect") then 
	   v.Enabled = false
	end
	wait()
    end
end)

task.spawn(function()
for i, v in pairs(L:GetDescendants()) do
	if v:IsA("Atmosphere") and game.PlaceId ~= 185655149 then
	   v:Destroy()
	end
	wait()
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
	        wait()
	end
end)

task.spawn(function()
	for i, v in pairs(getinstances and getinstances() or game:GetDescendants()) do
		if v:IsA("BasePart") and v.Material == "Plastic" then
			v.Material = "SmoothPlastic"
			obj.CastShadow = false
		end
		wait()
	end
end)

task.spawn(function()
	for i, v in pairs(getinstances and getinstances() or game:GetDescendants()) do
		if v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Beam") or v:IsA("Smoke") then
			v.Enabled = false
		end
		wait()
	end
end)

task.spawn(function()
P.PlayerAdded:Connect(function(p)
	wait()
	p.CharacterAdded:Connect(function(c)
		wait()
		for i, v in pairs(c:GetDescendants()) do
		if v:IsA("BasePart") then
			v.CastShadow = false
		end
		if v:IsA("BasePart") and v.Material == "Plastic" then
			v.Material = "SmoothPlastic"
			obj.CastShadow = false
	        end
		if v:IsA("MeshPart") or v:IsA("UnionOperation") or v:IsA("PartOperation") then
		    pcall(function() sethiddenproperty(v, "RenderFidelity", Enum.RenderFidelity.Performance) end) -- There's messages saying it can't be changed but the property does change?
		    pcall(function() obj.CastShadow = false end)
		end
		if v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Beam") or v:IsA("Smoke") then
		   v.Enabled = false
	    end
	    wait()
	end
end)
end)
end)
	
local function OnDescendantAdded(obj)
	wait()
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
	    pcall(function() sethiddenproperty(obj, "RenderFidelity", Enum.RenderFidelity.Performance) end) -- There's messages saying it can't be changed but the property does change?
	    pcall(function() obj.CastShadow = false end)
	end
end

game.DescendantAdded:Connect(function(v)
	task.spawn(OnDescendantAdded, v)
end)
