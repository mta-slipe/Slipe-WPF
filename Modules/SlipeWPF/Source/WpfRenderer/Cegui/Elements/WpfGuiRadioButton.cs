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
    internal class WpfGuiRadioButton: Gui.RadioButton
    {
        public WpfGuiRadioButton(RadioButton button, Gui.GuiElement parent)
            : base(
                new Vector2((float)button.Margin.Left, (float)button.Margin.Top),
                new Vector2((float)button.Width, (float)button.Height),
                (string) button.Content,
                false,
                parent
            )
        {
            GuiWpfHelper.AttachHandlers(this, button);

            this.OnClick += (source, args) =>
            {
                if (button.IsChecked == this.Selected)
                {
                    return;
                }
                button.IsChecked = this.Selected;

                /*[[
                if button.Checked then
                    button:Checked(this, System.Windows.RoutedEventArgs());
                end
                ]]*/

                int childCount = VisualTreeHelper.GetChildrenCount(button.Parent);
                for (int i = 0; i < childCount; i++)
                {
                    var radioButton = VisualTreeHelper.GetChild(button.Parent, i) as RadioButton;
                    if (radioButton != null && radioButton != button)
                    {
                        radioButton.IsChecked = false;
                        /*[[
                        if radioButton.Checked then
                            radioButton:Checked(this, System.Windows.RoutedEventArgs());
                        end
                        ]]*/
                    }
                }
            };

            /*[[
            button:addIsCheckedChanged(System.fn(this, UpdateIsChecked))
            ]]*/
        }

        private void UpdateIsChecked(bool isChecked)
        {
            if (this.Selected != isChecked)
            {
                this.Selected = isChecked;
            }
        }
    }
}
