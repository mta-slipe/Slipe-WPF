-- Generated by CSharp.lua Compiler
local System = System
local SlipeSharedIO
local SystemNumerics
System.import(function (out)
  SlipeSharedIO = Slipe.Shared.IO
  SystemNumerics = System.Numerics
end)
System.namespace("Slipe.Client.Gui.Events", function (namespace)
  namespace.class("OnClickEventArgs", function (namespace)
    local __ctor__
    __ctor__ = function (this, mouseButton, buttonState, x, y)
      this.ScreenPosition = System.default(SystemNumerics.Vector2)
      this.MouseButton = System.cast(System.Int32, System.Enum.Parse(System.typeof(SlipeSharedIO.MouseButton), System.cast(System.String, mouseButton), true))
      this.MouseButtonState = System.cast(System.Int32, System.Enum.Parse(System.typeof(SlipeSharedIO.MouseButtonState), System.cast(System.String, buttonState), true))
      this.ScreenPosition = SystemNumerics.Vector2(System.cast(System.Single, x), System.cast(System.Single, y))
    end
    return {
      MouseButton = 0,
      MouseButtonState = 0,
      __ctor__ = __ctor__,
      __metadata__ = function (out)
        return {
          properties = {
            { "MouseButton", 0x6, System.Int32 },
            { "MouseButtonState", 0x6, System.Int32 },
            { "ScreenPosition", 0x6, System.Numerics.Vector2 }
          },
          methods = {
            { ".ctor", 0x404, nil, System.Object, System.Object, System.Object, System.Object }
          },
          class = { 0x6 }
        }
      end
    }
  end)
end)
