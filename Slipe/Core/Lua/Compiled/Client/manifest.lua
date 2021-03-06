-- Generated by CSharp.lua Compiler
return function (out)
  do
    out = (out and #out > 0) and (out .. '.') or ""
    local require = require
    local load = function(module) return require(out .. module) end

    -- load all files
    load("Source.SlipeClient.Assets.Asset")
    load("Source.SlipeClient.Assets.Col")
    load("Source.SlipeClient.Assets.CustomAnimation")
    load("Source.SlipeClient.Assets.DFF")
    load("Source.SlipeClient.Assets.IFP")
    load("Source.SlipeClient.Assets.Mod")
    load("Source.SlipeClient.Assets.TXD")
    load("Source.SlipeClient.Browsers.Browser")
    load("Source.SlipeClient.Browsers.Events.OnCreatedEventArgs")
    load("Source.SlipeClient.Browsers.Events.OnCursorChangeEventArgs")
    load("Source.SlipeClient.Browsers.Events.OnDocumentReadEventArgs")
    load("Source.SlipeClient.Browsers.Events.OnInputFocusChangeEventArgs")
    load("Source.SlipeClient.Browsers.Events.OnLoadFailEventArgs")
    load("Source.SlipeClient.Browsers.Events.OnLoadStartEventArgs")
    load("Source.SlipeClient.Browsers.Events.OnNavigateEventArgs")
    load("Source.SlipeClient.Browsers.Events.OnPopupEventArgs")
    load("Source.SlipeClient.Browsers.Events.OnResourceBlockedEventArgs")
    load("Source.SlipeClient.Browsers.Events.OnTooltipEventArgs")
    load("Source.SlipeClient.Browsers.Events.OnWhiteListChangeEventArgs")
    load("Source.SlipeClient.Browsers.JavascriptVariable")
    load("Source.SlipeClient.Dx.Align")
    load("Source.SlipeClient.Dx.Circle")
    load("Source.SlipeClient.Dx.Dx2DObject")
    load("Source.SlipeClient.Dx.Dx3DLine")
    load("Source.SlipeClient.Dx.Dx3DMaterialLine")
    load("Source.SlipeClient.Dx.Dx3DMaterialLineSection")
    load("Source.SlipeClient.Dx.DxEnums")
    load("Source.SlipeClient.Dx.Font")
    load("Source.SlipeClient.Dx.FontQuality")
    load("Source.SlipeClient.Dx.IDrawable")
    load("Source.SlipeClient.Dx.Image")
    load("Source.SlipeClient.Dx.ImageSection")
    load("Source.SlipeClient.Dx.Line")
    load("Source.SlipeClient.Dx.Material")
    load("Source.SlipeClient.Dx.Rectangle")
    load("Source.SlipeClient.Dx.ScreenSource")
    load("Source.SlipeClient.Dx.Shader")
    load("Source.SlipeClient.Dx.StandardFont")
    load("Source.SlipeClient.Dx.Text")
    load("Source.SlipeClient.Dx.Texture")
    load("Source.SlipeClient.Dx.TexturePixels")
    load("Source.SlipeClient.Effects.Effect")
    load("Source.SlipeClient.Effects.EffectType")
    load("Source.SlipeClient.Effects.Fx")
    load("Source.SlipeClient.Elements.ElementExtensions")
    load("Source.SlipeClient.Elements.Events.OnExplosionEventArgs")
    load("Source.SlipeClient.Elements.ResourceRootElement")
    load("Source.SlipeClient.Elements.RootElement")
    load("Source.SlipeClient.Events.Event")
    load("Source.SlipeClient.Explosions.Explosion")
    load("Source.SlipeClient.Game.Engine")
    load("Source.SlipeClient.Game.Events.OnFileDownloadCompleteEventArgs")
    load("Source.SlipeClient.Game.Events.OnMinimizeEventArgs")
    load("Source.SlipeClient.Game.Events.OnNetworkInteruptionEventArgs")
    load("Source.SlipeClient.Game.Events.OnRestoreEventArgs")
    load("Source.SlipeClient.Game.Events.OnStartEventArgs")
    load("Source.SlipeClient.Game.Events.OnStopEventArgs")
    load("Source.SlipeClient.Game.Events.OnUpdateEventArgs")
    load("Source.SlipeClient.Game.GameClient")
    load("Source.SlipeClient.Game.InputMode")
    load("Source.SlipeClient.Game.Team")
    load("Source.SlipeClient.Game.TrayIconType")
    load("Source.SlipeClient.GameWorld.AmbientSound")
    load("Source.SlipeClient.GameWorld.Events.OnBreakEventArgs")
    load("Source.SlipeClient.GameWorld.Events.OnDamageEventArgs")
    load("Source.SlipeClient.GameWorld.Fire")
    load("Source.SlipeClient.GameWorld.Garage")
    load("Source.SlipeClient.GameWorld.SwatRope")
    load("Source.SlipeClient.GameWorld.Water")
    load("Source.SlipeClient.GameWorld.World")
    load("Source.SlipeClient.GameWorld.WorldObject")
    load("Source.SlipeClient.GameWorld.WorldSpecialProperty")
    load("Source.SlipeClient.Gui.Button")
    load("Source.SlipeClient.Gui.CheckBox")
    load("Source.SlipeClient.Gui.ComboBox")
    load("Source.SlipeClient.Gui.ComboBoxItem")
    load("Source.SlipeClient.Gui.Edit")
    load("Source.SlipeClient.Gui.EditableGuiElement")
    load("Source.SlipeClient.Gui.Events.OnAcceptedEventArgs")
    load("Source.SlipeClient.Gui.Events.OnBlurEventArgs")
    load("Source.SlipeClient.Gui.Events.OnChangedEventArgs")
    load("Source.SlipeClient.Gui.Events.OnClickEventArgs")
    load("Source.SlipeClient.Gui.Events.OnDoubleClickEventArgs")
    load("Source.SlipeClient.Gui.Events.OnFocusEventArgs")
    load("Source.SlipeClient.Gui.Events.OnMouseDownEventArgs")
    load("Source.SlipeClient.Gui.Events.OnMouseEnterEventArgs")
    load("Source.SlipeClient.Gui.Events.OnMouseLeaveEventArgs")
    load("Source.SlipeClient.Gui.Events.OnMouseMoveEventArgs")
    load("Source.SlipeClient.Gui.Events.OnMouseUpEventArgs")
    load("Source.SlipeClient.Gui.Events.OnMouseWheelEventArgs")
    load("Source.SlipeClient.Gui.Events.OnMoveEventArgs")
    load("Source.SlipeClient.Gui.Events.OnOpenEventArgs")
    load("Source.SlipeClient.Gui.Events.OnResizeEventArgs")
    load("Source.SlipeClient.Gui.Events.OnScrollEventArgs")
    load("Source.SlipeClient.Gui.GridColumn")
    load("Source.SlipeClient.Gui.GridItem")
    load("Source.SlipeClient.Gui.GridList")
    load("Source.SlipeClient.Gui.GridRow")
    load("Source.SlipeClient.Gui.GuiAlign")
    load("Source.SlipeClient.Gui.GuiBrowser")
    load("Source.SlipeClient.Gui.GuiElement")
    load("Source.SlipeClient.Gui.GuiFont")
    load("Source.SlipeClient.Gui.Label")
    load("Source.SlipeClient.Gui.Memo")
    load("Source.SlipeClient.Gui.ProgressBar")
    load("Source.SlipeClient.Gui.RadioButton")
    load("Source.SlipeClient.Gui.ScrollBar")
    load("Source.SlipeClient.Gui.ScrollPane")
    load("Source.SlipeClient.Gui.StandardGuiFont")
    load("Source.SlipeClient.Gui.StaticImage")
    load("Source.SlipeClient.Gui.Tab")
    load("Source.SlipeClient.Gui.TabPanel")
    load("Source.SlipeClient.Gui.Window")
    load("Source.SlipeClient.Helpers.EagerAttachableObject")
    load("Source.SlipeClient.Helpers.LazyAttachableObject")
    load("Source.SlipeClient.IO.ChatBox")
    load("Source.SlipeClient.IO.CommandHandler")
    load("Source.SlipeClient.IO.Cursor")
    load("Source.SlipeClient.IO.Events.OnCharacterEventArgs")
    load("Source.SlipeClient.IO.Events.OnChatMessageEventArgs")
    load("Source.SlipeClient.IO.Events.OnClickEventArgs")
    load("Source.SlipeClient.IO.Events.OnDebugMessageEventArgs")
    load("Source.SlipeClient.IO.Events.OnDoubleClickEventArgs")
    load("Source.SlipeClient.IO.Events.OnKeyEventArgs")
    load("Source.SlipeClient.IO.Events.OnMoveEventArgs")
    load("Source.SlipeClient.IO.Input")
    load("Source.SlipeClient.IO.MTAConsole")
    load("Source.SlipeClient.IO.MTADebug")
    load("Source.SlipeClient.Lights.Light")
    load("Source.SlipeClient.Lights.SearchLight")
    load("Source.SlipeClient.Markers.Marker")
    load("Source.SlipeClient.Peds.Events.OnChokeEventArgs")
    load("Source.SlipeClient.Peds.Events.OnConsoleEventArgs")
    load("Source.SlipeClient.Peds.Events.OnDamageEventArgs")
    load("Source.SlipeClient.Peds.Events.OnHeliKilledEventArgs")
    load("Source.SlipeClient.Peds.Events.OnJoinEventArgs")
    load("Source.SlipeClient.Peds.Events.OnNicknameChangedEventArgs")
    load("Source.SlipeClient.Peds.Events.OnPickupHitEventArgs")
    load("Source.SlipeClient.Peds.Events.OnPickupLeaveEventArgs")
    load("Source.SlipeClient.Peds.Events.OnQuitEventArgs")
    load("Source.SlipeClient.Peds.Events.OnRadioSwitchEventArgs")
    load("Source.SlipeClient.Peds.Events.OnSpawnEventArgs")
    load("Source.SlipeClient.Peds.Events.OnStealthKillEventArgs")
    load("Source.SlipeClient.Peds.Events.OnStepEventArgs")
    load("Source.SlipeClient.Peds.Events.OnStuntFinishEventArgs")
    load("Source.SlipeClient.Peds.Events.OnStuntStartEventArgs")
    load("Source.SlipeClient.Peds.Events.OnTargetEventArgs")
    load("Source.SlipeClient.Peds.Events.OnVehicleEnterEventArgs")
    load("Source.SlipeClient.Peds.Events.OnVehicleExitEventArgs")
    load("Source.SlipeClient.Peds.Events.OnVoicePausedEventArgs")
    load("Source.SlipeClient.Peds.Events.OnVoiceResumedEventArgs")
    load("Source.SlipeClient.Peds.Events.OnVoiceStartEventArgs")
    load("Source.SlipeClient.Peds.Events.OnVoiceStopEventArgs")
    load("Source.SlipeClient.Peds.Events.OnWastedEventArgs")
    load("Source.SlipeClient.Peds.Events.OnWeaponFireEventArgs")
    load("Source.SlipeClient.Peds.Events.OnWeaponSwitchEventArgs")
    load("Source.SlipeClient.Peds.LocalPlayer")
    load("Source.SlipeClient.Peds.MoveState")
    load("Source.SlipeClient.Peds.Ped")
    load("Source.SlipeClient.Peds.PedVoice")
    load("Source.SlipeClient.Peds.Player")
    load("Source.SlipeClient.Peds.Tasks")
    load("Source.SlipeClient.Pickups.Pickup")
    load("Source.SlipeClient.Radar.Blip")
    load("Source.SlipeClient.Radar.RadarArea")
    load("Source.SlipeClient.Rendering.Camera")
    load("Source.SlipeClient.Rendering.CameraEnums")
    load("Source.SlipeClient.Rendering.Events.OnHudRenderEventArgs")
    load("Source.SlipeClient.Rendering.Events.OnRenderEventArgs")
    load("Source.SlipeClient.Rendering.RenderEnums")
    load("Source.SlipeClient.Rendering.Renderer")
    load("Source.SlipeClient.Rendering.RenderTarget")
    load("Source.SlipeClient.Rendering.Status")
    load("Source.SlipeClient.Resources.Resource")
    load("Source.SlipeClient.Rpc.RpcManager")
    load("Source.SlipeClient.SightLines.SightLine")
    load("Source.SlipeClient.SightLines.SightLineData")
    load("Source.SlipeClient.Sounds.Events.OnBeatEventArgs")
    load("Source.SlipeClient.Sounds.Events.OnDownloadFinishedEventArgs")
    load("Source.SlipeClient.Sounds.Events.OnMetaChangedEventArgs")
    load("Source.SlipeClient.Sounds.Events.OnStartEventArgs")
    load("Source.SlipeClient.Sounds.Events.OnStopEventArgs")
    load("Source.SlipeClient.Sounds.Events.OnStreamEventArgs")
    load("Source.SlipeClient.Sounds.Sound")
    load("Source.SlipeClient.Sounds.SoundEffects")
    load("Source.SlipeClient.Sounds.SoundEnums")
    load("Source.SlipeClient.Sounds.SoundMeta")
    load("Source.SlipeClient.Sounds.SoundProperties")
    load("Source.SlipeClient.Sounds.WorldSound")
    load("Source.SlipeClient.Vehicles.BaseVehicle")
    load("Source.SlipeClient.Vehicles.Boat")
    load("Source.SlipeClient.Vehicles.Component")
    load("Source.SlipeClient.Vehicles.ComponentEnums")
    load("Source.SlipeClient.Vehicles.Events.OnAttachEventArgs")
    load("Source.SlipeClient.Vehicles.Events.OnCollisionEventArgs")
    load("Source.SlipeClient.Vehicles.Events.OnDamageEventArgs")
    load("Source.SlipeClient.Vehicles.Events.OnDetachEventArgs")
    load("Source.SlipeClient.Vehicles.Events.OnEnterEventArgs")
    load("Source.SlipeClient.Vehicles.Events.OnExitEventArgs")
    load("Source.SlipeClient.Vehicles.Events.OnExplodeEventArgs")
    load("Source.SlipeClient.Vehicles.Events.OnNitroStateChangeEventArgs")
    load("Source.SlipeClient.Vehicles.Events.OnPedHitEventArgs")
    load("Source.SlipeClient.Vehicles.Events.OnRespawnEventArgs")
    load("Source.SlipeClient.Vehicles.Events.OnStartEnterEventArgs")
    load("Source.SlipeClient.Vehicles.Events.OnStartExitEventArgs")
    load("Source.SlipeClient.Vehicles.Helicopter")
    load("Source.SlipeClient.Vehicles.Plane")
    load("Source.SlipeClient.Vehicles.Taxi")
    load("Source.SlipeClient.Vehicles.Trailer")
    load("Source.SlipeClient.Vehicles.Train")
    load("Source.SlipeClient.Vehicles.TurretedVehicle")
    load("Source.SlipeClient.Vehicles.Vehicle")
    load("Source.SlipeClient.Vehicles.VehicleModel")
    load("Source.SlipeClient.Weapons.CustomWeapon")
    load("Source.SlipeClient.Weapons.Events.OnCreatedEventArgs")
    load("Source.SlipeClient.Weapons.Events.OnFireEventArgs")
    load("Source.SlipeClient.Weapons.Projectile")
    load("Source.SlipeShared.CollisionShapes.CollisionCircle")
    load("Source.SlipeShared.CollisionShapes.CollisionCuboid")
    load("Source.SlipeShared.CollisionShapes.CollisionRectangle")
    load("Source.SlipeShared.CollisionShapes.CollisionShape")
    load("Source.SlipeShared.CollisionShapes.CollisionSphere")
    load("Source.SlipeShared.CollisionShapes.CollisionTube")
    load("Source.SlipeShared.CollisionShapes.Events.OnHitEventArgs")
    load("Source.SlipeShared.CollisionShapes.Events.OnLeaveEventArgs")
    load("Source.SlipeShared.Cryptography.Base64")
    load("Source.SlipeShared.Cryptography.Bcrypt")
    load("Source.SlipeShared.Cryptography.Md5")
    load("Source.SlipeShared.Cryptography.Sha1")
    load("Source.SlipeShared.Cryptography.Sha224")
    load("Source.SlipeShared.Cryptography.Sha256")
    load("Source.SlipeShared.Cryptography.Sha384")
    load("Source.SlipeShared.Cryptography.Sha512")
    load("Source.SlipeShared.Cryptography.Tea")
    load("Source.SlipeShared.Elements.DefaultElementClassAttribute")
    load("Source.SlipeShared.Elements.Element")
    load("Source.SlipeShared.Elements.ElementManager")
    load("Source.SlipeShared.Elements.ElementType")
    load("Source.SlipeShared.Elements.Events.OnClickedEventArgs")
    load("Source.SlipeShared.Elements.Events.OnCollisionShapeHitEventArgs")
    load("Source.SlipeShared.Elements.Events.OnCollisionShapeLeaveEventArgs")
    load("Source.SlipeShared.Elements.Events.OnDestroyEventArgs")
    load("Source.SlipeShared.Elements.Events.OnModelChangeEventArgs")
    load("Source.SlipeShared.Elements.Events.OnStartSyncEventArgs")
    load("Source.SlipeShared.Elements.Events.OnSteamInEventArgs")
    load("Source.SlipeShared.Elements.Events.OnSteamOutEventArgs")
    load("Source.SlipeShared.Elements.Events.OnStopSyncEventArgs")
    load("Source.SlipeShared.Elements.PhysicalElement")
    load("Source.SlipeShared.Exceptions.NullElementException")
    load("Source.SlipeShared.Exports.ExportAttribute")
    load("Source.SlipeShared.GameWorld.GameTime")
    load("Source.SlipeShared.GameWorld.HeatHaze")
    load("Source.SlipeShared.GameWorld.SharedGarage")
    load("Source.SlipeShared.GameWorld.SharedWater")
    load("Source.SlipeShared.GameWorld.SharedWorld")
    load("Source.SlipeShared.GameWorld.SharedWorldObject")
    load("Source.SlipeShared.GameWorld.Weather")
    load("Source.SlipeShared.Helpers.EasingFunction")
    load("Source.SlipeShared.Helpers.NumericHelper")
    load("Source.SlipeShared.Helpers.Version")
    load("Source.SlipeShared.IO.KeyEnum")
    load("Source.SlipeShared.IO.MouseEnum")
    load("Source.SlipeShared.IO.SharedMTADebug")
    load("Source.SlipeShared.Markers.Events.OnHitEventArgs")
    load("Source.SlipeShared.Markers.Events.OnLeaveEventArgs")
    load("Source.SlipeShared.Markers.MarkerIcon")
    load("Source.SlipeShared.Markers.MarkerType")
    load("Source.SlipeShared.Markers.SharedMarker")
    load("Source.SlipeShared.Peds.AnalogControl")
    load("Source.SlipeShared.Peds.Animation")
    load("Source.SlipeShared.Peds.HudComponent")
    load("Source.SlipeShared.Peds.PedClothes")
    load("Source.SlipeShared.Peds.QuitType")
    load("Source.SlipeShared.Peds.SharedPed")
    load("Source.SlipeShared.Pickups.Events.OnHitArgs")
    load("Source.SlipeShared.Pickups.Events.OnLeaveArgs")
    load("Source.SlipeShared.Pickups.SharedPickup")
    load("Source.SlipeShared.Radar.SharedBlip")
    load("Source.SlipeShared.Radar.SharedRadarArea")
    load("Source.SlipeShared.Resources.SharedResource")
    load("Source.SlipeShared.RPC.BaseRPC")
    load("Source.SlipeShared.RPC.ElementRpc")
    load("Source.SlipeShared.RPC.EmptyRpc")
    load("Source.SlipeShared.RPC.IRPC")
    load("Source.SlipeShared.Utilities.Color")
    load("Source.SlipeShared.Vehicles.Handling")
    load("Source.SlipeShared.Vehicles.HandlingEnums")
    load("Source.SlipeShared.Vehicles.SharedSirens")
    load("Source.SlipeShared.Vehicles.SharedVehicle")
    load("Source.SlipeShared.Vehicles.SharedVehicleModel")
    load("Source.SlipeShared.Vehicles.Siren")
    load("Source.SlipeShared.Weapons.SharedWeaponModel")
    load("Source.SlipeShared.Weapons.WeaponEnums")
  end

  System.init({
    "Slipe.Shared.Elements.Element",
    "Slipe.Shared.Elements.PhysicalElement",
    "Slipe.Client.Helpers.LazyAttachableObject",
    "Slipe.Client.Dx.IDrawable",
    "Slipe.Shared.Peds.SharedPed",
    "Slipe.Client.Dx.Dx3DLine",
    "Slipe.Client.Dx.Dx2DObject",
    "Slipe.Client.Dx.Material",
    "Slipe.Client.Gui.GuiElement",
    "Slipe.Client.Peds.Ped",
    "Slipe.Shared.Vehicles.SharedVehicle",
    "Slipe.Shared.Vehicles.SharedVehicleModel",
    "Slipe.Shared.Rpc.IRpc",
    "Slipe.Client.Assets.Asset",
    "Slipe.Client.Dx.Dx3DMaterialLine",
    "Slipe.Client.Dx.Image",
    "Slipe.Client.Dx.Texture",
    "Slipe.Shared.GameWorld.SharedGarage",
    "Slipe.Shared.GameWorld.SharedWater",
    "Slipe.Shared.GameWorld.SharedWorld",
    "Slipe.Shared.GameWorld.SharedWorldObject",
    "Slipe.Client.Gui.EditableGuiElement",
    "Slipe.Shared.IO.SharedMtaDebug",
    "Slipe.Shared.Markers.SharedMarker",
    "Slipe.Client.Peds.Player",
    "Slipe.Shared.Pickups.SharedPickup",
    "Slipe.Shared.Radar.SharedBlip",
    "Slipe.Shared.Radar.SharedRadarArea",
    "Slipe.Shared.Resources.SharedResource",
    "Slipe.Client.Sounds.Sound",
    "Slipe.Client.Vehicles.BaseVehicle",
    "Slipe.Client.Vehicles.VehicleModel",
    "Slipe.Shared.CollisionShapes.CollisionShape",
    "Slipe.Shared.Rpc.BaseRpc",
    "Slipe.Client.Assets.Col",
    "Slipe.Client.Assets.CustomAnimation",
    "Slipe.Client.Assets.Dff",
    "Slipe.Client.Assets.Ifp",
    "Slipe.Client.Assets.Mod",
    "Slipe.Client.Assets.Txd",
    "Slipe.Client.Browsers.Browser",
    "Slipe.Client.Browsers.Events.OnCreatedEventArgs",
    "Slipe.Client.Browsers.Events.OnCursorChangeEventArgs",
    "Slipe.Client.Browsers.Events.OnDocumentReadEventArgs",
    "Slipe.Client.Browsers.Events.OnInputFocusChangeEventArgs",
    "Slipe.Client.Browsers.Events.OnLoadFailEventArgs",
    "Slipe.Client.Browsers.Events.OnLoadStartEventArgs",
    "Slipe.Client.Browsers.Events.OnNavigateEventArgs",
    "Slipe.Client.Browsers.Events.OnPopupEventArgs",
    "Slipe.Client.Browsers.Events.OnResourceBlockedEventArgs",
    "Slipe.Client.Browsers.Events.OnTooltipEventArgs",
    "Slipe.Client.Browsers.Events.OnWhiteListChangeEventArgs",
    "Slipe.Client.Browsers.JavascriptVariable",
    "Slipe.Client.Camera",
    "Slipe.Client.Dx.Circle",
    "Slipe.Client.Dx.Dx3DMaterialLineSection",
    "Slipe.Client.Dx.Font",
    "Slipe.Client.Dx.HorizontalAlign",
    "Slipe.Client.Dx.ImageFormat",
    "Slipe.Client.Dx.ImageSection",
    "Slipe.Client.Dx.Line",
    "Slipe.Client.Dx.Rectangle",
    "Slipe.Client.Dx.ScreenSource",
    "Slipe.Client.Dx.Shader",
    "Slipe.Client.Dx.ShaderElementType",
    "Slipe.Client.Dx.StandardFont",
    "Slipe.Client.Dx.Text",
    "Slipe.Client.Dx.TextureEdge",
    "Slipe.Client.Dx.TextureFormat",
    "Slipe.Client.Dx.TexturePixels",
    "Slipe.Client.Dx.VerticalAlign",
    "Slipe.Client.Effects.Effect",
    "Slipe.Client.Effects.EffectType",
    "Slipe.Client.Effects.Fx",
    "Slipe.Client.Elements.ElementExtensions",
    "Slipe.Client.Elements.Events.OnExplosionEventArgs",
    "Slipe.Client.Elements.ResourceRootElement",
    "Slipe.Client.Elements.RootElement",
    "Slipe.Client.Enums.FontQuality",
    "Slipe.Client.Events.Event",
    "Slipe.Client.Explosions.Explosion",
    "Slipe.Client.Game.Engine",
    "Slipe.Client.Game.Events.OnFileDownloadCompleteEventArgs",
    "Slipe.Client.Game.Events.OnMinimizeEventArgs",
    "Slipe.Client.Game.Events.OnNetworkInteruptionEventArgs",
    "Slipe.Client.Game.Events.OnRestoreEventArgs",
    "Slipe.Client.Game.Events.OnStartEventArgs",
    "Slipe.Client.Game.Events.OnStopEventArgs",
    "Slipe.Client.Game.Events.OnUpdateEventArgs",
    "Slipe.Client.Game.GameClient",
    "Slipe.Client.Game.InputMode",
    "Slipe.Client.Game.Team",
    "Slipe.Client.Game.TrayIconType",
    "Slipe.Client.GameWorld.AmbientSound",
    "Slipe.Client.GameWorld.Events.OnBreakEventArgs",
    "Slipe.Client.GameWorld.Events.OnDamageEventArgs",
    "Slipe.Client.GameWorld.Fire",
    "Slipe.Client.GameWorld.Garage",
    "Slipe.Client.GameWorld.SwatRope",
    "Slipe.Client.GameWorld.Water",
    "Slipe.Client.GameWorld.World",
    "Slipe.Client.GameWorld.WorldObject",
    "Slipe.Client.GameWorld.WorldSpecialProperty",
    "Slipe.Client.Gui.Button",
    "Slipe.Client.Gui.CheckBox",
    "Slipe.Client.Gui.ComboBox",
    "Slipe.Client.Gui.ComboBoxItem",
    "Slipe.Client.Gui.Edit",
    "Slipe.Client.Gui.Events.OnAcceptedEventArgs",
    "Slipe.Client.Gui.Events.OnBlurEventArgs",
    "Slipe.Client.Gui.Events.OnChangedEventArgs",
    "Slipe.Client.Gui.Events.OnClickEventArgs",
    "Slipe.Client.Gui.Events.OnDoubleClickEventArgs",
    "Slipe.Client.Gui.Events.OnFocusEventArgs",
    "Slipe.Client.Gui.Events.OnMouseDownEventArgs",
    "Slipe.Client.Gui.Events.OnMouseEnterEventArgs",
    "Slipe.Client.Gui.Events.OnMouseLeaveEventArgs",
    "Slipe.Client.Gui.Events.OnMouseMoveEventArgs",
    "Slipe.Client.Gui.Events.OnMouseUpEventArgs",
    "Slipe.Client.Gui.Events.OnMouseWheelEventArgs",
    "Slipe.Client.Gui.Events.OnMoveEventArgs",
    "Slipe.Client.Gui.Events.OnOpenEventArgs",
    "Slipe.Client.Gui.Events.OnResizeEventArgs",
    "Slipe.Client.Gui.Events.OnScrollEventArgs",
    "Slipe.Client.Gui.GridColumn",
    "Slipe.Client.Gui.GridItem",
    "Slipe.Client.Gui.GridList",
    "Slipe.Client.Gui.GridRow",
    "Slipe.Client.Gui.GuiBrowser",
    "Slipe.Client.Gui.GuiFont",
    "Slipe.Client.Gui.HorizontalAlign",
    "Slipe.Client.Gui.Label",
    "Slipe.Client.Gui.Memo",
    "Slipe.Client.Gui.ProgressBar",
    "Slipe.Client.Gui.RadioButton",
    "Slipe.Client.Gui.ScrollBar",
    "Slipe.Client.Gui.ScrollPane",
    "Slipe.Client.Gui.StandardGuiFont",
    "Slipe.Client.Gui.StaticImage",
    "Slipe.Client.Gui.Tab",
    "Slipe.Client.Gui.TabPanel",
    "Slipe.Client.Gui.VerticalAlign",
    "Slipe.Client.Gui.Window",
    "Slipe.Client.Helpers.EagerAttachableObject",
    "Slipe.Client.IO.ChatBox",
    "Slipe.Client.IO.CommandHandler",
    "Slipe.Client.IO.Cursor",
    "Slipe.Client.IO.Events.OnCharacterEventArgs",
    "Slipe.Client.IO.Events.OnChatMessageEventArgs",
    "Slipe.Client.IO.Events.OnClickEventArgs",
    "Slipe.Client.IO.Events.OnDebugMessageEventArgs",
    "Slipe.Client.IO.Events.OnDoubleClickEventArgs",
    "Slipe.Client.IO.Events.OnKeyEventArgs",
    "Slipe.Client.IO.Events.OnMoveEventArgs",
    "Slipe.Client.IO.Input",
    "Slipe.Client.IO.MtaConsole",
    "Slipe.Client.IO.MtaDebug",
    "Slipe.Client.Lights.Light",
    "Slipe.Client.Lights.SearchLight",
    "Slipe.Client.Markers.Marker",
    "Slipe.Client.Peds.Events.OnChokeEventArgs",
    "Slipe.Client.Peds.Events.OnConsoleEventArgs",
    "Slipe.Client.Peds.Events.OnDamageEventArgs",
    "Slipe.Client.Peds.Events.OnHeliKilledEventArgs",
    "Slipe.Client.Peds.Events.OnJoinEventArgs",
    "Slipe.Client.Peds.Events.OnNicknameChangedEventArgs",
    "Slipe.Client.Peds.Events.OnPickupHitEventArgs",
    "Slipe.Client.Peds.Events.OnPickupLeaveEventArgs",
    "Slipe.Client.Peds.Events.OnQuitEventArgs",
    "Slipe.Client.Peds.Events.OnRadioSwitchEventArgs",
    "Slipe.Client.Peds.Events.OnSpawnEventArgs",
    "Slipe.Client.Peds.Events.OnStealthKillEventArgs",
    "Slipe.Client.Peds.Events.OnStepEventArgs",
    "Slipe.Client.Peds.Events.OnStuntFinishEventArgs",
    "Slipe.Client.Peds.Events.OnStuntStartEventArgs",
    "Slipe.Client.Peds.Events.OnTargetEventArgs",
    "Slipe.Client.Peds.Events.OnVehicleEnterEventArgs",
    "Slipe.Client.Peds.Events.OnVehicleExitEventArgs",
    "Slipe.Client.Peds.Events.OnVoicePausedEventArgs",
    "Slipe.Client.Peds.Events.OnVoiceResumedEventArgs",
    "Slipe.Client.Peds.Events.OnVoiceStartEventArgs",
    "Slipe.Client.Peds.Events.OnVoiceStopEventArgs",
    "Slipe.Client.Peds.Events.OnWastedEventArgs",
    "Slipe.Client.Peds.Events.OnWeaponFireEventArgs",
    "Slipe.Client.Peds.Events.OnWeaponSwitchEventArgs",
    "Slipe.Client.Peds.LocalPlayer",
    "Slipe.Client.Peds.MoveState",
    "Slipe.Client.Peds.PedTask",
    "Slipe.Client.Peds.PedVoice",
    "Slipe.Client.Pickups.Pickup",
    "Slipe.Client.Radar.Blip",
    "Slipe.Client.Radar.RadarArea",
    "Slipe.Client.Rendering.BlendMode",
    "Slipe.Client.Rendering.CameraMode",
    "Slipe.Client.Rendering.Events.OnHudRenderEventArgs",
    "Slipe.Client.Rendering.Events.OnRenderEventArgs",
    "Slipe.Client.Rendering.GoggleEffects",
    "Slipe.Client.Rendering.Renderer",
    "Slipe.Client.Rendering.RenderTarget",
    "Slipe.Client.Rendering.Status",
    "Slipe.Client.Rendering.TestMode",
    "Slipe.Client.Resources.Resource",
    "Slipe.Client.Rpc.RegisteredRpc",
    "Slipe.Client.Rpc.RpcManager",
    "Slipe.Client.SightLines.SightLine",
    "Slipe.Client.SightLines.SightLineData",
    "Slipe.Client.Sounds.Events.OnBeatEventArgs",
    "Slipe.Client.Sounds.Events.OnDownloadFinishedEventArgs",
    "Slipe.Client.Sounds.Events.OnMetaChangedEventArgs",
    "Slipe.Client.Sounds.Events.OnStartEventArgs",
    "Slipe.Client.Sounds.Events.OnStopEventArgs",
    "Slipe.Client.Sounds.Events.OnStreamEventArgs",
    "Slipe.Client.Sounds.ExtraStations",
    "Slipe.Client.Sounds.SoundContainer",
    "Slipe.Client.Sounds.SoundEffects",
    "Slipe.Client.Sounds.SoundMeta",
    "Slipe.Client.Sounds.SoundProperties",
    "Slipe.Client.Sounds.WorldSound",
    "Slipe.Client.Vehicles.Boat",
    "Slipe.Client.Vehicles.BoatModel",
    "Slipe.Client.Vehicles.Component",
    "Slipe.Client.Vehicles.ComponentBase",
    "Slipe.Client.Vehicles.ComponentType",
    "Slipe.Client.Vehicles.Events.OnAttachEventArgs",
    "Slipe.Client.Vehicles.Events.OnCollisionEventArgs",
    "Slipe.Client.Vehicles.Events.OnDamageEventArgs",
    "Slipe.Client.Vehicles.Events.OnDetachEventArgs",
    "Slipe.Client.Vehicles.Events.OnEnterEventArgs",
    "Slipe.Client.Vehicles.Events.OnExitEventArgs",
    "Slipe.Client.Vehicles.Events.OnExplodeEventArgs",
    "Slipe.Client.Vehicles.Events.OnNitroStateChangeEventArgs",
    "Slipe.Client.Vehicles.Events.OnPedHitEventArgs",
    "Slipe.Client.Vehicles.Events.OnRespawnEventArgs",
    "Slipe.Client.Vehicles.Events.OnStartEnterEventArgs",
    "Slipe.Client.Vehicles.Events.OnStartExitEventArgs",
    "Slipe.Client.Vehicles.Helicopter",
    "Slipe.Client.Vehicles.HelicopterModel",
    "Slipe.Client.Vehicles.Plane",
    "Slipe.Client.Vehicles.PlaneModel",
    "Slipe.Client.Vehicles.Taxi",
    "Slipe.Client.Vehicles.TaxiModel",
    "Slipe.Client.Vehicles.Trailer",
    "Slipe.Client.Vehicles.TrailerModel",
    "Slipe.Client.Vehicles.Train",
    "Slipe.Client.Vehicles.TrainModel",
    "Slipe.Client.Vehicles.TurretedModel",
    "Slipe.Client.Vehicles.TurretedVehicle",
    "Slipe.Client.Vehicles.Vehicle",
    "Slipe.Client.Vehicles.VehicleModel.Bikes",
    "Slipe.Client.Vehicles.VehicleModel.Boats",
    "Slipe.Client.Vehicles.VehicleModel.Cars",
    "Slipe.Client.Vehicles.VehicleModel.Helicopters",
    "Slipe.Client.Vehicles.VehicleModel.Planes",
    "Slipe.Client.Vehicles.VehicleModel.Taxis",
    "Slipe.Client.Vehicles.VehicleModel.Trailers",
    "Slipe.Client.Vehicles.VehicleModel.Trains",
    "Slipe.Client.Vehicles.VehicleModel.TurretedVehicles",
    "Slipe.Client.Weapons.CustomWeapon",
    "Slipe.Client.Weapons.Events.OnCreatedEventArgs",
    "Slipe.Client.Weapons.Events.OnFireEventArgs",
    "Slipe.Client.Weapons.Projectile",
    "Slipe.Shared.CollisionShapes.CollisionCircle",
    "Slipe.Shared.CollisionShapes.CollisionCuboid",
    "Slipe.Shared.CollisionShapes.CollisionRectangle",
    "Slipe.Shared.CollisionShapes.CollisionSphere",
    "Slipe.Shared.CollisionShapes.CollisionTube",
    "Slipe.Shared.CollisionShapes.Events.OnHitEventArgs",
    "Slipe.Shared.CollisionShapes.Events.OnLeaveEventArgs",
    "Slipe.Shared.Cryptography.Base64",
    "Slipe.Shared.Cryptography.Bcrypt",
    "Slipe.Shared.Cryptography.Md5",
    "Slipe.Shared.Cryptography.Sha1",
    "Slipe.Shared.Cryptography.Sha224",
    "Slipe.Shared.Cryptography.Sha256",
    "Slipe.Shared.Cryptography.Sha384",
    "Slipe.Shared.Cryptography.Sha512",
    "Slipe.Shared.Cryptography.Tea",
    "Slipe.Shared.Elements.DefaultElementClassAttribute",
    "Slipe.Shared.Elements.ElementManager",
    "Slipe.Shared.Elements.ElementType",
    "Slipe.Shared.Elements.Events.OnClickedEventArgs",
    "Slipe.Shared.Elements.Events.OnCollisionShapeHitEventArgs",
    "Slipe.Shared.Elements.Events.OnCollisionShapeLeaveEventArgs",
    "Slipe.Shared.Elements.Events.OnDestroyEventArgs",
    "Slipe.Shared.Elements.Events.OnModelChangeEventArgs",
    "Slipe.Shared.Elements.Events.OnStartSyncEventArgs",
    "Slipe.Shared.Elements.Events.OnSteamInEventArgs",
    "Slipe.Shared.Elements.Events.OnSteamOutEventArgs",
    "Slipe.Shared.Elements.Events.OnStopSyncEventArgs",
    "Slipe.Shared.Exceptions.NullElementException",
    "Slipe.Shared.Exports.ExportAttribute",
    "Slipe.Shared.GameWorld.GameTime",
    "Slipe.Shared.GameWorld.HeatHaze",
    "Slipe.Shared.GameWorld.Weather",
    "Slipe.Shared.Helpers.EasingFunction",
    "Slipe.Shared.Helpers.NumericHelper",
    "Slipe.Shared.Helpers.SystemVersion",
    "Slipe.Shared.IO.KeyState",
    "Slipe.Shared.IO.MouseButton",
    "Slipe.Shared.IO.MouseButtonState",
    "Slipe.Shared.Markers.Events.OnHitEventArgs",
    "Slipe.Shared.Markers.Events.OnLeaveEventArgs",
    "Slipe.Shared.Markers.MarkerIcon",
    "Slipe.Shared.Markers.MarkerType",
    "Slipe.Shared.Peds.AnalogControl",
    "Slipe.Shared.Peds.Animation",
    "Slipe.Shared.Peds.ClothesModel",
    "Slipe.Shared.Peds.ClothesTexture",
    "Slipe.Shared.Peds.HudComponent",
    "Slipe.Shared.Peds.QuitType",
    "Slipe.Shared.Pickups.Events.OnHitArgs",
    "Slipe.Shared.Pickups.Events.OnLeaveArgs",
    "Slipe.Shared.Rpc.ElementRpc",
    "Slipe.Shared.Rpc.ElementRpc_1",
    "Slipe.Shared.Rpc.EmptyRpc",
    "Slipe.Shared.Utilities.Color",
    "Slipe.Shared.Vehicles.DriveType",
    "Slipe.Shared.Vehicles.EngineType",
    "Slipe.Shared.Vehicles.Handling",
    "Slipe.Shared.Vehicles.SharedSirens",
    "Slipe.Shared.Vehicles.Siren",
    "Slipe.Shared.Vehicles.VehicleLightType",
    "Slipe.Shared.Weapons.SharedWeaponModel",
    "Slipe.Shared.Weapons.WeaponProperty",
    "Slipe.Shared.Weapons.WeaponSkill",
    "Slipe.Shared.Weapons.WeaponState"
  })
end
