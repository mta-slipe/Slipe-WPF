-- Generated by CSharp.lua Compiler
local System = System
System.namespace("Slipe.Shared.Exports", function (namespace)
  namespace.class("ExportAttribute", function (namespace)
    local __ctor__
    __ctor__ = function (this, name, isHttp)
      System.base(this).__ctor__(this)
      this.Name = name
      this.IsHttp = isHttp
    end
    return {
      __inherits__ = function (out)
        return {
          System.Attribute
        }
      end,
      IsHttp = false,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "IsHttp", 0x6, System.Boolean },
            { "Name", 0x6, System.String }
          },
          methods = {
            { ".ctor", 0x206, nil, System.String, System.Boolean }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)