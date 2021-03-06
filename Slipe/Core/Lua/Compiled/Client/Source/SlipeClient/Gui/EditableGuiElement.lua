-- Generated by CSharp.lua Compiler
local System = System
local SlipeClientGui
System.import(function (out)
  SlipeClientGui = Slipe.Client.Gui
end)
System.namespace("Slipe.Client.Gui", function (namespace)
  -- <summary>
  -- Represents an editable Gui element
  -- </summary>
  namespace.class("EditableGuiElement", function (namespace)
    local class, __ctor__
    __ctor__ = function (this, element)
      SlipeClientGui.GuiElement.__ctor__(this, element)
    end
    class = {
      __inherits__ = function (out)
        return {
          out.Slipe.Client.Gui.GuiElement
        }
      end,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          methods = {
            { ".ctor", 0x106, nil, out.Slipe.MtaDefinitions.MtaElement }
          },
          events = {
            { "OnChanged", 0x6, System.Delegate(class, out.Slipe.Client.Gui.Events.OnChangedEventArgs, System.Void) }
          },
          class = { 0x6 }
        }
      end
    }
    return class
  end)
end)
