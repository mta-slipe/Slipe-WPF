-- Generated by CSharp.lua Compiler
local System = System
local SlipeMtaDefinitions
System.import(function (out)
  SlipeMtaDefinitions = Slipe.MtaDefinitions
end)
System.namespace("Slipe.Client.GameClient", function (namespace)
  namespace.class("Engine", function (namespace)
    local getInstance, GetModelIDFromName, GetModelNameFromId, GetModelLODDistance, SetModelLODDistance, GetModelTextureNames, GetModelTextureNames1, GetVisibleTextureNames, 
    SetAsynchronousLoading, ReplaceAnimation, class
    getInstance = function ()
      return class.instance or class()
    end
    GetModelIDFromName = function (this, name)
      return SlipeMtaDefinitions.MtaClient.EngineGetModelIDFromName(name)
    end
    GetModelNameFromId = function (this, id)
      return SlipeMtaDefinitions.MtaClient.EngineGetModelNameFromID(id)
    end
    GetModelLODDistance = function (this, model)
      return SlipeMtaDefinitions.MtaClient.EngineGetModelLODDistance(model)
    end
    SetModelLODDistance = function (this, model, distance)
      return SlipeMtaDefinitions.MtaClient.EngineSetModelLODDistance(model, distance)
    end
    GetModelTextureNames = function (this, model)
      local table = SlipeMtaDefinitions.MtaClient.EngineGetModelTextureNames(model:ToString())

      return SlipeMtaDefinitions.MtaShared.GetArrayFromTable(table, "System.String", T)
    end
    GetModelTextureNames1 = function (this, model)
      local table = SlipeMtaDefinitions.MtaClient.EngineGetModelTextureNames(model)

      return SlipeMtaDefinitions.MtaShared.GetArrayFromTable(table, "System.String", T)
    end
    GetVisibleTextureNames = function (this, nameFilter, modelId)
      local table = SlipeMtaDefinitions.MtaClient.EngineGetVisibleTextureNames(nameFilter, modelId)
      return SlipeMtaDefinitions.MtaShared.GetArrayFromTable(table, "System.String", T)
    end
    SetAsynchronousLoading = function (this, value, forced)
      return SlipeMtaDefinitions.MtaClient.EngineSetAsynchronousLoading(value, forced)
    end
    ReplaceAnimation = function (this, ped, internalBlock, internalAnim, customBlock, customAnim)
      return SlipeMtaDefinitions.MtaClient.EngineReplaceAnimation(ped:getMTAElement(), internalBlock, internalAnim, customBlock, customAnim)
    end
    class = {
      getInstance = getInstance,
      GetModelIDFromName = GetModelIDFromName,
      GetModelNameFromId = GetModelNameFromId,
      GetModelLODDistance = GetModelLODDistance,
      SetModelLODDistance = SetModelLODDistance,
      GetModelTextureNames = GetModelTextureNames,
      GetModelTextureNames1 = GetModelTextureNames1,
      GetVisibleTextureNames = GetVisibleTextureNames,
      SetAsynchronousLoading = SetAsynchronousLoading,
      ReplaceAnimation = ReplaceAnimation
    }
    return class
  end)
end)
