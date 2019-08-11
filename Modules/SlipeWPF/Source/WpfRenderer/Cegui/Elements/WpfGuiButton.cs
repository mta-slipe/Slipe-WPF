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
    internal class WpfGuiButton: Gui.Button
    {
        public WpfGuiButton(Button button, Gui.GuiElement parent) 
            : base(
                new Vector2((float)button.Margin.Left, (float)button.Margin.Top), 
                new Vector2((float)button.Width, (float)button.Height),
                (string) button.Content,
                false,
                parent
            )
        {
            GuiWpfHelper.AttachHandlers(this, button);

            /*[[
            button:addContentChanged(System.fn(this, UpdateContent))
            ]]*/
        }

        private void UpdateContent(string content)
        {
            if (this.Content != content)
            {
                this.Content = content;
            }
        }
    }
}
