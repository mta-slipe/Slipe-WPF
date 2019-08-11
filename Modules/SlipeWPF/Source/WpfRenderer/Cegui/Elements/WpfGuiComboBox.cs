using Slipe.Client.IO;
using Slipe.Shared.IO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using Gui = Slipe.Client.Gui;

namespace WpfRenderer.Cegui.Elements
{
    internal class WpfGuiComboBox: Gui.ComboBox
    {
        private readonly ComboBox box;

        public WpfGuiComboBox(ComboBox box, Gui.GuiElement parent)
            : base(
                new Vector2((float)box.Margin.Left, (float)box.Margin.Top),
                new Vector2((float)box.Width, (float)box.Height),
                box.Text == null ? "" : box.Text,
                false,
                parent
            )
        {
            this.box = box;

            GuiWpfHelper.AttachHandlers(this, box);

            GuiWpfHelper.CreateChildren(this, box);

            this.Size = new Vector2(this.Size.X, this.Size.Y * Math.Min(VisualTreeHelper.GetChildrenCount(box) * 1.5f, 10));

            this.OnClick += (source, args) =>
            {
                /*[[
                if box:getSelectedItem() == this:getSelected() then
                    return
                end

                box:setSelectedIndex(this:getSelected().ID)
                box:setSelectedItem(box.children[this:getSelected().ID])
                box:setSelectedValue(this:getSelected():getContent())

                if box.SelectionChanged then
                    box:SelectionChanged(this, System.Windows.RoutedEventArgs());
                end
                ]]*/
            };

            /*[[
            box:addSelectedItemChanged(System.fn(this, UpdateSelectedItem))
            box:addSelectedIndexChanged(System.fn(this, UpdateSelectedIndex))
            box:addSelectedValueChanged(System.fn(this, UpdateSelectedvalue))
            ]]*/
        }

        private void UpdateSelectedItem(ComboBoxItem comboBoxItem)
        {
            int childCount = VisualTreeHelper.GetChildrenCount(this.box);
            for (int i = 0; i < childCount; i++)
            {
                if (VisualTreeHelper.GetChild(this.box, i) == comboBoxItem)
                {
                    Slipe.MtaDefinitions.MtaClient.GuiComboBoxSetSelected(this.MTAElement, i);
                }
            }
        }

        private void UpdateSelectedIndex(int index)
        {
            Slipe.MtaDefinitions.MtaClient.GuiComboBoxSetSelected(this.MTAElement, index);
        }

        private void UpdateSelectedvalue(string value)
        {
            int childCount = VisualTreeHelper.GetChildrenCount(this.box);
            for (int i = 0; i < childCount; i++)
            {
                var child = VisualTreeHelper.GetChild(this.box, i);
                if ((string)(child as ComboBoxItem).Content == value)
                {
                    Slipe.MtaDefinitions.MtaClient.GuiComboBoxSetSelected(this.MTAElement, i);
                }
            }
        }
    }
}
