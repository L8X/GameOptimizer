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
repeat task.wait(0) until (tick() - t) >= int
    return (tick() - t), t
end

-- I have two sets of these because some exploits don't like the Boolean being outside of "" ;_; ---

task.spawn(function()
if not game:GetService("UserInputService").TouchEnabled then -- Arceus X crash fix
--pcall(function() setfflag("DebugRenderForceTechnologyVoxel", true) end) -- Using manual checks now for this 
pcall(function() setfflag("ThrottleLightGridUpdate3", true) end)
pcall(function() setfflag("DebugEnableInterpThrottle", true) end)
pcall(function() setfflag("ThrottleDeveloperConsoleEvents", true) end)
pcall(function() setfflag("DataModelFasterTaskProcessing", true) end)
pcall(function() setfflag("TaskSchedulerBlockingShutdownInClients", true) end)
pcall(function() setfflag("TaskSchedulerAsyncTasksTimingEnabled", true) end)
pcall(function() setfflag("TaskSchedulerAvoidYieldInBackground", true) end) -- Attempting to patch Background Mode Voice Chat bug
pcall(function() setfflag("UseAsyncTaskForMicroVis", true) end)
pcall(function() setfflag("UseAsyncTaskForTexturePack3", true) end)
pcall(function() setfflag("NewRunServiceSignals", true) end)
pcall(function() setfflag("AnimationTrackStepFix", true) end)
pcall(function() setfflag("MemoryPrioritizationEnabledForTextures", true) end)
pcall(function() setfflag("InterpolateCullDistance", true) end)
pcall(function() setfflag("SimIfNoInterp", true) end)
pcall(function() setfflag("BatchAssetApi", true) end)
pcall(function() setfflag("CharacterTaskQueueReschedule", true) end)
pcall(function() setfflag("BillboardGuiDistanceStepping2", true) end)
pcall(function() setfflag("ReduceTrussSearchDistance2", true) end)
pcall(function() setfflag("RenderInstanceCulling2", true) end)
pcall(function() setfflag("RenderCompositorExperimentEnabled", true) end)
pcall(function() setfflag("RenderEnableHbao", false) end)
pcall(function() setfflag("RenderTC2_DiscardGeometryData2", true) end)
pcall(function() setfflag("RenderTC2_6", true) end)
pcall(function() setfflag("RenderTC2SaveTC1Memory", true) end)
pcall(function() setfflag("RenderFIB3Grass", false) end)
pcall(function() setfflag("RenderHalfresShadowsGlsles", true) end)
pcall(function() setfflag("RenderEnableSurfaceShadows", false) end)
pcall(function() setfflag("RenderShadowUseLastLOD", true) end)
pcall(function() setfflag("RenderLodShadows", false) end)
pcall(function() setfflag("RenderShadowUseHQLOD", false) end)	
pcall(function() setfflag("HumanoidParallelUseManager4", true) end)
pcall(function() setfflag("HumanoidParallelOnStep", true) end)
pcall(function() setfflag("HumanoidParallelOnStep2", true) end)
pcall(function() setfflag("HumanoidParallelFasterWakeUp", true) end)
pcall(function() setfflag("HumanoidParallelFasterSetCollision", true) end)
pcall(function() setfflag("HumanoidParallelSafeUnseat", true) end)
pcall(function() setfflag("HumanoidParallelSafeCofmUpdate", true) end)
pcall(function() setfflag("HumanoidParallelFixTickleFloor", true) end)
pcall(function() setfflag("HumanoidParallelFixTickleFloor2", true) end)
pcall(function() setfflag("HumanoidDeferredSyncFunction5", true) end)
pcall(function() setfflag("HumanoidOnlySetCollisionsOnStateChangeDefaultIsEnabled", true) end)
pcall(function() setfflag("EnableBackgroundModeWhenInactive", true) end) -- Sometimes breaks Voice Chat after a while
pcall(function() setfflag("DeliverLowMemoryWarningsViaPolling", true) end)
pcall(function() setfflag("DynamicallyMoveSoundStorageLocationOnMemoryNotification", true) end)
pcall(function() setfflag("TryCacheAndReuseVideoAssets", true) end)
pcall(function() setfflag("AlwaysPutSoundsOnDiskWhenLowOnMemory", true) end)
end
end)

