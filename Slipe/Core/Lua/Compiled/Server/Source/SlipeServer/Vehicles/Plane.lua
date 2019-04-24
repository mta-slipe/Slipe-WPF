-- Generated by CSharp.lua Compiler
local System = System
local SlipeMtaDefinitions
local SlipeServerVehicles
System.import(function (out)
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeServerVehicles = Slipe.Server.Vehicles
end)
System.namespace("Slipe.Server.Vehicles", function (namespace)
  -- <summary>
  -- Planes as a special type of vehicle
  -- </summary>
  namespace.class("Plane", function (namespace)
    local getLandingGearDown, setLandingGearDown, __ctor1__, __ctor2__, __ctor3__
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
    getLandingGearDown = function (this)
      return SlipeMtaDefinitions.MtaShared.GetVehicleLandingGearDown(this.element)
    end
    setLandingGearDown = function (this, value)
      SlipeMtaDefinitions.MtaShared.SetVehicleLandingGearDown(this.element, value)
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Server.Vehicles.Vehicle
        }
      end,
      getLandingGearDown = getLandingGearDown,
      setLandingGearDown = setLandingGearDown,
      __ctor__ = {
        __ctor1__,
        __ctor2__,
        __ctor3__
      }
    }
  end)

  -- <summary>
  -- Represents models that represent planes
  -- </summary>
  namespace.class("PlaneModel", function (namespace)
    local getAndromada, getAt400, getBeagle, getCropduster, getDodo, getHydra, getNevada, getRustler, 
    getShamal, getSkimmer, getStuntplane, getRcBaron, class, __ctor__
    __ctor__ = function (this, id)
      SlipeServerVehicles.BaseVehicleModel.__ctor__(this, id)
    end
    getAndromada = function ()
      return class(592)
    end
    getAt400 = function ()
      return class(577)
    end
    getBeagle = function ()
      return class(511)
    end
    getCropduster = function ()
      return class(512)
    end
    getDodo = function ()
      return class(593)
    end
    getHydra = function ()
      return class(520)
    end
    getNevada = function ()
      return class(553)
    end
    getRustler = function ()
      return class(476)
    end
    getShamal = function ()
      return class(519)
    end
    getSkimmer = function ()
      return class(460)
    end
    getStuntplane = function ()
      return class(513)
    end
    getRcBaron = function ()
      return class(464)
    end
    class = {
      __inherits__ = function (out)
        return {
          out.Slipe.Server.Vehicles.BaseVehicleModel
        }
      end,
      getAndromada = getAndromada,
      getAt400 = getAt400,
      getBeagle = getBeagle,
      getCropduster = getCropduster,
      getDodo = getDodo,
      getHydra = getHydra,
      getNevada = getNevada,
      getRustler = getRustler,
      getShamal = getShamal,
      getSkimmer = getSkimmer,
      getStuntplane = getStuntplane,
      getRcBaron = getRcBaron,
      __ctor__ = __ctor__
    }
    return class
  end)
end)
