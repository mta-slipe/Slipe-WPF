-- Generated by CSharp.lua Compiler
local System = System
local SlipeClientGame
local SlipeClientIO
local SlipeMtaDefinitions
local SlipeSharedHelpers
System.import(function (out)
  SlipeClientGame = Slipe.Client.Game
  SlipeClientIO = Slipe.Client.IO
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeSharedHelpers = Slipe.Shared.Helpers
end)
System.namespace("Slipe.Client.Game", function (namespace)
  -- <summary>
  -- Static class that handles calls to functions related to the client
  -- </summary>
  namespace.class("GameClient", function (namespace)
    local getEngine, console, getConsole, debug, getDebug, getIsVoiceEnabled, getGuiInputEnabled, setGuiInputEnabled, 
    getInputMode, setInputMode, getIsMainMenuActive, getIsMtaWindowActive, getIsTransferBoxActive, getTickCount, version, getVersion, 
    getLocalization, getIsTrayNotificationEnabled, CreateTrayNotification, SetClipboard, SetWindowFlashing
    getEngine = function ()
      return SlipeClientGame.Engine.getInstance()
    end
    getConsole = function ()
      if console == nil then
        console = SlipeClientIO.MtaConsole()
      end
      return console
    end
    getDebug = function ()
      if debug == nil then
        debug = SlipeClientIO.MtaDebug()
      end
      return debug
    end
    getIsVoiceEnabled = function ()
      return SlipeMtaDefinitions.MtaShared.IsVoiceEnabled()
    end
    getGuiInputEnabled = function ()
      return SlipeMtaDefinitions.MtaClient.GuiGetInputEnabled()
    end
    setGuiInputEnabled = function (value)
      SlipeMtaDefinitions.MtaClient.GuiSetInputEnabled(value)
    end
    getInputMode = function ()
      return System.cast(System.Int32, System.Enum.Parse(System.typeof(SlipeClientGame.InputMode), SlipeMtaDefinitions.MtaClient.GuiGetInputMode(), true))
    end
    setInputMode = function (value)
      SlipeMtaDefinitions.MtaClient.GuiSetInputMode(value:ToEnumString(SlipeClientGame.InputMode):ToLower())
    end
    getIsMainMenuActive = function ()
      return SlipeMtaDefinitions.MtaClient.IsMainMenuActive()
    end
    getIsMtaWindowActive = function ()
      return SlipeMtaDefinitions.MtaClient.IsMTAWindowActive()
    end
    getIsTransferBoxActive = function ()
      return SlipeMtaDefinitions.MtaClient.IsTransferBoxActive()
    end
    getTickCount = function ()
      return SlipeMtaDefinitions.MtaShared.GetTickCount()
    end
    getVersion = function ()
      if version == nil then
        version = SlipeSharedHelpers.SystemVersion()
      end
      return version
    end
    getLocalization = function ()
      local d = SlipeMtaDefinitions.MtaShared.GetDictionaryFromTable(SlipeMtaDefinitions.MtaClient.GetLocalization(), "System.String", "System.String")
      return System.tuple(d:get("code"), d:get("name"))
    end
    getIsTrayNotificationEnabled = function ()
      return SlipeMtaDefinitions.MtaClient.IsTrayNotificationEnabled()
    end
    -- <summary>
    -- Create a windows tray notification
    -- </summary>
    CreateTrayNotification = function (text, trayIcon, useSound)
      SlipeMtaDefinitions.MtaClient.CreateTrayNotification(text, trayIcon:ToEnumString(SlipeClientGame.TrayIconType):ToLower(), useSound)
    end
    -- <summary>
    -- Set the client's clipboard text
    -- </summary>
    SetClipboard = function (text)
      return SlipeMtaDefinitions.MtaClient.SetClipboard(text)
    end
    -- <summary>
    -- Set the client's window flashing
    -- </summary>
    SetWindowFlashing = function (shouldFlash, count)
      return SlipeMtaDefinitions.MtaClient.SetWindowFlashing(shouldFlash, count)
    end
    return {
      getEngine = getEngine,
      getConsole = getConsole,
      getDebug = getDebug,
      getIsVoiceEnabled = getIsVoiceEnabled,
      getGuiInputEnabled = getGuiInputEnabled,
      setGuiInputEnabled = setGuiInputEnabled,
      getInputMode = getInputMode,
      setInputMode = setInputMode,
      getIsMainMenuActive = getIsMainMenuActive,
      getIsMtaWindowActive = getIsMtaWindowActive,
      getIsTransferBoxActive = getIsTransferBoxActive,
      getTickCount = getTickCount,
      getVersion = getVersion,
      getLocalization = getLocalization,
      getIsTrayNotificationEnabled = getIsTrayNotificationEnabled,
      CreateTrayNotification = CreateTrayNotification,
      SetClipboard = SetClipboard,
      SetWindowFlashing = SetWindowFlashing,
      __metadata__ = function (out)
        return {
          properties = {
            { "Console", 0x20E, out.Slipe.Client.IO.MtaConsole, getConsole },
            { "Debug", 0x20E, out.Slipe.Client.IO.MtaDebug, getDebug },
            { "Engine", 0x20E, out.Slipe.Client.Game.Engine, getEngine },
            { "GuiInputEnabled", 0x10E, System.Boolean, getGuiInputEnabled, setGuiInputEnabled },
            { "InputMode", 0x10E, System.Int32, getInputMode, setInputMode },
            { "IsMainMenuActive", 0x20E, System.Boolean, getIsMainMenuActive },
            { "IsMtaWindowActive", 0x20E, System.Boolean, getIsMtaWindowActive },
            { "IsTransferBoxActive", 0x20E, System.Boolean, getIsTransferBoxActive },
            { "IsTrayNotificationEnabled", 0x20E, System.Boolean, getIsTrayNotificationEnabled },
            { "IsVoiceEnabled", 0x20E, System.Boolean, getIsVoiceEnabled },
            { "Localization", 0x20E, System.Tuple, getLocalization },
            { "TickCount", 0x20E, System.Int32, getTickCount },
            { "Version", 0x20E, out.Slipe.Shared.Helpers.SystemVersion, getVersion }
          },
          fields = {
            { "console", 0x9, out.Slipe.Client.IO.MtaConsole },
            { "debug", 0x9, out.Slipe.Client.IO.MtaDebug },
            { "version", 0x9, out.Slipe.Shared.Helpers.SystemVersion }
          },
          methods = {
            { "CreateTrayNotification", 0x30E, CreateTrayNotification, System.String, System.Int32, System.Boolean },
            { "SetClipboard", 0x18E, SetClipboard, System.String, System.Boolean },
            { "SetWindowFlashing", 0x28E, SetWindowFlashing, System.Boolean, System.Int32, System.Boolean }
          },
          events = {
            { "OnFileDownloadComplete", 0xE, System.Delegate(out.Slipe.Client.Elements.ResourceRootElement, out.Slipe.Client.Game.Events.OnFileDownloadCompleteEventArgs, System.Void) },
            { "OnStart", 0xE, System.Delegate(out.Slipe.Client.Elements.ResourceRootElement, out.Slipe.Client.Game.Events.OnStartEventArgs, System.Void) },
            { "OnStop", 0xE, System.Delegate(out.Slipe.Client.Elements.ResourceRootElement, out.Slipe.Client.Game.Events.OnStopEventArgs, System.Void) },
            { "OnUpdate", 0xE, System.Delegate(out.Slipe.Client.Elements.RootElement, out.Slipe.Client.Game.Events.OnUpdateEventArgs, System.Void) },
            { "OnMinimize", 0xE, System.Delegate(out.Slipe.Client.Elements.RootElement, out.Slipe.Client.Game.Events.OnMinimizeEventArgs, System.Void) },
            { "OnNetworkInteruption", 0xE, System.Delegate(out.Slipe.Client.Elements.RootElement, out.Slipe.Client.Game.Events.OnNetworkInteruptionEventArgs, System.Void) },
            { "OnRestore", 0xE, System.Delegate(out.Slipe.Client.Elements.RootElement, out.Slipe.Client.Game.Events.OnRestoreEventArgs, System.Void) }
          },
          class = { 0xE }
        }
      end
    }
  end)
end)