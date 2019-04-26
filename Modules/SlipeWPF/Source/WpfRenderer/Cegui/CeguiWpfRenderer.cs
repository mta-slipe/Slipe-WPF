using System;
using System.Collections.Generic;
using System.Numerics;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using Slipe.Shared;
using Slipe.Shared.IO;
using WpfRenderer.Cegui.Elements;
using Gui = Slipe.Client.Gui;

namespace WpfRenderer.Cegui
{
    public class CeguiWpfRenderer
    {
        public static Gui.Window Render(Window window)
        {
            Gui.Window guiWindow = new WpfGuiWindow(window);

            return guiWindow;
        }
    }
}
