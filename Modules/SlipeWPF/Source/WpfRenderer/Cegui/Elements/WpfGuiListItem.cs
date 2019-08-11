using Slipe.Client.Rendering;
using Slipe.MtaDefinitions;
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
    internal class WpfGuiListItem
    {
        public WpfGuiListItem(ListBoxItem item, Gui.GuiElement parent) 
        {
            WpfGuiList list = (WpfGuiList)parent;
            new Gui.GridItem(list.Column, list.AddRow(), list)
            {
                Content = (string)item.Content
            };
        }
    }
}
