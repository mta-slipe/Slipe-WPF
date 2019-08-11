-- Generated by CSharp.lua Compiler
local System = System
local SlipeClientGui
local SlipeMtaDefinitions
local DictInt32ComboBoxItem
System.import(function (out)
  SlipeClientGui = Slipe.Client.Gui
  SlipeMtaDefinitions = Slipe.MtaDefinitions
  DictInt32ComboBoxItem = System.Dictionary(System.Int32, SlipeClientGui.ComboBoxItem)
end)
System.namespace("Slipe.Client.Gui", function (namespace)
  -- <summary>
  -- Represents a Cegui combo box
  -- </summary>
  namespace.class("ComboBox", function (namespace)
    local getItemCount, getOpen, setOpen, getSelected, setSelected, Clear, AddItem, RemoveItem, 
    class, __ctor1__, __ctor2__
    __ctor1__ = function (this, element)
      SlipeClientGui.GuiElement.__ctor__(this, element)
      this.items = DictInt32ComboBoxItem()
    end
    -- <summary>
    -- Create a new combo box
    -- </summary>
    __ctor2__ = function (this, position, dimensions, caption, relative, parent)
      local default = parent
      if default ~= nil then
        default = default:getMTAElement()
      end
      __ctor1__(this, SlipeMtaDefinitions.MtaClient.GuiCreateComboBox(position.X, position.Y, dimensions.X, dimensions.Y, caption, relative, default))
    end
    getItemCount = function (this)
      return SlipeMtaDefinitions.MtaClient.GuiComboBoxGetItemCount(this.element)
    end
    getOpen = function (this)
      return SlipeMtaDefinitions.MtaClient.GuiComboBoxIsOpen(this.element)
    end
    setOpen = function (this, value)
      SlipeMtaDefinitions.MtaClient.GuiComboBoxSetOpen(this.element, value)
    end
    getSelected = function (this)
      return this.items:get(SlipeMtaDefinitions.MtaClient.GuiComboBoxGetSelected(this.element))
    end
    setSelected = function (this, value)
      SlipeMtaDefinitions.MtaClient.GuiComboBoxSetSelected(this.element, value.ID)
    end
    -- <summary>
    -- Remove all items from this combo box
    -- </summary>
    Clear = function (this)
      return SlipeMtaDefinitions.MtaClient.GuiComboBoxClear(this.element)
    end
    -- <summary>
    -- Add a new item
    -- </summary>
    AddItem = function (this, content)
      local item = SlipeClientGui.ComboBoxItem(content, this)
      this.items:AddKeyValue(item.ID, item)
      return item
    end
    -- <summary>
    -- Remove a specific item from the combo box
    -- </summary>
    RemoveItem = function (this, item)
      if SlipeMtaDefinitions.MtaClient.GuiComboBoxRemoveItem(this.element, item.ID) then
        this.items:RemoveKey(item.ID)
        return true
      end
      return false
    end
    class = {
      __inherits__ = function (out)
        return {
          out.Slipe.Client.Gui.GuiElement
        }
      end,
      getItemCount = getItemCount,
      getOpen = getOpen,
      setOpen = setOpen,
      getSelected = getSelected,
      setSelected = setSelected,
      Clear = Clear,
      AddItem = AddItem,
      RemoveItem = RemoveItem,
      __ctor__ = {
        __ctor1__,
        __ctor2__
      },
      __metadata__ = function (out)
        return {
          fields = {
            { "items", 0x1, System.Dictionary(System.Int32, out.Slipe.Client.Gui.ComboBoxItem) }
          },
          properties = {
            { "ItemCount", 0x206, System.Int32, getItemCount },
            { "Open", 0x106, System.Boolean, getOpen, setOpen },
            { "Selected", 0x106, out.Slipe.Client.Gui.ComboBoxItem, getSelected, setSelected }
          },
          methods = {
            { ".ctor", 0x106, __ctor1__, out.Slipe.MtaDefinitions.MtaElement },
            { ".ctor", 0x506, __ctor2__, System.Numerics.Vector2, System.Numerics.Vector2, System.String, System.Boolean, out.Slipe.Client.Gui.GuiElement },
            { "AddItem", 0x186, AddItem, System.String, out.Slipe.Client.Gui.ComboBoxItem },
            { "Clear", 0x86, Clear, System.Boolean },
            { "RemoveItem", 0x186, RemoveItem, out.Slipe.Client.Gui.ComboBoxItem, System.Boolean }
          },
          events = {
            { "OnAccepted", 0x6, System.Delegate(class, out.Slipe.Client.Gui.Events.OnAcceptedEventArgs, System.Void) }
          },
          class = { 0x6, System.new(out.Slipe.Shared.Elements.DefaultElementClassAttribute, 2, 15 --[[ElementType.GuiComboBox]]) }
        }
      end
    }
    return class
  end)
end)
