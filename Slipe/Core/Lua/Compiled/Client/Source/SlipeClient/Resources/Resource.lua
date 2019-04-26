-- Generated by CSharp.lua Compiler
local System = System
local SlipeClientResources
local SlipeMtaDefinitions
local SlipeSharedElements
local SlipeSharedResources
System.import(function (out)
  SlipeClientResources = Slipe.Client.Resources
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeSharedElements = Slipe.Shared.Elements
  SlipeSharedResources = Slipe.Shared.Resources
end)
System.namespace("Slipe.Client.Resources", function (namespace)
  -- <summary>
  -- Represents an MTA resource
  -- </summary>
  namespace.class("Resource", function (namespace)
    local thisResource, getThis, getGuiRoot, __ctor__
    __ctor__ = function (this, resource)
      SlipeSharedResources.SharedResource.__ctor__(this, resource)
      SlipeClientResources.ResourceManager.getInstance():RegisterResource(this)
    end
    getThis = function ()
      if thisResource == nil then
        thisResource = SlipeClientResources.ResourceManager.getInstance():GetResource(SlipeMtaDefinitions.MtaShared.GetThisResource())
      end
      return thisResource
    end
    getGuiRoot = function (this)
      return SlipeSharedElements.ElementManager.getInstance():GetElement(SlipeMtaDefinitions.MtaClient.GetResourceGUIElement(this.MTAResource))
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Shared.Resources.SharedResource
        }
      end,
      getThis = getThis,
      getGuiRoot = getGuiRoot,
      __ctor__ = __ctor__
    }
  end)
end)