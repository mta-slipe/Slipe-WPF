-- Generated by CSharp.lua Compiler
local System = System
local SlipeMtaDefinitions
System.import(function (out)
  SlipeMtaDefinitions = Slipe.MtaDefinitions
end)
System.namespace("Slipe.Client.GameWorld", function (namespace)
  namespace.class("Fire", function (namespace)
    local Create, Extinguish
    Create = function (position, size)
      return SlipeMtaDefinitions.MtaClient.CreateFire(position.X, position.Y, position.Z, size)
    end
    Extinguish = function (position, radius)
      return SlipeMtaDefinitions.MtaClient.ExtinguishFire(position.X, position.Y, position.Z, radius)
    end
    return {
      Create = Create,
      Extinguish = Extinguish,
      __metadata__ = function (out)
        return {
          methods = {
            { "Create", 0x28E, Create, System.Numerics.Vector3, System.Single, System.Boolean },
            { "Extinguish", 0x28E, Extinguish, System.Numerics.Vector3, System.Single, System.Boolean }
          },
          class = { 0xE }
        }
      end
    }
  end)
end)