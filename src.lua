--- Game Optimizer by nul#3174 ---

-- For the non setfflag flag setting to work, you must execute this before the game loads --
-- It works best in autoexec with autoattach on --

local setfflag = setfflag or function(flag, bool)
    game:DefineFastFlag(tostring(flag), bool)
end

local setfint = setfflag or function(flag, int)
    game:DefineFastInt(tostring(flag), tonumber(int))
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
pcall(function() setfflag("TweenServiceOnStepped", true) end)
pcall(function() setfflag("TweenServiceFixPathologicalCase", true) end)
--pcall(function() setfflag("UserFixMouseCapture", true) end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("UserHandleChatHotKeyWithContextActionService", true) end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("UserFixChatWindowHoverOver", true) end) -- potential issue causer, temporarily disabled
pcall(function() setfflag("UserAtomicCharacterSounds2", true) end)
pcall(function() setfflag("WindowsUseHardwareCursor", true) end)
pcall(function() setfflag("EngineHardwareCursorSupport", true) end)
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
pcall(function() setfflag("FutureIsBrightPhase2", false) end)
pcall(function() setfflag("FutureIsBrightPhase3", false) end)
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
--pcall(function() setfflag("HumanoidParallelUseManager4", true) end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("HumanoidParallelOnStep", true) end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("HumanoidParallelOnStep2", true) end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("HumanoidParallelFasterWakeUp", true) end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("HumanoidParallelFasterSetCollision", true) end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("HumanoidParallelSafeUnseat", true) end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("HumanoidParallelSafeCofmUpdate", true) end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("HumanoidParallelFixTickleFloor", true) end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("HumanoidParallelFixTickleFloor2", true) end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("HumanoidDeferredSyncFunction5", true) end) -- potential issue causer, temporarily disabled
pcall(function() setfflag("OptimizeNumUpdateEntityCalls6", true) end)
pcall(function() setfflag("AnimatorLodOptOutPhase", true) end)
--pcall(function() setfflag("RigidBodyLazyUpdating", true) end) -- potential issue causer, temporarily disabled
pcall(function() setfflag("OptimizeNumUpdateEntityCalls7", true) end)
--pcall(function() setfflag("HumanoidOnlySetCollisionsOnStateChangeDefaultIsEnabled", true) end) -- potential issue causer, temporarily disabled
pcall(function() setfflag("EnableBackgroundModeWhenInactive", true) end) -- Sometimes breaks Voice Chat after a while
pcall(function() setfint("RequestingBackgroundExecutionTimeRollout", 10000) end)
pcall(function() setfflag("DeliverLowMemoryWarningsViaPolling", true) end)
pcall(function() setfflag("DynamicallyMoveSoundStorageLocationOnMemoryNotification", true) end)
pcall(function() setfflag("TryCacheAndReuseVideoAssets", true) end)
pcall(function() setfflag("AlwaysPutSoundsOnDiskWhenLowOnMemory", true) end)
end
end)

