-- Generated by CSharp.lua Compiler
local System = System
local SlipeMtaDefinitions
local SlipeSharedGameWorld
local SystemNumerics
System.import(function (out)
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeSharedGameWorld = Slipe.Shared.GameWorld
  SystemNumerics = System.Numerics
end)
System.namespace("Slipe.Client.GameWorld", function (namespace)
  -- <summary>
  -- Class wrapping a garage as seen in singleplayer
  -- </summary>
  namespace.class("Garage", function (namespace)
    local getBoundingBox, getPosition, getSize, __ctor__
    __ctor__ = function (this, garage)
      SlipeSharedGameWorld.SharedGarage.__ctor__(this, garage)
    end
    getBoundingBox = function (this)
      local result = SlipeMtaDefinitions.MtaClient.GetGarageBoundingBox(this._garageID)
      return SystemNumerics.Vector4(result[1], result[2], result[3], result[4])
    end
    getPosition = function (this)
      local result = SlipeMtaDefinitions.MtaClient.GetGaragePosition(this._garageID)
      return SystemNumerics.Vector3(result[1], result[2], result[3])
    end
    getSize = function (this)
      local result = SlipeMtaDefinitions.MtaClient.GetGarageSize(this._garageID)
      return SystemNumerics.Vector3(result[1], result[2], result[3])
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Shared.GameWorld.SharedGarage
        }
      end,
      getBoundingBox = getBoundingBox,
      getPosition = getPosition,
      getSize = getSize,
      __ctor__ = __ctor__
    }
  end)
end)