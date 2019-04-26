using Slipe.Shared.IO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Numerics;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using WpfRenderer.Cegui.Elements;
using Gui = Slipe.Client.Gui;

namespace WpfRenderer.Cegui
{
    public static class GuiWpfHelper
    {
        public static void AttachHandlers(Gui.GuiElement guiElement, FrameworkElement wpfElement)
        {
            guiElement.OnClick += (MouseButton eventButton, MouseButtonState buttonState, Vector2 mousePosition) =>
            {
                /*[[
                wpfElement.Click(wpfElement, System.Windows.RoutedEventArgs());
                ]]*/
            };
            guiElement.OnDoubleClick += (MouseButton button, MouseButtonState buttonState, Vector2 mousePosition) =>
            {
                System.Windows.Input.MouseButton wpfButton =
                    button == MouseButton.Left ? System.Windows.Input.MouseButton.Left :
                    button == MouseButton.Middle ? System.Windows.Input.MouseButton.Middle :
                    button == MouseButton.Right ? System.Windows.Input.MouseButton.Right :
                    System.Windows.Input.MouseButton.Left;
                /*[[
                wpfElement.MouseDoubleClick(wpfElement, System.Windows.Input.MouseButtonEventArgs(nil, 0, wpfButton));
                ]]*/
            };
            guiElement.OnMouseEnter += (Vector2 mousePosition, Gui.GuiElement previousHoverGuiElement) =>
            {
                /*[[
                wpfElement.MouseEnter(wpfElement, System.Windows.Input.MouseEventArgs(nil, 0));
                ]]*/
            };
            guiElement.OnMouseLeave += (Vector2 mousePosition, Gui.GuiElement nextHoverGuiElement) =>
            {
                /*[[
                wpfElement.MouseLeave(wpfElement, System.Windows.Input.MouseEventArgs(nil, 0));
                ]]*/
            };
        }

        public static void CreateChildren(Gui.GuiElement guiElement, FrameworkElement wpfElement)
        {
            int childrenCount = VisualTreeHelper.GetChildrenCount(wpfElement);
            for (int i = 0; i < childrenCount; i++)
            {
                var child = VisualTreeHelper.GetChild(wpfElement, i);
                if (child is Button)
                {
                    new WpfGuiButton((Button)child, guiElement);
                }
                else if (child is CheckBox)
                {
                    new WpfGuiCheckbox((CheckBox)child, guiElement);
                }
                else if (child is TextBlock)
                {
                    new WpfGuiLabel((TextBlock)child, guiElement);
                }
                else if (child is PasswordBox)
                {
                    new WpfGuiEdit((PasswordBox)child, guiElement);
                }
                else if (child is TextBox)
                {
                    new WpfGuiEdit((TextBox)child, guiElement);
                }
                else if (child is Grid)
                {
                    new WpfGuiGrid((Grid)child, guiElement);
                }
                else if (child is StackPanel)
                {
                    new WpfGuiStackPanel((StackPanel)child, guiElement);
                }
                else if (child is TabControl)
                {
                    new WpfGuiTabPanel((TabControl)child, guiElement);
                }
                else if (child is TabItem)
                {
                    new WpfGuiTab((TabItem)child, guiElement);
                }
                else if (child is ListBox)
                {
                    new WpfGuiList((ListBox)child, guiElement);
                }
                else if (child is ListBoxItem)
                {
                    new WpfGuiListItem((ListBoxItem)child, guiElement);
                }
                else if (child is ComboBox)
                {
                    new WpfGuiComboBox((ComboBox)child, guiElement);
                }
                else if (child is ComboBoxItem)
                {
                    new WpfGuiComboBoxItem((ComboBoxItem)child, guiElement);
                }
                else if (child is RadioButton)
                {
                    new WpfGuiRadioButton((RadioButton)child, guiElement);
                }
                else
                {
                    throw new Exception(string.Format("CEGUI WPF renderer does not support {0} elements", child.GetType().Name));
                }
            }
        }
    }
}
