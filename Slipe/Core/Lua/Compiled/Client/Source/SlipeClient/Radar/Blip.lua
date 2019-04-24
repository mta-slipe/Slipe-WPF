-- Generated by CSharp.lua Compiler
local System = System
local SlipeMtaDefinitions
local SlipeSharedRadar
local SlipeSharedUtilities
System.import(function (out)
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeSharedRadar = Slipe.Shared.Radar
  SlipeSharedUtilities = Slipe.Shared.Utilities
end)
System.namespace("Slipe.Client.Radar", function (namespace)
  -- <summary>
  -- Class representing a minimap blip
  -- </summary>
  namespace.class("Blip", function (namespace)
    local __ctor1__, __ctor2__, __ctor3__, __ctor4__, __ctor5__
    __ctor1__ = function (this, element)
      SlipeSharedRadar.SharedBlip.__ctor__(this, element)
    end
    -- <summary>
    -- Creates a blip from all the createBlip parameters
    -- </summary>
    __ctor2__ = function (this, vector, icon, color, size, ordering, visibleDistance)
      __ctor1__(this, SlipeMtaDefinitions.MtaClient.CreateBlip(vector.X, vector.Y, vector.Z, icon, size, color:getR(), color:getG(), color:getB(), color:getA(), ordering, visibleDistance))
    end
    -- <summary>
    -- Creates a standard red blip
    -- </summary>
    __ctor3__ = function (this, vector)
      __ctor2__(this, vector:__clone__(), 0, SlipeSharedUtilities.Color.getRed(), 2, 0, 16383)
    end
    -- <summary>
    -- Creates a blip attached to an MTA element
    -- </summary>
    __ctor4__ = function (this, physicalElement, icon, color, size, ordering, visibleDistance)
      __ctor1__(this, SlipeMtaDefinitions.MtaClient.CreateBlipAttachedTo(physicalElement:getMTAElement(), icon, size, color:getR(), color:getG(), color:getB(), color:getA(), ordering, visibleDistance))
    end
    -- <summary>
    -- Creates a standard red blip attached to an  MTA element
    -- </summary>
    __ctor5__ = function (this, physicalElement)
      __ctor4__(this, physicalElement, 0, SlipeSharedUtilities.Color.getRed(), 2, 0, 16383)
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Shared.Radar.SharedBlip
        }
      end,
      __ctor__ = {
        __ctor1__,
        __ctor2__,
        __ctor3__,
        __ctor4__,
        __ctor5__
      }
    }
  end)
end)
