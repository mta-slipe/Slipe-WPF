-- Generated by CSharp.lua Compiler
local System = System
local SlipeMtaDefinitions
local SlipeSharedElements
System.import(function (out)
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeSharedElements = Slipe.Shared.Elements
end)
System.namespace("Slipe.Shared.CollisionShapes", function (namespace)
  -- <summary>
  -- Base class for collision shapes
  -- </summary>
  namespace.class("CollisionShape", function (namespace)
    local getShapeType, getElementsWithin, IsInside, IsElementWithin, GetElementsWithinOfType, __ctor__
    __ctor__ = function (this, element)
      SlipeSharedElements.PhysicalElement.__ctor__(this, element)
    end
    getShapeType = function (this)
      return SlipeMtaDefinitions.MtaShared.GetColShapeType(this.element)
    end
    getElementsWithin = function (this)
      local array = SlipeMtaDefinitions.MtaShared.GetArrayFromTable(SlipeMtaDefinitions.MtaShared.GetElementsWithinColShape(this.element), "MTAElement", T)
      return SlipeSharedElements.ElementManager.getInstance():CastArray(array, SlipeSharedElements.PhysicalElement)
    end
    -- <summary>
    -- Checks whether a certain position is inside a collision shape
    -- </summary>
    IsInside = function (this, position)
      return SlipeMtaDefinitions.MtaShared.IsInsideColShape(this.element, position.X, position.Y, position.Z)
    end
    -- <summary>
    -- Checks whether a certain element is inside a collision shape
    -- </summary>
    IsElementWithin = function (this, element)
      return SlipeMtaDefinitions.MtaShared.IsElementWithinColShape(this.element, element:getMTAElement())
    end
    -- <summary>
    -- Gets an array of all elements of a specific type inside the collision shape
    -- </summary>
    GetElementsWithinOfType = function (this, type)
      local array = SlipeMtaDefinitions.MtaShared.GetArrayFromTable(SlipeMtaDefinitions.MtaShared.GetElementsWithinColShape(this.element, SlipeSharedElements.ElementManager.getInstance():GetTypeName(type)), "MTAElement", T)
      return SlipeSharedElements.ElementManager.getInstance():CastArray(array, SlipeSharedElements.PhysicalElement)
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Shared.Elements.PhysicalElement
        }
      end,
      getShapeType = getShapeType,
      getElementsWithin = getElementsWithin,
      IsInside = IsInside,
      IsElementWithin = IsElementWithin,
      GetElementsWithinOfType = GetElementsWithinOfType,
      __ctor__ = __ctor__
    }
  end)
end)