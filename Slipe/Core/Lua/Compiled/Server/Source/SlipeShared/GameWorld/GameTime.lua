-- Generated by CSharp.lua Compiler
local System = System
System.namespace("Slipe.Shared.GameWorld", function (namespace)
  -- <summary>
  -- Class representing a game time, contrary to real time
  -- </summary>
  namespace.struct("GameTime", function (namespace)
    local __ctor1__, __ctor2__, __ctor3__
    __ctor1__ = function (this)
    end
    -- <summary>
    -- Create a game time from hours and minutes
    -- </summary>
    __ctor2__ = function (this, hour, minute)
      this.Hour = math.Clamp(hour, 0, 23)
      this.Minute = math.Clamp(minute, 0, 59)
    end
    -- <summary>
    -- Create a game time from a datetime
    -- </summary>
    __ctor3__ = function (this, time)
      this.Hour = time:getHour()
      this.Minute = time:getMinute()
    end
    return {
      Hour = 0,
      Minute = 0,
      __ctor__ = {
        __ctor1__,
        __ctor2__,
        __ctor3__
      }
    }
  end)
end)
