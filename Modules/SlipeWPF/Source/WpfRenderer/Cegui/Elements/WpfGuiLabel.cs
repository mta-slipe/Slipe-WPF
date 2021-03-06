﻿using Slipe.Shared.IO;
using System;
using System.Collections.Generic;
using System.Numerics;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using Gui = Slipe.Client.Gui;

namespace WpfRenderer.Cegui.Elements
{
    internal class WpfGuiLabel: Gui.Label
    {
        public WpfGuiLabel(TextBlock block, Gui.GuiElement parent) 
            : base(
                new Vector2((float)block.Margin.Left, (float)block.Margin.Top), 
                new Vector2((float)block.Width, (float)block.Height),
                block.Text,
                false,
                parent
            )
        {
            GuiWpfHelper.AttachHandlers(this, block);

            /*[[
            block:addTextChanged(System.fn(this, UpdateContent))
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
