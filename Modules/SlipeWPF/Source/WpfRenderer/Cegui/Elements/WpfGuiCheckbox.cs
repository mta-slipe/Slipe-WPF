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
    internal class WpfGuiCheckbox: Gui.CheckBox
    {
        public WpfGuiCheckbox(CheckBox box, Gui.GuiElement parent)
            : base(
                new Vector2((float)box.Margin.Left, (float)box.Margin.Top),
                new Vector2((float)box.Width, (float)box.Height),
                (string) box.Content,
                box.IsChecked.GetValueOrDefault(false),
                false,
                parent
            )
        {
            GuiWpfHelper.AttachHandlers(this, box);
        }
    }
}
