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
            Gui.GridList list = (Gui.GridList)parent;
            int row = MtaClient.GuiGridListAddRow(list.MTAElement, (string)item.Content, "");
        }
    }
}
