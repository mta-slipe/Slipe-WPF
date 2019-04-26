-- Generated by CSharp.lua Compiler
local System = System
local SlipeClientGui
local SlipeMtaDefinitions
local SystemNumerics
System.import(function (out)
  SlipeClientGui = Slipe.Client.Gui
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  SystemNumerics = System.Numerics
end)
System.namespace("Slipe.Client.Gui", function (namespace)
  -- <summary>
  -- Represents a static Cegui image
  -- </summary>
  namespace.class("StaticImage", function (namespace)
    local getNativeSize, LoadImage, __ctor1__, __ctor2__
    __ctor1__ = function (this, element)
      SlipeClientGui.GuiElement.__ctor__(this, element)
    end
    -- <summary>
    -- Create a static image
    -- </summary>
    __ctor2__ = function (this, position, dimensions, filePath, relative, parent)
      local default = parent
      if default ~= nil then
        default = default:getMTAElement()
      end
      __ctor1__(this, SlipeMtaDefinitions.MtaClient.GuiCreateStaticImage(position.X, position.Y, dimensions.X, dimensions.Y, filePath, relative, default))
    end
    getNativeSize = function (this)
      local r = SlipeMtaDefinitions.MtaClient.GuiStaticImageGetNativeSize(this.element)
      return SystemNumerics.Vector2(r[1], r[2])
    end
    -- <summary>
    -- Load a new image from a file path
    -- </summary>
    LoadImage = function (this, filePath)
      return SlipeMtaDefinitions.MtaClient.GuiStaticImageLoadImage(this.element, filePath)
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Client.Gui.GuiElement
        }
      end,
      LoadImage = LoadImage,
      __ctor__ = {
        __ctor1__,
        __ctor2__
      }
    }
  end)
end)