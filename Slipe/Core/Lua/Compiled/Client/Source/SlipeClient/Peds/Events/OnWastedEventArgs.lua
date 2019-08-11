-- Generated by CSharp.lua Compiler
local System = System
local SlipeSharedElements
System.import(function (out)
  SlipeSharedElements = Slipe.Shared.Elements
end)
System.namespace("Slipe.Client.Peds.Events", function (namespace)
  namespace.class("OnWastedEventArgs", function (namespace)
    local __ctor__
    __ctor__ = function (this, killer, damageType, bodyPart, stealth)
      this.Killer = SlipeSharedElements.ElementManager.getInstance():GetElement(killer, SlipeSharedElements.PhysicalElement)
      this.DamageType = System.cast(System.Int32, damageType)
      this.BodyPart = System.cast(System.Int32, bodyPart)
      this.IsStealthKill = System.cast(System.Boolean, stealth)
    end
    return {
      DamageType = 0,
      BodyPart = 0,
      IsStealthKill = false,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "BodyPart", 0x6, System.Int32 },
            { "DamageType", 0x6, System.Int32 },
            { "IsStealthKill", 0x6, System.Boolean },
            { "Killer", 0x6, out.Slipe.Shared.Elements.PhysicalElement }
          },
          methods = {
            { ".ctor", 0x404, nil, out.Slipe.MtaDefinitions.MtaElement, System.Object, System.Object, System.Object }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)
