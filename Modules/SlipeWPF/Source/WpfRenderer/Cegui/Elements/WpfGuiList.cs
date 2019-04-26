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
    public class WpfGuiList: Gui.GridList
    {
        public WpfGuiList(ListBox listBox, Gui.GuiElement parent) 
            : base(
                new Vector2((float)listBox.Margin.Left, (float)listBox.Margin.Top),
                new Vector2((float)listBox.Width, (float)listBox.Height),
                false,
                parent
            )
        {
            this.AddColumn("", 1);
            GuiWpfHelper.AttachHandlers(this, listBox);

            GuiWpfHelper.CreateChildren(this, listBox);
        }
    }
}
