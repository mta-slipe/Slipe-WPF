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
    public class WpfGuiTab: Gui.Tab
    {
        public WpfGuiTab(TabItem item, Gui.GuiElement parent) 
            : base(
                (string)item.Header,
                (Gui.TabPanel) parent
            )
        {
            GuiWpfHelper.AttachHandlers(this, item);

            GuiWpfHelper.CreateChildren(this, item);
        }
    }
}
