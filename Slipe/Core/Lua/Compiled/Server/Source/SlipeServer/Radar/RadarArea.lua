-- Generated by CSharp.lua Compiler
local System = System
local SlipeSharedRadar
System.import(function (out)
  SlipeSharedRadar = Slipe.Shared.Radar
end)
System.namespace("Slipe.Server.Radar", function (namespace)
  -- <summary>
  -- Class representing radar areas
  -- </summary>
  namespace.class("RadarArea", function (namespace)
    local __ctor1__, __ctor2__, __ctor3__
    __ctor1__ = function (this, element)
      SlipeSharedRadar.SharedRadarArea.__ctor__[1](this, element)
    end
    -- <summary>
    -- Create a radar area from all the createRadarArea parameters
    -- </summary>
    __ctor2__ = function (this, position, dimensions, color, visibleTo)
      SlipeSharedRadar.SharedRadarArea.__ctor__[2](this, position:__clone__(), dimensions:__clone__(), color, visibleTo)
    end
    -- <summary>
    -- Create a radar area only from dimensions
    -- </summary>
    __ctor3__ = function (this, position, dimension)
      SlipeSharedRadar.SharedRadarArea.__ctor__[3](this, position:__clone__(), dimension:__clone__())
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Shared.Radar.SharedRadarArea
        }
      end,
      __ctor__ = {
        __ctor1__,
        __ctor2__,
        __ctor3__
      }
    }
  end)
end)