-- Generated by CSharp.lua Compiler
local System = System
local SlipeServerVehicles
System.import(function (out)
  SlipeServerVehicles = Slipe.Server.Vehicles
end)
System.namespace("Slipe.Server.Vehicles", function (namespace)
  -- <summary>
  -- Represents boats
  -- </summary>
  namespace.class("Boat", function (namespace)
    local __ctor1__, __ctor2__, __ctor3__
    -- <summary>
    -- Create a plane from a model at a position
    -- </summary>
    __ctor1__ = function (this, model, position)
      SlipeServerVehicles.Vehicle.__ctor__[1](this, model, position:__clone__())
    end
    -- <summary>
    -- Create a plane using all createVehicle arguments
    -- </summary>
    __ctor2__ = function (this, model, position, rotation, numberplate, variant1, variant2)
      SlipeServerVehicles.Vehicle.__ctor__[2](this, model, position:__clone__(), rotation:__clone__(), numberplate, variant1, variant2)
    end
    __ctor3__ = function (this, element)
      SlipeServerVehicles.Vehicle.__ctor__[3](this, element)
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Server.Vehicles.Vehicle
        }
      end,
      __ctor__ = {
        __ctor1__,
        __ctor2__,
        __ctor3__
      }
    }
  end)

  -- <summary>
  -- Represents models that represent boats
  -- </summary>
  namespace.class("BoatModel", function (namespace)
    local getCoastguard, getDinghy, getJetmax, getLaunch, getMarquis, getPredator, getReefer, getSpeeder, 
    getSqualo, getTropic, class, __ctor__
    __ctor__ = function (this, id)
      SlipeServerVehicles.BaseVehicleModel.__ctor__(this, id)
    end
    getCoastguard = function ()
      return class(472)
    end
    getDinghy = function ()
      return class(473)
    end
    getJetmax = function ()
      return class(493)
    end
    getLaunch = function ()
      return class(595)
    end
    getMarquis = function ()
      return class(484)
    end
    getPredator = function ()
      return class(430)
    end
    getReefer = function ()
      return class(453)
    end
    getSpeeder = function ()
      return class(452)
    end
    getSqualo = function ()
      return class(446)
    end
    getTropic = function ()
      return class(454)
    end
    class = {
      __inherits__ = function (out)
        return {
          out.Slipe.Server.Vehicles.BaseVehicleModel
        }
      end,
      getCoastguard = getCoastguard,
      getDinghy = getDinghy,
      getJetmax = getJetmax,
      getLaunch = getLaunch,
      getMarquis = getMarquis,
      getPredator = getPredator,
      getReefer = getReefer,
      getSpeeder = getSpeeder,
      getSqualo = getSqualo,
      getTropic = getTropic,
      __ctor__ = __ctor__
    }
    return class
  end)
end)
