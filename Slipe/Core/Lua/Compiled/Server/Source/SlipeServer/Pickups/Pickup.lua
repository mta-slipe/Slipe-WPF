-- Generated by CSharp.lua Compiler
local System = System
local SlipeMtaDefinitions
local SlipeSharedPickups
System.import(function (out)
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeSharedPickups = Slipe.Shared.Pickups
end)
System.namespace("Slipe.Server.Pickups", function (namespace)
  -- <summary>
  -- Class for a GTA pickup
  -- </summary>
  namespace.class("Pickup", function (namespace)
    local getRespawnInterval, setRespawnInterval, getIsSpawned, Use, class, __ctor1__, __ctor2__, __ctor3__, 
    __ctor4__, __ctor5__
    __ctor1__ = function (this, element)
      SlipeSharedPickups.SharedPickup.__ctor__(this, element)
    end
    -- <summary>
    -- Creates a pickup from all CreatePickup variables
    -- </summary>
    __ctor2__ = function (this, position, type, amount, respawnTime, ammo)
      __ctor1__(this, SlipeMtaDefinitions.MtaShared.CreatePickup(position.X, position.Y, position.Z, type, amount, respawnTime, ammo))
    end
    -- <summary>
    -- Creates a weapon pickup
    -- </summary>
    __ctor3__ = function (this, position, weapon, ammo, respawnTime)
      __ctor2__(this, position:__clone__(), 2 --[[PickupType.Weapon]], weapon.ID, respawnTime, ammo)
    end
    -- <summary>
    -- Creates a custom model pickup
    -- </summary>
    __ctor4__ = function (this, position, model, respawnTime)
      __ctor2__(this, position:__clone__(), 3 --[[PickupType.Custom]], model, respawnTime, 50)
    end
    -- <summary>
    -- Creates a model pickup from any model ID
    -- </summary>
    __ctor5__ = function (this, position, model)
      __ctor2__(this, position:__clone__(), 3 --[[PickupType.Custom]], model, 30000, 50)
    end
    getRespawnInterval = function (this)
      return SlipeMtaDefinitions.MtaServer.GetPickupRespawnInterval(this.element)
    end
    setRespawnInterval = function (this, value)
      SlipeMtaDefinitions.MtaServer.SetPickupRespawnInterval(this.element, value)
    end
    getIsSpawned = function (this)
      return SlipeMtaDefinitions.MtaServer.IsPickupSpawned(this.element)
    end
    -- <summary>
    -- Have a player use this pickup
    -- </summary>
    Use = function (this, player)
      return SlipeMtaDefinitions.MtaShared.UsePickup(this.element, player:getMTAElement())
    end
    class = {
      __inherits__ = function (out)
        return {
          out.Slipe.Shared.Pickups.SharedPickup
        }
      end,
      getRespawnInterval = getRespawnInterval,
      setRespawnInterval = setRespawnInterval,
      getIsSpawned = getIsSpawned,
      Use = Use,
      __ctor__ = {
        __ctor1__,
        __ctor2__,
        __ctor3__,
        __ctor4__,
        __ctor5__
      },
      __metadata__ = function (out)
        return {
          properties = {
            { "IsSpawned", 0x206, System.Boolean, getIsSpawned },
            { "RespawnInterval", 0x106, System.Int32, getRespawnInterval, setRespawnInterval }
          },
          methods = {
            { ".ctor", 0x106, __ctor1__, out.Slipe.MtaDefinitions.MtaElement },
            { ".ctor", 0x506, __ctor2__, System.Numerics.Vector3, System.Int32, System.Int32, System.Int32, System.Int32 },
            { ".ctor", 0x406, __ctor3__, System.Numerics.Vector3, out.Slipe.Shared.Weapons.SharedWeaponModel, System.Int32, System.Int32 },
            { ".ctor", 0x306, __ctor4__, System.Numerics.Vector3, System.Int32, System.Int32 },
            { ".ctor", 0x206, __ctor5__, System.Numerics.Vector3, System.Int32 },
            { "Use", 0x186, Use, out.Slipe.Server.Peds.Player, System.Boolean }
          },
          events = {
            { "OnSpawn", 0x6, System.Delegate(class, out.Slipe.Server.Pickups.Events.OnSpawnEventArgs, System.Void) },
            { "OnUse", 0x6, System.Delegate(class, out.Slipe.Server.Pickups.Events.OnUseEventArgs, System.Void) }
          },
          class = { 0x6, System.new(out.Slipe.Shared.Elements.DefaultElementClassAttribute, 2, 5 --[[ElementType.Pickup]]) }
        }
      end
    }
    return class
  end)
end)
