using Slipe.Client.Rendering;
using Slipe.Shared.IO;
using System;
using System.Collections.Generic;
using System.Numerics;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using Gui = Slipe.Client.Gui;

namespace WpfRenderer.Cegui.Elements
{
    internal class WpfGuiStackPanel: WpfGuiDummy
    {
        public WpfGuiStackPanel(StackPanel stackPanel, Gui.GuiElement parent) : base(stackPanel, parent)
        {
            int childrenCount = VisualTreeHelper.GetChildrenCount(stackPanel);
            for (int i = 0; i < childrenCount; i++)
            {
                var child = (FrameworkElement)VisualTreeHelper.GetChild(stackPanel, i);
                if (stackPanel.Orientation == Orientation.Horizontal)
                {
                    child.Margin = new Thickness(
                        i * stackPanel.Width / childrenCount,
                        child.Margin.Top,
                        child.Margin.Right,
                        child.Margin.Bottom);
                    child.Width = stackPanel.Width / childrenCount;
                } else
                {
                    child.Margin = new Thickness(
                        child.Margin.Left,
                        i * stackPanel.Width / childrenCount,
                        child.Margin.Right,
                        child.Margin.Bottom);
                    child.Height = stackPanel.Height / childrenCount;
                }
            }
        }
    }
}
