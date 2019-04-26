-- Generated by CSharp.lua Compiler
local System = System
local SlipeClientGui
local SlipeMtaDefinitions
local SlipeSharedElements
System.import(function (out)
  SlipeClientGui = Slipe.Client.Gui
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeSharedElements = Slipe.Shared.Elements
end)
System.namespace("Slipe.Client.Gui", function (namespace)
  -- <summary>
  -- Represents a Cegui tab panel
  -- </summary>
  namespace.class("TabPanel", function (namespace)
    local getSelected, setSelected, __ctor1__, __ctor2__
    __ctor1__ = function (this, element)
      SlipeClientGui.GuiElement.__ctor__(this, element)
    end
    -- <summary>
    -- Create a tab panel
    -- </summary>
    __ctor2__ = function (this, position, dimensions, relative, parent)
      local default = parent
      if default ~= nil then
        default = default:getMTAElement()
      end
      __ctor1__(this, SlipeMtaDefinitions.MtaClient.GuiCreateTabPanel(position.X, position.Y, dimensions.X, dimensions.Y, relative, default))
    end
    getSelected = function (this)
      return System.cast(SlipeClientGui.Tab, SlipeSharedElements.ElementManager.getInstance():GetElement(SlipeMtaDefinitions.MtaClient.GuiGetSelectedTab(this.element)))
    end
    setSelected = function (this, value)
      SlipeMtaDefinitions.MtaClient.GuiSetSelectedTab(this.element, value:getMTAElement())
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Client.Gui.GuiElement
        }
      end,
      getSelected = getSelected,
      setSelected = setSelected,
      __ctor__ = {
        __ctor1__,
        __ctor2__
      }
    }
  end)
end)
