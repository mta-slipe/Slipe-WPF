-- Generated by CSharp.lua Compiler
local System = System
System.namespace("Slipe.Client.Sounds.Events", function (namespace)
  namespace.class("OnStartEventArgs", function (namespace)
    local __ctor__
    __ctor__ = function (this, r)
      this.Reason = System.cast(System.String, r)
    end
    return {
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "Reason", 0x6, System.String }
          },
          methods = {
            { ".ctor", 0x104, nil, System.Object }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)
