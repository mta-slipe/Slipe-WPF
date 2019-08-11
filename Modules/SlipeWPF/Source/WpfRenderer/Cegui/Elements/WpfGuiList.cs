using Slipe.Client.Rendering;
using Slipe.Shared.IO;
using System;
using System.Collections.Generic;
using System.Numerics;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using Gui = Slipe.Client.Gui;

namespace WpfRenderer.Cegui.Elements
{
    internal class WpfGuiList: Gui.GridList
    {
        public Gui.GridColumn Column { get; set; }
        private ListBox listBox;

        public WpfGuiList(ListBox listBox, Gui.GuiElement parent) 
            : base(
                new Vector2((float)listBox.Margin.Left, (float)listBox.Margin.Top),
                new Vector2((float)listBox.Width, (float)listBox.Height),
                false,
                parent
            )
        {
            this.listBox = listBox;

            this.Column = this.AddColumn("", 0.9f);
            GuiWpfHelper.AttachHandlers(this, listBox);

            GuiWpfHelper.CreateChildren(this, listBox);

            this.OnClick += (source, args) =>
            {
                int index = this.SelectedItem.Row.ID;
                var item = (ListBoxItem)VisualTreeHelper.GetChild(listBox, index);

                listBox.SelectedIndex = index;
                listBox.SelectedItem = item;
                listBox.SelectedValue = item.Content;

                /*[[
                if listBox.SelectionChanged then
                    listBox:SelectionChanged(this, System.Windows.RoutedEventArgs());
                end
                ]]*/
            };

            /*[[
            listBox:addSelectedItemChanged(System.fn(this, UpdateSelectedItem))
            listBox:addSelectedIndexChanged(System.fn(this, UpdateSelectedIndex))
            listBox:addSelectedValueChanged(System.fn(this, UpdateSelectedvalue))
            ]]*/
        }

        private void UpdateSelectedItem(ComboBoxItem comboBoxItem)
        {
            int childCount = VisualTreeHelper.GetChildrenCount(this.listBox);
            for (int i = 0; i < childCount; i++)
            {
                if (VisualTreeHelper.GetChild(this.listBox, i) == comboBoxItem)
                {
                    Slipe.MtaDefinitions.MtaClient.GuiGridListSetSelectedItem(this.MTAElement, i, this.Column.ID, false);
                }
            }
        }

        private void UpdateSelectedIndex(int index)
        {
            Slipe.MtaDefinitions.MtaClient.GuiGridListSetSelectedItem(this.MTAElement, index, this.Column.ID, false);
        }

        private void UpdateSelectedvalue(string value)
        {
            int childCount = VisualTreeHelper.GetChildrenCount(this.listBox);
            for (int i = 0; i < childCount; i++)
            {
                var child = VisualTreeHelper.GetChild(this.listBox, i);
                if ((string)(child as ListBoxItem).Content == value)
                {
                    Slipe.MtaDefinitions.MtaClient.GuiGridListSetSelectedItem(this.MTAElement, i, this.Column.ID, false);
                }
            }
        }
    }
}
