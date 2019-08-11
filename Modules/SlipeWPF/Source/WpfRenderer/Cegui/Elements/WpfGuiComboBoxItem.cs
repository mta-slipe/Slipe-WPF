using Slipe.Client.IO;
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
    internal class WpfGuiComboBoxItem
    {
        public WpfGuiComboBoxItem(ComboBoxItem box, Gui.GuiElement parent)
        {

            (parent as Gui.ComboBox).AddItem((string)box.Content);
        }
    }
}
