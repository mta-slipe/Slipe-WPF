-- Generated by CSharp.lua Compiler
local System = System
local SlipeClientGui
local SlipeMtaDefinitions
local SlipeSharedUtilities
System.import(function (out)
  SlipeClientGui = Slipe.Client.Gui
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SlipeSharedUtilities = Slipe.Shared.Utilities
end)
System.namespace("Slipe.Client.Gui", function (namespace)
  -- <summary>
  -- Represents a Cegui label
  -- </summary>
  namespace.class("Label", function (namespace)
    local getColor, setColor, getFontHeight, getExtent, SetHorizontalAlign, SetVerticalAlign, __ctor1__, __ctor2__
    __ctor1__ = function (this, element)
      SlipeClientGui.GuiElement.__ctor__(this, element)
    end
    -- <summary>
    -- Create a label
    -- </summary>
    __ctor2__ = function (this, position, dimensions, content, relative, parent)
      local default = parent
      if default ~= nil then
        default = default.getMTAElement()
      end
      __ctor1__(this, SlipeMtaDefinitions.MtaClient.GuiCreateLabel(position.X, position.Y, dimensions.X, dimensions.Y, content, relative, default))
    end
    getColor = function (this)
      local c = SlipeMtaDefinitions.MtaClient.GuiLabelGetColor(this.element)
      return System.new(SlipeSharedUtilities.Color, 4, System.toByte(c[1]), System.toByte(c[2]), System.toByte(c[3]))
    end
    setColor = function (this, value)
      SlipeMtaDefinitions.MtaClient.GuiLabelSetColor(this.element, value:getR(), value:getG(), value:getB())
    end
    getFontHeight = function (this)
      return SlipeMtaDefinitions.MtaClient.GuiLabelGetFontHeight(this.element)
    end
    getExtent = function (this)
      return SlipeMtaDefinitions.MtaClient.GuiLabelGetTextExtent(this.element)
    end
    -- <summary>
    -- Set the horizontal alignment of text
    -- </summary>
    SetHorizontalAlign = function (this, alignment, wordWrap)
      return SlipeMtaDefinitions.MtaClient.GuiLabelSetHorizontalAlign(this.element, alignment:ToEnumString(SlipeClientGui.HorizontalAlign):ToLower(), wordWrap)
    end
    -- <summary>
    -- Set the vertical alignment of text
    -- </summary>
    SetVerticalAlign = function (this, alignment)
      return SlipeMtaDefinitions.MtaClient.GuiLabelSetVerticalAlign(this.element, alignment:ToEnumString(SlipeClientGui.VerticalAlign):ToLower())
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Client.Gui.GuiElement
        }
      end,
      getColor = getColor,
      setColor = setColor,
      getFontHeight = getFontHeight,
      getExtent = getExtent,
      SetHorizontalAlign = SetHorizontalAlign,
      SetVerticalAlign = SetVerticalAlign,
      __ctor__ = {
        __ctor1__,
        __ctor2__
      }
    }
  end)
end)