task.spawn(function()
if not game:GetService("UserInputService").TouchEnabled then -- Arceus X crash fix
--pcall(function() setfflag("DebugRenderForceTechnologyVoxel", "true") end) -- Using manual checks now for this 
pcall(function() setfflag("ThrottleLightGridUpdate3", "true") end)
pcall(function() setfflag("DebugEnableInterpThrottle", "true") end)
pcall(function() setfflag("ThrottleDeveloperConsoleEvents", "true") end)
pcall(function() setfflag("DataModelFasterTaskProcessing", "true") end)
pcall(function() setfflag("TaskSchedulerBlockingShutdownInClients", "true") end)
pcall(function() setfflag("TaskSchedulerAsyncTasksTimingEnabled", "true") end)
pcall(function() setfflag("TaskSchedulerAvoidYieldInBackground", "true") end) -- Attempting to patch Background Mode Voice Chat bug
pcall(function() setfflag("UseAsyncTaskForMicroVis", "true") end)
pcall(function() setfflag("UseAsyncTaskForTexturePack3", "true") end)
pcall(function() setfflag("NewRunServiceSignals", "true") end)
pcall(function() setfflag("AnimationTrackStepFix", "true") end)
pcall(function() setfflag("MemoryPrioritizationEnabledForTextures", "true") end)
pcall(function() setfflag("InterpolateCullDistance", "true") end)
pcall(function() setfflag("SimIfNoInterp", "true") end)
pcall(function() setfflag("BatchAssetApi", "true") end)
pcall(function() setfflag("CharacterTaskQueueReschedule", "true") end)
pcall(function() setfflag("BillboardGuiDistanceStepping2", "true") end)
pcall(function() setfflag("ReduceTrussSearchDistance2", "true") end)
pcall(function() setfflag("RenderInstanceCulling2", "true") end)
pcall(function() setfflag("RenderCompositorExperimentEnabled", "true") end)
pcall(function() setfflag("RenderEnableHbao", "false") end)
pcall(function() setfflag("RenderTC2_DiscardGeometryData2", "true") end)
pcall(function() setfflag("RenderTC2_6", "true") end)
pcall(function() setfflag("RenderTC2SaveTC1Memory", "true") end)
pcall(function() setfflag("RenderFIB3Grass", "false") end)	
pcall(function() setfflag("RenderHalfresShadowsGlsles", "true") end)
pcall(function() setfflag("RenderEnableSurfaceShadows", "false") end)
pcall(function() setfflag("RenderShadowUseLastLOD", "true") end)
pcall(function() setfflag("RenderLodShadows", "false") end)
pcall(function() setfflag("RenderShadowUseHQLOD", "false") end)
pcall(function() setfflag("HumanoidParallelUseManager4", "true") end)
pcall(function() setfflag("HumanoidParallelOnStep", "true") end)
pcall(function() setfflag("HumanoidParallelOnStep2", "true") end)
pcall(function() setfflag("HumanoidParallelFasterWakeUp", "true") end)
pcall(function() setfflag("HumanoidParallelFasterSetCollision", "true") end)
pcall(function() setfflag("HumanoidParallelSafeUnseat", "true") end)
pcall(function() setfflag("HumanoidParallelSafeCofmUpdate", "true") end)
pcall(function() setfflag("HumanoidParallelFixTickleFloor", "true") end)
pcall(function() setfflag("HumanoidParallelFixTickleFloor2", "true") end)
pcall(function() setfflag("HumanoidDeferredSyncFunction5", "true") end)
pcall(function() setfflag("HumanoidOnlySetCollisionsOnStateChangeDefaultIsEnabled", "true") end)
pcall(function() setfflag("EnableBackgroundModeWhenInactive", "true") end)  -- Sometimes breaks Voice Chat after a while
pcall(function() setfflag("DeliverLowMemoryWarningsViaPolling", "true") end)
pcall(function() setfflag("DynamicallyMoveSoundStorageLocationOnMemoryNotification", "true") end)
pcall(function() setfflag("TryCacheAndReuseVideoAssets", "true") end)
pcall(function() setfflag("AlwaysPutSoundsOnDiskWhenLowOnMemory", "true") end)
end
end)

