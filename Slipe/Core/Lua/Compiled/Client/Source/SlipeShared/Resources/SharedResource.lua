-- Generated by CSharp.lua Compiler
local System = System
local SlipeExports
local SlipeMtaDefinitions
local SlipeSharedElements
local SystemXml
System.import(function (out)
  SlipeExports = Slipe.Exports
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeSharedElements = Slipe.Shared.Elements
  SystemXml = System.Xml
end)
System.namespace("Slipe.Shared.Resources", function (namespace)
  -- <summary>
  -- Represents an MTA resource
  -- </summary>
  namespace.class("SharedResource", function (namespace)
    local getName, getDynamicRoot, getRoot, getState, getExportedFunctions, Config, FromName, Invoke, 
    class, __ctor__
    -- <summary>
    -- Create a resource from an MTA resource element
    -- </summary>
    __ctor__ = function (this, resource)
      this.MTAResource = resource
    end
    getName = function (this)
      return SlipeMtaDefinitions.MtaShared.GetResourceName(this.MTAResource)
    end
    getDynamicRoot = function (this)
      return SlipeSharedElements.ElementManager.getInstance():GetElement(SlipeMtaDefinitions.MtaShared.GetResourceDynamicElementRoot(this.MTAResource))
    end
    getRoot = function (this)
      return SlipeSharedElements.ElementManager.getInstance():GetElement(SlipeMtaDefinitions.MtaShared.GetResourceRootElement(this.MTAResource))
    end
    getState = function (this)
      return SlipeMtaDefinitions.MtaShared.GetResourceState(this.MTAResource)
    end
    getExportedFunctions = function (this)
      return SlipeMtaDefinitions.MtaShared.GetArrayFromTable(SlipeMtaDefinitions.MtaShared.GetResourceExportedFunctions(this.MTAResource), "System.String", T)
    end
    -- <summary>
    -- This function is used to return the root node of a configuration file.
    -- </summary>
    Config = function (this, filePath)
      local mtaNode = SlipeMtaDefinitions.MtaShared.GetResourceConfig(filePath)

      local document = SystemXml.XmlDocument()
      local xmlNode = document:CreateElement(SlipeMtaDefinitions.MtaShared.XmlNodeGetName(mtaNode))
      xmlNode:index(mtaNode)
      return xmlNode
    end
    -- <summary>
    -- This function is used to retrieve a resource from its name. A resource's name is the same as its folder or file archive name on the server (without the extension).
    -- </summary>
    FromName = function (name)
      return class(SlipeMtaDefinitions.MtaShared.GetResourceFromName(name))
    end
    Invoke = function (this, functionName, parameters)
      do
	                local export = exports[this:getName()]
                    return export[functionName](export, unpack(parameters))	
                end
      return SlipeExports.Export.Invoke(getName(this), functionName, parameters)
    end
    class = {
      getName = getName,
      getDynamicRoot = getDynamicRoot,
      getRoot = getRoot,
      getState = getState,
      getExportedFunctions = getExportedFunctions,
      Config = Config,
      FromName = FromName,
      Invoke = Invoke,
      __ctor__ = __ctor__
    }
    return class
  end)
end)
