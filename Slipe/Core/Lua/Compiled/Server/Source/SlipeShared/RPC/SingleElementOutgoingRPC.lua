-- Generated by CSharp.lua Compiler
local System = System
System.namespace("Slipe.Shared.Rpc", function (namespace)
  namespace.class("SingleElementOutgoingRpc", function (namespace)
    local __ctor__
    __ctor__ = function (this, element)
      this.element = element
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Shared.Rpc.IRpc
        }
      end,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          fields = {
            { "element", 0x6, out.Slipe.Shared.Elements.Element }
          },
          methods = {
            { ".ctor", 0x106, nil, out.Slipe.Shared.Elements.Element }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)
