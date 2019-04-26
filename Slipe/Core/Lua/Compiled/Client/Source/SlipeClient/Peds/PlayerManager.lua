-- Generated by CSharp.lua Compiler
local System = System
System.namespace("Slipe.Client.Peds", function (namespace)
  -- <summary>
  -- Manages player events
  -- </summary>
  namespace.class("PlayerManager", function (namespace)
    local instance, getInstance, HandleJoin, class, __ctor__
    __ctor__ = function (this)
      instance = this
    end
    getInstance = function ()
      return instance or class()
    end
    HandleJoin = function (this, player)
      local default = this.OnPlayerJoin
      if default ~= nil then
        default(player)
      end
    end
    class = {
      getInstance = getInstance,
      HandleJoin = HandleJoin,
      __ctor__ = __ctor__
    }
    return class
  end)
end)