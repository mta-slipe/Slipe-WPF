-- Generated by CSharp.lua Compiler
local System = System
local SlipeMtaDefinitions
local SlipeSharedVehicles
System.import(function (out)
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeSharedVehicles = Slipe.Shared.Vehicles
end)
System.namespace("Slipe.Server.Vehicles", function (namespace)
  namespace.class("ModelHandling", function (namespace)
    local UpdateFromGame, UpdateToGame, __ctor__
    -- <summary>
    -- Builds vehicle handling from a vehicle model
    -- </summary>
    __ctor__ = function (this, targetModel)
      SlipeSharedVehicles.Handling.__ctor__[1](this)
      this.model = targetModel
    end
    UpdateFromGame = function (this)
      this:BuildFromTable(SlipeMtaDefinitions.MtaShared.GetDictionaryFromTable(SlipeMtaDefinitions.MtaServer.GetModelHandling(this.model), "System.String", "System.Dynamic"))
    end
    UpdateToGame = function (this, key, value)
      SlipeMtaDefinitions.MtaServer.SetModelHandling(this.model, key, value)
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Shared.Vehicles.Handling
        }
      end,
      model = 0,
      UpdateFromGame = UpdateFromGame,
      UpdateToGame = UpdateToGame,
      __ctor__ = __ctor__
    }
  end)
end)
