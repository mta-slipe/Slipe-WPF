using Slipe.Client.IO;
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
    internal static class GuiWpfHelper
    {
        public static void AttachHandlers(Gui.GuiElement guiElement, FrameworkElement wpfElement)
        {
            guiElement.OnClick += (source, args) =>
            {
                /*[[
                if wpfElement.Click then
                    wpfElement:Click(wpfElement, System.Windows.RoutedEventArgs());
                end
                ]]*/
            };
            guiElement.OnDoubleClick += (source, arg) =>
            {
                MouseButton button = arg.MouseButton;
                System.Windows.Input.MouseButton wpfButton =
                    button == MouseButton.Left ? System.Windows.Input.MouseButton.Left :
                    button == MouseButton.Middle ? System.Windows.Input.MouseButton.Middle :
                    button == MouseButton.Right ? System.Windows.Input.MouseButton.Right :
                    System.Windows.Input.MouseButton.Left;
                /*[[
                if wpfElement.MouseDoubleClick then
                    wpfElement:MouseDoubleClick(wpfElement, System.Windows.Input.MouseButtonEventArgs(nil, 0, wpfButton));
                end
                ]]*/
            };
            guiElement.OnMouseEnter += (source, args) =>
            {
                /*[[
                if wpfElement.MouseEnter then
                    wpfElement:MouseEnter(wpfElement, System.Windows.Input.MouseEventArgs(nil, 0));
                end
                ]]*/
            };
            guiElement.OnMouseLeave += (source, args) =>
            {
                /*[[
                if wpfElement.MouseLeave then
                    wpfElement:MouseLeave(wpfElement, System.Windows.Input.MouseEventArgs(nil, 0));
                end
                ]]*/
            };


            /*[[
            wpfElement:addWidthChanged(function(...) UpdateWidth(guiElement, ...) end)

            wpfElement:addHeightChanged(function(...) UpdateHeight(guiElement, ...) end)

            wpfElement:addMarginChanged(function(...) UpdateMargin(guiElement, ...) end)
            ]]*/
        }

        static void UpdateWidth(Gui.GuiElement element, float width)
        {
            element.Size = new Vector2(width, element.Size.Y);
        }

        static void UpdateHeight(Gui.GuiElement element, float height)
        {
            element.Size = new Vector2(element.Size.X, height);
        }

        static void UpdateMargin(Gui.GuiElement element, Thickness margin)
        {
            element.Position = new Vector2((float)margin.Left, (float)margin.Top);
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
                else if (child is ComboBox)
                {
                    new WpfGuiComboBox((ComboBox)child, guiElement);
                }
                else if (child is ComboBoxItem)
                {
                    new WpfGuiComboBoxItem((ComboBoxItem)child, guiElement);
                }
                else if (child is ListBox)
                {
                    new WpfGuiList((ListBox)child, guiElement);
                }
                else if (child is ListBoxItem)
                {
                    new WpfGuiListItem((ListBoxItem)child, guiElement);
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
