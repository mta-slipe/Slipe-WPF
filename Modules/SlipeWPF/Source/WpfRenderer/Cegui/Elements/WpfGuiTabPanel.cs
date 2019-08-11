using Slipe.Client.Rendering;
using Slipe.Shared.IO;
using System;
using System.Collections.Generic;
using System.Numerics;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using Gui = Slipe.Client.Gui;

namespace WpfRenderer.Cegui.Elements
{
    internal class WpfGuiTabPanel: Gui.TabPanel
    {
        public WpfGuiTabPanel(TabControl tabControl, Gui.GuiElement parent) 
            : base(
                new Vector2((float)tabControl.Margin.Left, (float)tabControl.Margin.Top), 
                new Vector2((float)tabControl.Width, (float)tabControl.Height),
                false,
                parent
            )
        {
            GuiWpfHelper.AttachHandlers(this, tabControl);

            GuiWpfHelper.CreateChildren(this, tabControl);
        }
    }
}
