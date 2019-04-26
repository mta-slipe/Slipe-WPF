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
    public class WpfGuiEdit: Gui.Edit
    {
        public WpfGuiEdit(TextBox block, Gui.GuiElement parent)
            : base(
                new Vector2((float)block.Margin.Left, (float)block.Margin.Top),
                new Vector2((float)block.Width, (float)block.Height),
                block.Text,
                false,
                parent
            )
        {
            GuiWpfHelper.AttachHandlers(this, block);
        }

        public WpfGuiEdit(PasswordBox block, Gui.GuiElement parent)
            : base(
                new Vector2((float)block.Margin.Left, (float)block.Margin.Top),
                new Vector2((float)block.Width, (float)block.Height),
                block.Password,
                false,
                parent
            )
        {
            this.Masked = true;
            GuiWpfHelper.AttachHandlers(this, block);
        }
    }
}