task.spawn(function()
if not game:GetService("UserInputService").TouchEnabled then -- Arceus X crash fix
--pcall(function() setfflag("DebugRenderForceTechnologyVoxel", "true") end) -- Using manual checks now for this
pcall(function() setfflag("TweenServiceOnStepped", "true") end)
pcall(function() setfflag("TweenServiceFixPathologicalCase", "true") end)
--pcall(function() setfflag("UserFixMouseCapture", "true") end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("UserHandleChatHotKeyWithContextActionService", "true") end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("UserFixChatWindowHoverOver", "true") end) -- potential issue causer, temporarily disabled
pcall(function() setfflag("UserAtomicCharacterSounds2", "true") end)
pcall(function() setfflag("WindowsUseHardwareCursor", "true") end)
pcall(function() setfflag("EngineHardwareCursorSupport", "true") end)
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
pcall(function() setfflag("FutureIsBrightPhase2", "false") end)
pcall(function() setfflag("FutureIsBrightPhase3", "false") end)
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
--pcall(function() setfflag("HumanoidParallelUseManager4", "true") end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("HumanoidParallelOnStep", "true") end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("HumanoidParallelOnStep2", "true") end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("HumanoidParallelFasterWakeUp", "true") end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("HumanoidParallelFasterSetCollision", "true") end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("HumanoidParallelSafeUnseat", "true") end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("HumanoidParallelSafeCofmUpdate", "true") end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("HumanoidParallelFixTickleFloor", "true") end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("HumanoidParallelFixTickleFloor2", "true") end) -- potential issue causer, temporarily disabled
--pcall(function() setfflag("HumanoidDeferredSyncFunction5", "true") end) -- potential issue causer, temporarily disabled
pcall(function() setfflag("OptimizeNumUpdateEntityCalls6", "true") end)	
pcall(function() setfflag("AnimatorLodOptOutPhase", "true") end)
--pcall(function() setfflag("RigidBodyLazyUpdating", "true") end) -- potential issue causer, temporarily disabled
pcall(function() setfflag("OptimizeNumUpdateEntityCalls7", "true") end)
--pcall(function() setfflag("HumanoidOnlySetCollisionsOnStateChangeDefaultIsEnabled", "true") end) -- potential issue causer, temporarily disabled
pcall(function() setfflag("EnableBackgroundModeWhenInactive", "true") end)  -- Sometimes breaks Voice Chat after a while
pcall(function() setfint("RequestingBackgroundExecutionTimeRollout", "100") end)
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

local Rendering = settings().Rendering
local Diagnostics = settings().Diagnostics
local userSettings = UserSettings():GetService("UserGameSettings")

local cloneref = cloneref or function(ref)
    return ref
end

local function GetGameDescendants()
if getdescendants then
return getdescendants(game)
else
return game:GetDescendants()
end
end

local L = cloneref(game:GetService("Lighting"))
local P = cloneref(game:GetService("Players"))
local W = cloneref(game:GetService("Workspace"))
local T = cloneref(W.Terrain)
local C = T:FindFirstChildOfClass("Clouds")

local function GetLightingDescendants()
if getdescendants then
return getdescendants(L)
else
return L:GetDescendants()
end
end

--- mhm... i liek workspace properties ---

task.spawn(function()
pcall(function() sethiddenproperty(W, "LevelOfDetail", "Disabled") end)
pcall(function() sethiddenproperty(W, "ClientAnimatorThrottling", "Enabled") end)
pcall(function() sethiddenproperty(W, "InterpolationThrottling", "Enabled") end)
pcall(function() sethiddenproperty(W, "MeshPartHeadsAndAccessories", "Disabled") end)
--pcall(function() sethiddenproperty(W, "HumanoidOnlySetCollisionsOnStateChange", "Enabled") end) -- potential issue causer, temporarily disabled
end)

task.spawn(function()
pcall(function() W.LevelOfDetail = "Disabled" end)
pcall(function() W.ClientAnimatorThrottling = "Enabled" end)
pcall(function() W.InterpolationThrottling = "Enabled" end)
--pcall(function() W.HumanoidOnlySetCollisionsOnStateChange = "Enabled" end) -- potential issue causer, temporarily disabled
pcall(function() W:SetMeshPartHeadsAndAccessories(false) end)
--pcall(function() W:SetPhysicsThrottleEnabled(true) end) -- potential issue causer, temporarily disabled
end)

task.spawn(function()
pcall(function() sethiddenproperty(L, "Technology", "Voxel") end)
end)

task.spawn(function()
pcall(function()
for i, v in pairs(GetGameDescendants()) do
	if v:IsA("MeshPart") then
	   pcall(function() sethiddenproperty(v, "RenderFidelityReplicate", Enum.RenderFidelity.Performance) end) --- HAHAHAH, I HAVE FOUND THE SECRET!
           pcall(function() v.CastShadow = false end)
	end
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
	pcall(function() L.ShadowSoftness = 0 end)
end)

task.spawn(function()
pcall(function()
if C ~= nil then
pcall(function() sethiddenproperty(C, "Enabled", false) end)
pcall(function() C.Enabled = false end)
end
end)
end)

T.ChildAdded:Connect(function(v)
if v:IsA("Clouds") then
pcall(function() sethiddenproperty(v, "Enabled", false)	end)	
pcall(function() v.Enabled = false end)
end
end)

task.spawn(function()
pcall(function() T.Decoration = false end)
pcall(function() sethiddenproperty(T, "Decoration", false) end)
end)

L.ChildAdded:Connect(function(v)
--if v:IsA("PostEffect") then
if v:IsA("DepthOfFieldEffect") then
pcall(function() sethiddenproperty(v, "Enabled", false)	end)
pcall(function() v.Enabled = false end)
end
end)
		
L.Changed:Connect(function(prop)
	if prop == "Brightness" or prop == "GlobalShadows" or prop == "Outlines" or prop == "EnvironmentDiffuseScale" or prop == "EnvironmentSpecularScale" or prop == "FogEnd" or prop == "FogStart" or prop == "ShadowSoftness" or prop == "ExposureCompensation" then 
	pcall(function() L.Outlines = false end)
	pcall(function() L.Brightness = 2 end)
	pcall(function() L.GlobalShadows = false end)
	pcall(function() L.EnvironmentDiffuseScale = 0 end)
	pcall(function() L.EnvironmentSpecularScale = 0 end)
        pcall(function() L.FogEnd = 10000000 end) 
	pcall(function() L.FogStart = 0 end)
	pcall(function() L.ExposureCompensation = -0.65 end)
	pcall(function() L.ShadowSoftness = 0 end)
        end
end)

task.spawn(function()
for i, v in pairs(GetLightingDescendants()) do
	--if v:IsA("PostEffect") then 
	if v:IsA("DepthOfFieldEffect") then
	   pcall(function() v.Enabled = false end)
	end
    end
end)

task.spawn(function()
for i, v in pairs(GetGameDescendants()) do
	if v:IsA("Model") then 
	   pcall(function() v.LevelOfDetail = "Disabled" end)
	   pcall(function() sethiddenproperty(v, "LevelOfDetail", "Disabled") end)
	end
    end
end)


task.spawn(function()
for i, v in pairs(GetLightingDescendants()) do
	--if v:IsA("PostEffect") then
        if v:IsA("DepthOfFieldEffect") then
	v.Changed:Connect(function(prop)
	if prop == "Enabled" then
	pcall(function() v.Enabled = false end)
	end
	end)
	end
    end
end)

task.spawn(function()
for i, v in pairs(GetLightingDescendants()) do
	if v:IsA("Atmosphere") and game.PlaceId ~= 185655149 then -- Bloxburg gets stuck on the loading screen due to an infinite yield, so exclude it from this
	   pcall(function() v:Remove() end)
	   --pcall(function() v:Destroy() end)
	end
    end
end)

pcall(function() Diagnostics.IsScriptStackTracingEnabled = false end)
pcall(function() Rendering.AutoFRMLevel = 1 end)
pcall(function() Rendering.EditQualityLevel = "Level01" end)
pcall(function() Rendering.QualityLevel = "Level01" end)
pcall(function() Rendering.MeshPartDetailLevel = "Level00" end)
pcall(function() Rendering.ReloadAssets = true end)
pcall(function() Rendering.MeshCacheSize = tonumber(999999999) end)
pcall(function() Rendering.FrameRateManager = "On" end)
pcall(function() Rendering.ExportMergeByMaterial = true end)
pcall(function() Rendering.EnableFRM = true end)
pcall(function() userSettings.GraphicsQualityLevel = 0 end)
pcall(function() userSettings.SavedQualityLevel = "0" end)

task.spawn(function()
	for i, v in pairs(GetGameDescendants()) do
		if v:IsA("BasePart") then
		    pcall(function() v.CastShadow = false end)
		end
	end
end)

task.spawn(function()
	for i, v in pairs(GetGameDescendants()) do
		if v:IsA("BasePart") and v.Material == "Plastic" then
			pcall(function() v.Material = "SmoothPlastic" end)
			pcall(function() v.CastShadow = false end)
		end
	end
end)

task.spawn(function()
	for i, v in pairs(GetGameDescendants()) do
		--if v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Beam") or v:IsA("Smoke") or v:IsA("Sparkles") then
		if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Sparkles") then
			pcall(function() v.Enabled = false end)
		end
	end
end)

task.spawn(function()
P.PlayerAdded:Connect(function(p)
p.CharacterAdded:Connect(function(c)
for i, v in pairs(c:GetDescendants()) do
	if obj:IsA("BasePart") then
    obj.CastShadow = false
    
    if obj.Material.Name == "Plastic" then
        obj.Material = "SmoothPlastic"
    end
    
    if obj:IsA("MeshPart") then
        pcall(function() sethiddenproperty(obj, "RenderFidelityReplicate", "Performance") end)
    end
--elseif obj:IsA("ParticleEmitter") or obj:IsA("Fire") or obj:IsA("Beam") or obj:IsA("Smoke") or obj:IsA("Sparkles") then
elseif obj:IsA("ParticleEmitter") or obj:IsA("Smoke") or obj:IsA("Sparkles") then
    obj.Enabled = false
elseif obj:IsA("Model") then
    obj.LevelOfDetail = "Disabled"
end
end
end)
end)
end)
	
L.ChildAdded:Connect(function()
for i, v in pairs(GetLightingDescendants()) do
	--if v:IsA("PostEffect") then
	if v:IsA("DepthOfFieldEffect") then
	v.Changed:Connect(function(prop)
	if prop == "Enabled" then
	pcall(function() v.Enabled = false end)
	end
	end)
	end
    end
end)
	
local function OnDescendantAdded(obj)
if obj:IsA("BasePart") then
    obj.CastShadow = false
    
    if obj.Material == "Plastic" then
        obj.Material = "SmoothPlastic"
    end
    
    if obj:IsA("MeshPart") then
        pcall(function() sethiddenproperty(obj, "RenderFidelityReplicate", "Performance") end)
    end
--elseif obj:IsA("ParticleEmitter") or obj:IsA("Fire") or obj:IsA("Beam") or obj:IsA("Smoke") or obj:IsA("Sparkles") then
elseif obj:IsA("ParticleEmitter") or obj:IsA("Smoke") or obj:IsA("Sparkles") then
    obj.Enabled = false
elseif obj:IsA("Model") then
    obj.LevelOfDetail = "Disabled"
end
end

W.DescendantAdded:Connect(function(v)
OnDescendantAdded(v)
end)
