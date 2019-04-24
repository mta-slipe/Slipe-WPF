-- Generated by CSharp.lua Compiler
local System = System
local SlipeClientGui
local SlipeMtaDefinitions
System.import(function (out)
  SlipeClientGui = Slipe.Client.Gui
  SlipeMtaDefinitions = Slipe.MtaDefinitions
end)
System.namespace("Slipe.Client.Gui", function (namespace)
  -- <summary>
  -- Represents a Cegui scroll pane
  -- </summary>
  namespace.class("ScrollPane", function (namespace)
    local getHorizontalScrollPosition, setHorizontalScrollPosition, getVerticalScrollPosition, setVerticalScrollPosition, UseScrollBars, __ctor1__, __ctor2__
    __ctor1__ = function (this, element)
      SlipeClientGui.GuiElement.__ctor__(this, element)
    end
    -- <summary>
    -- Create a progress bar
    -- </summary>
    __ctor2__ = function (this, position, dimensions, relative, parent)
      local default = parent
      if default ~= nil then
        default = default.getMTAElement()
      end
      __ctor1__(this, SlipeMtaDefinitions.MtaClient.GuiCreateScrollPane(position.X, position.Y, dimensions.X, dimensions.Y, relative, default))
    end
    getHorizontalScrollPosition = function (this)
      return SlipeMtaDefinitions.MtaClient.GuiScrollPaneGetHorizontalScrollPosition(this.element)
    end
    setHorizontalScrollPosition = function (this, value)
      SlipeMtaDefinitions.MtaClient.GuiScrollPaneSetHorizontalScrollPosition(this.element, value)
    end
    getVerticalScrollPosition = function (this)
      return SlipeMtaDefinitions.MtaClient.GuiScrollPaneGetVerticalScrollPosition(this.element)
    end
    setVerticalScrollPosition = function (this, value)
      SlipeMtaDefinitions.MtaClient.GuiScrollPaneSetVerticalScrollPosition(this.element, value)
    end
    -- <summary>
    -- Set if horizontal/vertical scrollbars should be used
    -- </summary>
    UseScrollBars = function (this, horizontal, vertical)
      return SlipeMtaDefinitions.MtaClient.GuiScrollPaneSetScrollBars(this.element, horizontal, vertical)
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Client.Gui.GuiElement
        }
      end,
      getHorizontalScrollPosition = getHorizontalScrollPosition,
      setHorizontalScrollPosition = setHorizontalScrollPosition,
      getVerticalScrollPosition = getVerticalScrollPosition,
      setVerticalScrollPosition = setVerticalScrollPosition,
      UseScrollBars = UseScrollBars,
      __ctor__ = {
        __ctor1__,
        __ctor2__
      }
    }
  end)
end)
