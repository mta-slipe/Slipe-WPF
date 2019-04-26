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
    public class WpfGuiComboBoxItem: Gui.ComboBoxItem
    {
        public WpfGuiComboBoxItem(ComboBoxItem box, Gui.GuiElement parent)
            : base(
                (string) box.Content,
                (Gui.ComboBox)parent
            )
        {
        }
    }
}
