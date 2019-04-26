using Slipe.Client.Rendering;
using Slipe.Shared.IO;
using System;
using System.Collections.Generic;
using System.Numerics;
using System.Text;
using System.Windows;
using Gui = Slipe.Client.Gui;

namespace WpfRenderer.Cegui.Elements
{
    public class WpfGuiWindow: Gui.Window
    {
        public WpfGuiWindow(Window window) 
            : base(
                new Vector2(Renderer.Instance.ScreenSize.X / 2 - (float)window.Width / 2, Renderer.Instance.ScreenSize.Y / 2 - (float)window.Height / 2), 
                new Vector2((float)window.Width, (float)window.Height), 
                window.Title
            )
        {
            GuiWpfHelper.AttachHandlers(this, window);

            GuiWpfHelper.CreateChildren(this, window);
        }
    }
}
