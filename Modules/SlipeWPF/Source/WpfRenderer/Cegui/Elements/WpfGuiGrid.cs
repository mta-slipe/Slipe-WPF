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
    public class WpfGuiGrid: WpfGuiDummy
    {
        public WpfGuiGrid(Grid window, Gui.GuiElement parent) : base(window, parent)
        {
        }
    }
}
