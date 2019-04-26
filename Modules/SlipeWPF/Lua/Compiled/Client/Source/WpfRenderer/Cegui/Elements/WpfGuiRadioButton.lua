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
  namespace.class("WpfGuiRadioButton", function (namespace)
    local __ctor__
    __ctor__ = function (this, box, parent)
      SlipeClientGui.RadioButton.__ctor__[2](this, SystemNumerics.Vector2(System.ToSingle(box:getMargin():getLeft()), System.ToSingle(box:getMargin():getTop())), SystemNumerics.Vector2(System.ToSingle(box:getWidth()), System.ToSingle(box:getHeight())), System.cast(System.String, box:getContent()), false, parent)
      WpfRendererCegui.GuiWpfHelper.AttachHandlers(this, box)
    end
    return {
      __inherits__ = function (out)
        return {
          out.Slipe.Client.Gui.RadioButton
        }
      end,
      __ctor__ = __ctor__
    }
  end)
end)
