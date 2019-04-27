-- Generated by CSharp.lua Compiler
local System = System
local SystemWindowsControls
local SystemWindowsMedia
local WpfRendererCeguiElements
System.import(function (out)
  SystemWindowsControls = System.Windows.Controls
  SystemWindowsMedia = System.Windows.Media
  WpfRendererCeguiElements = WpfRenderer.Cegui.Elements
end)
System.namespace("WpfRenderer.Cegui", function (namespace)
  namespace.class("GuiWpfHelper", function (namespace)
    local AttachHandlers, CreateChildren
    AttachHandlers = function (guiElement, wpfElement)
      guiElement.OnClick = guiElement.OnClick + function (eventButton, buttonState, mousePosition)
        if wpfElement.Click then
            wpfElement:Click(wpfElement, System.Windows.RoutedEventArgs());
        end
      end
      guiElement.OnDoubleClick = guiElement.OnDoubleClick + function (button, buttonState, mousePosition)
        local wpfButton = button == 0 --[[MouseButton.Left]] and 0 --[[MouseButton.Left]] or button == 1 --[[MouseButton.Middle]] and 1 --[[MouseButton.Middle]] or button == 2 --[[MouseButton.Right]] and 2 --[[MouseButton.Right]] or 0 --[[MouseButton.Left]]
        if wpfElement.MouseDoubleClick then
            wpfElement:MouseDoubleClick(wpfElement, System.Windows.Input.MouseButtonEventArgs(nil, 0, wpfButton));
        end
      end
      guiElement.OnMouseEnter = guiElement.OnMouseEnter + function (mousePosition, previousHoverGuiElement)
        if wpfElement.MouseEnter then
            wpfElement:MouseEnter(wpfElement, System.Windows.Input.MouseEventArgs(nil, 0));
        end
      end
      guiElement.OnMouseLeave = guiElement.OnMouseLeave + function (mousePosition, nextHoverGuiElement)
        if wpfElement.MouseLeave then
            wpfElement:MouseLeave(wpfElement, System.Windows.Input.MouseEventArgs(nil, 0));
        end
      end
    end
    CreateChildren = function (guiElement, wpfElement)
      local childrenCount = SystemWindowsMedia.VisualTreeHelper.GetChildrenCount(wpfElement)
      for i = 0, childrenCount - 1 do
        local child = SystemWindowsMedia.VisualTreeHelper.GetChild(wpfElement, i)
        if System.is(child, SystemWindowsControls.Button) then
          WpfRendererCeguiElements.WpfGuiButton(System.cast(SystemWindowsControls.Button, child), guiElement)
        elseif System.is(child, SystemWindowsControls.CheckBox) then
          WpfRendererCeguiElements.WpfGuiCheckbox(System.cast(SystemWindowsControls.CheckBox, child), guiElement)
        elseif System.is(child, SystemWindowsControls.TextBlock) then
          WpfRendererCeguiElements.WpfGuiLabel(System.cast(SystemWindowsControls.TextBlock, child), guiElement)
        elseif System.is(child, SystemWindowsControls.PasswordBox) then
          System.new(WpfRendererCeguiElements.WpfGuiEdit, 2, System.cast(SystemWindowsControls.PasswordBox, child), guiElement)
        elseif System.is(child, SystemWindowsControls.TextBox) then
          WpfRendererCeguiElements.WpfGuiEdit(System.cast(SystemWindowsControls.TextBox, child), guiElement)
        elseif System.is(child, SystemWindowsControls.Grid) then
          WpfRendererCeguiElements.WpfGuiGrid(System.cast(SystemWindowsControls.Grid, child), guiElement)
        elseif System.is(child, SystemWindowsControls.StackPanel) then
          WpfRendererCeguiElements.WpfGuiStackPanel(System.cast(SystemWindowsControls.StackPanel, child), guiElement)
        elseif System.is(child, SystemWindowsControls.TabControl) then
          WpfRendererCeguiElements.WpfGuiTabPanel(System.cast(SystemWindowsControls.TabControl, child), guiElement)
        elseif System.is(child, SystemWindowsControls.TabItem) then
          WpfRendererCeguiElements.WpfGuiTab(System.cast(SystemWindowsControls.TabItem, child), guiElement)
        elseif System.is(child, SystemWindowsControls.ListBox) then
          WpfRendererCeguiElements.WpfGuiList(System.cast(SystemWindowsControls.ListBox, child), guiElement)
        elseif System.is(child, SystemWindowsControls.ListBoxItem) then
          WpfRendererCeguiElements.WpfGuiListItem(System.cast(SystemWindowsControls.ListBoxItem, child), guiElement)
        elseif System.is(child, SystemWindowsControls.ComboBox) then
          WpfRendererCeguiElements.WpfGuiComboBox(System.cast(SystemWindowsControls.ComboBox, child), guiElement)
        elseif System.is(child, SystemWindowsControls.ComboBoxItem) then
          WpfRendererCeguiElements.WpfGuiComboBoxItem(System.cast(SystemWindowsControls.ComboBoxItem, child), guiElement)
        elseif System.is(child, SystemWindowsControls.RadioButton) then
          WpfRendererCeguiElements.WpfGuiRadioButton(System.cast(SystemWindowsControls.RadioButton, child), guiElement)
        else
          System.throw(System.Exception(System.String.Format("CEGUI WPF renderer does not support {0} elements", child:GetType():getName())))
        end
      end
    end
    return {
      AttachHandlers = AttachHandlers,
      CreateChildren = CreateChildren
    }
  end)
end)
