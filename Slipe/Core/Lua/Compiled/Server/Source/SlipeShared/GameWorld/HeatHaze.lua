-- Generated by CSharp.lua Compiler
local System = System
local SystemNumerics
System.import(function (out)
  SystemNumerics = System.Numerics
end)
System.namespace("Slipe.Shared.GameWorld", function (namespace)
  -- <summary>
  -- Struct to define different heat haze properties in the GTA world
  -- </summary>
  namespace.struct("HeatHaze", function (namespace)
    local FromRaw, class, __ctor1__, __ctor2__, __ctor3__
    __ctor1__ = function (this)
      this.ScanSize = System.default(SystemNumerics.Vector2)
      this.RenderSize = System.default(SystemNumerics.Vector2)
    end
    -- <summary>
    -- Create a heat haze struct
    -- </summary>
    __ctor2__ = function (this, intensity, randomShift, speedMin, speedMax, scanSize, renderSize, showInside)
      this.Intensity = intensity
      this.RandomShift = randomShift
      this.SpeedMin = speedMin
      this.SpeedMax = speedMax
      this.ScanSize = scanSize:__clone__()
      this.RenderSize = renderSize:__clone__()
      this.ShowInside = showInside
    end
    -- <summary>
    -- Heat haze with optional paramters as default
    -- </summary>
    __ctor3__ = function (this, intensity, randomShift, speedMin, speedMax)
      __ctor2__(this, intensity, randomShift, speedMin, speedMax, SystemNumerics.Vector2(75, 80), SystemNumerics.Vector2(80, 85), false)
    end
    -- <summary>
    -- Creates a heat haze from the raw MTA function output
    -- </summary>
    FromRaw = function (raw)
      return System.new(class, 2, raw[1], raw[2], raw[3], raw[4], SystemNumerics.Vector2(raw[5], raw[6]), SystemNumerics.Vector2(raw[7], raw:getRest()[1]), raw:getRest()[2])
    end
    class = {
      Intensity = 0,
      RandomShift = 0,
      SpeedMin = 0,
      SpeedMax = 0,
      ShowInside = false,
      FromRaw = FromRaw,
      __ctor__ = {
        __ctor1__,
        __ctor2__,
        __ctor3__
      }
    }
    return class
  end)
end)
