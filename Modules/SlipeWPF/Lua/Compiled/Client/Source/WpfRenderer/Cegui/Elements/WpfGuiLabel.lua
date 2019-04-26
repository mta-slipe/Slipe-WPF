-- Generated by CSharp.lua Compiler
local System = System
local SlipeClientGui
local SystemNumerics
local WpfRendererCegui
System.import(function (out)
  SlipeClientGui = Slipe.Client.Gui
  SystemNumerics = System.Numerics
  WpfRendererCegui = WpfRenderer.Cegui
end)
System.namespace("WpfRenderer.Cegui.Elements", function (namespace)
  namespace.class("WpfGuiLabel", function (namespace)
    local __ctor__
    __ctor__ = function (this, block, parent)
      SlipeClientGui.Label.__ctor__[2](this, SystemNumerics.Vector2(System.ToSingle(block:getMargin():getLeft()), System.ToSingle(block:getMargin():getTop())), SystemNumerics.Vector2(System.ToSingle(block:getWidth()), System.ToSingle(block:getHeight())), block:getText(), false, parent)
      WpfRendererCegui.GuiWpfHelper.AttachHandlers(this, block)
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Client.Gui.Label
        }
      end,
      __ctor__ = __ctor__
    }
  end)
end)