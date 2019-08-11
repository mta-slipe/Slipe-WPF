using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using Gui = Slipe.Client.Gui;

namespace WpfRenderer.Cegui.Elements
{
    internal class WpfGuiDummy
    {
        public WpfGuiDummy(FrameworkElement element, Gui.GuiElement parent)
        {
            GuiWpfHelper.AttachHandlers(parent, element);

            GuiWpfHelper.CreateChildren(parent, element);
        }
    }
}