task.spawn(function()
pcall(function() 
if not sethiddenproperty and not gethiddenproperty and not game:GetService("UserInputService").TouchEnabled then
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

task.spawn(function()
pcall(function() sethiddenproperty(W, "LevelOfDetail", "Disabled") end)
pcall(function() sethiddenproperty(W, "ClientAnimatorThrottling", "Enabled") end)
pcall(function() sethiddenproperty(W, "InterpolationThrottling", "Enabled") end)
pcall(function() sethiddenproperty(W, "MeshPartHeadsAndAccessories", "Disabled") end)
pcall(function() sethiddenproperty(W, "HumanoidOnlySetCollisionsOnStateChange", "Enabled") end)
end)

task.spawn(function()
pcall(function() W.LevelOfDetail = "Disabled" end)
pcall(function() W.ClientAnimatorThrottling = "Enabled" end)
pcall(function() W.InterpolationThrottling = "Enabled" end)
pcall(function() W.HumanoidOnlySetCollisionsOnStateChange = "Enabled" end)
pcall(function() W:SetMeshPartHeadsAndAccessories(false) end)
pcall(function() W:SetPhysicsThrottleEnabled(true) end)
end)

task.spawn(function()
pcall(function() sethiddenproperty(L, "Technology", "Voxel") end)
end)

task.spawn(function()
pcall(function()
for i, v in pairs(getinstances and getinstances() or game:GetDescendants()) do
	if v:IsA("MeshPart") or v:IsA("UnionOperation") or v:IsA("PartOperation") then
	   --pcall(function() sethiddenproperty(v, "RenderFidelity", Enum.RenderFidelity.Performance) end) -- There's messages saying it can't be changed but the property does change? Odd. 
           pcall(function() v.CastShadow = false end)
	end
	--wait()
    end
end)
end)

task.spawn(function()
	pcall(function() L.Outlines = false end)
	pcall(function() L.Brightness = 2 end)
	pcall(function() L.GlobalShadows = false end)
	pcall(function() L.EnvironmentDiffuseScale = 0 end)
	pcall(function() L.EnvironmentSpecularScale = 0 end)
        pcall(function() L.FogEnd = 10000000 end) 
	pcall(function() L.FogStart = 0 end)
	pcall(function() L.ExposureCompensation = -0.65 end)
	pcall(function() L.ShadowSoftness = 1 end)
end)

task.spawn(function()
pcall(function()
if C ~= nil then
pcall(function() sethiddenproperty(C, "Enabled", false) end)
pcall(function() C.Enabled = false end)
end
end)
end)

task.spawn(function()
T.ChildAdded:Connect(function(v)
if v:IsA("Clouds") then
pcall(function() sethiddenproperty(v, "Enabled", false)	end)	
pcall(function() v.Enabled = false end)
end
end)
end)

task.spawn(function()
pcall(function() T.Decoration = false end)
pcall(function() sethiddenproperty(T, "Decoration", false) end)
end)

task.spawn(function()
L.ChildAdded:Connect(function(v)
if v:IsA("PostEffect") then
pcall(function() sethiddenproperty(v, "Enabled", false)	end)
pcall(function() v.Enabled = false end)
end
end)
end)
		
task.spawn(function()
L.Changed:Connect(function(prop)
	if prop == "Brightness" or prop == "GlobalShadows" or prop == "Outlines" or prop == "EnvironmentDiffuseScale" or prop == "EnvironmentSpecularScale" or prop == "FogEnd" or prop == "FogStart" then 
	wait()
	pcall(function() L.Outlines = false end)
	pcall(function() L.Brightness = 2 end)
	pcall(function() L.GlobalShadows = false end)
	pcall(function() L.EnvironmentDiffuseScale = 0 end)
	pcall(function() L.EnvironmentSpecularScale = 0 end)
        pcall(function() L.FogEnd = 10000000 end) 
	pcall(function() L.FogStart = 0 end)
	pcall(function() L.ExposureCompensation = -0.65 end)
	pcall(function() L.ShadowSoftness = 1 end)
	wait()
	end
    end)
end)

task.spawn(function()
for i, v in pairs(L:GetDescendants()) do
	if v:IsA("PostEffect") then 
	   pcall(function() v.Enabled = false end)
	end
	--wait()
    end
end)

task.spawn(function()
for i, v in pairs(getinstances and getinstances() or game:GetDescendants()) do
	if v:IsA("Model") then 
	   pcall(function() v.LevelOfDetail = "Disabled" end)
	   pcall(function() sethiddenproperty(v, "LevelOfDetail", "Disabled") end)
	end
	--wait()
    end
end)

task.spawn(function()
for i, v in pairs(L:GetDescendants()) do
	if v:IsA("Atmosphere") and game.PlaceId ~= 185655149 then -- Bloxburg gets stuck on the loading screen due to an infinite yield, so exclude it from this
	   pcall(function() v:Destroy() end)
	end
	--wait()
    end
end)

pcall(function() Diagnostics.IsScriptStackTracingEnabled = false end)
pcall(function() Rendering.AutoFRMLevel = 1 end)
pcall(function() Rendering.EditQualityLevel = "Level01" end)
pcall(function() Rendering.QualityLevel = "Level01" end)
pcall(function() Rendering.ReloadAssets = true end)
pcall(function() Rendering.MeshCacheSize = tonumber(999999999) end)
pcall(function() Rendering.FrameRateManager = "On" end)
pcall(function() Rendering.ExportMergeByMaterial = true end)
pcall(function() Rendering.EnableFRM = true end)
pcall(function() userSettings.GraphicsQualityLevel = 1 end)
pcall(function() userSettings.SavedQualityLevel = "1" end)

task.spawn(function()
	for i, v in pairs(getinstances and getinstances() or game:GetDescendants()) do
		if v:IsA("BasePart") then
		    pcall(function() v.CastShadow = false end)
		end
	      -- wait()
	end
end)

task.spawn(function()
	for i, v in pairs(getinstances and getinstances() or game:GetDescendants()) do
		if v:IsA("BasePart") and v.Material == "Plastic" then
			pcall(function() v.Material = "SmoothPlastic" end)
			pcall(function() v.CastShadow = false end)
		end
		--wait()
	end
end)

task.spawn(function()
	for i, v in pairs(getinstances and getinstances() or game:GetDescendants()) do
		if v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Beam") or v:IsA("Smoke") then
			pcall(function() v.Enabled = false end)
		end
		--wait()
	end
end)

task.spawn(function()
P.PlayerAdded:Connect(function(p)
	wait()
	p.CharacterAdded:Connect(function(c)
		wait()
		for i, v in pairs(c:GetDescendants()) do
		if v:IsA("BasePart") then
			pcall(function() v.CastShadow = false end)
		end
		if v:IsA("BasePart") and v.Material == "Plastic" then
			pcall(function() v.Material = "SmoothPlastic" end)
			pcall(function() obj.CastShadow = false end)
	        end
		if v:IsA("MeshPart") or v:IsA("UnionOperation") or v:IsA("PartOperation") then
		    --pcall(function() sethiddenproperty(v, "RenderFidelity", Enum.RenderFidelity.Performance) end) -- There's messages saying it can't be changed but the property does change?
		    pcall(function() obj.CastShadow = false end)
		end
		if v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Beam") or v:IsA("Smoke") then
		   pcall(function() v.Enabled = false end)
	        end
		if v:IsA("Model") then 
	          pcall(function() v.LevelOfDetail = "Disabled" end)
	          pcall(function() sethiddenproperty(v, "LevelOfDetail", "Disabled") end)
	        end
	    --wait()
	end
end)
end)
end)
	
local function OnDescendantAdded(obj)
	if obj:IsA("BasePart") then
		pcall(function() obj.CastShadow = false end)
	end
	if obj:IsA("BasePart") and obj.Material == "Plastic" then
		pcall(function() obj.Material = "SmoothPlastic" end)
		pcall(function() obj.CastShadow = false end)
	end
	if obj:IsA("ParticleEmitter") or obj:IsA("Fire") or obj:IsA("Beam") or obj:IsA("Smoke") then
		pcall(function() obj.Enabled = false end)
	end
	if obj:IsA("MeshPart") or obj:IsA("UnionOperation") or obj:IsA("PartOperation") then
	    --pcall(function() sethiddenproperty(obj, "RenderFidelity", Enum.RenderFidelity.Performance) end) -- There's messages saying it can't be changed but the property does change?
	    pcall(function() obj.CastShadow = false end)
	end
	if obj:IsA("Model") then 
	   pcall(function() v.LevelOfDetail = "Disabled" end)
	   pcall(function() sethiddenproperty(v, "LevelOfDetail", "Disabled") end)
	end
end


local baseparts = {}
getgenv().baseparts = baseparts

local function SetCastShadow()
    for i, v in ipairs(getinstances and getinstances() or game:GetDescendants()) do
        pcall(function()
        if v:IsA("BasePart") then
           table.insert(baseparts, v)
        end
        end)
   wait()
end
for _, basepart in ipairs(baseparts) do	
    pcall(function() basepart.CastShadow = false end)
end
end


game.DescendantAdded:Connect(function(v)
task.spawn(OnDescendantAdded, v)
wait()
task.spawn(SetCastShadow)
end)
