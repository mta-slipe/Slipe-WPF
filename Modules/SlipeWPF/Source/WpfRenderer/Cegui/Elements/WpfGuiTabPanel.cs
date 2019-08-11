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
    internal class WpfGuiTabPanel: Gui.TabPanel
    {
        private TabControl tabControl;

        public WpfGuiTabPanel(TabControl tabControl, Gui.GuiElement parent) 
            : base(
                new Vector2((float)tabControl.Margin.Left, (float)tabControl.Margin.Top), 
                new Vector2((float)tabControl.Width, (float)tabControl.Height),
                false,
                parent
            )
        {
            this.tabControl = tabControl;

            GuiWpfHelper.AttachHandlers(this, tabControl);

            GuiWpfHelper.CreateChildren(this, tabControl);

            this.OnClick += (source, args) =>
            {
                var tab = this.Selected;

                int index = -1;
                TabItem item = null;
                for (int i = 0; i < this.ChildCount; i++)
                {
                    if (this.GetChild(i) == tab)
                    {
                        index = i;
                        item = (TabItem)VisualTreeHelper.GetChild(this.tabControl, i);
                        break;
                    }
                }

                tabControl.SelectedValue = tab.Content;
                tabControl.SelectedIndex = index;
                tabControl.SelectedItem = item;

                /*[[
                if tabControl.SelectionChanged then
                    tabControl:SelectionChanged(this, System.Windows.RoutedEventArgs());
                end
                ]]*/
            };

            /*[[
            tabControl:addSelectedItemChanged(System.fn(this, UpdateSelectedItem))
            tabControl:addSelectedIndexChanged(System.fn(this, UpdateSelectedIndex))
            tabControl:addSelectedValueChanged(System.fn(this, UpdateSelectedvalue))
            ]]*/
        }

        private void UpdateSelectedItem(TabItem item)
        {
            int childCount = VisualTreeHelper.GetChildrenCount(this.tabControl);
            for (int i = 0; i < childCount; i++)
            {
                if (VisualTreeHelper.GetChild(this.tabControl, i) == item)
                {
                    this.Selected = this.GetChild(i) as Gui.Tab;
                }
            }
        }

        private void UpdateSelectedIndex(int index)
        {
            this.Selected = this.GetChild(index) as Gui.Tab;
        }

        private void UpdateSelectedvalue(string value)
        {
            int childCount = VisualTreeHelper.GetChildrenCount(this.tabControl);
            for (int i = 0; i < childCount; i++)
            {
                var child = VisualTreeHelper.GetChild(this.tabControl, i);
                var name = this.tabControl.GetType().Name;
                if ((string)(child as TabItem).Header == value)
                {
                    this.Selected = this.GetChild(i) as Gui.Tab;
                }
            }
        }
    }
}
