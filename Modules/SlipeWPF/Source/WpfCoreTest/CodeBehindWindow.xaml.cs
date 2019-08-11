using Slipe.Client.IO;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfCoreTest.ViewModels;

namespace WpfCoreTest
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class CodeBehindWindow// : Window
    {
        //public MainViewModel ViewModel;

        public CodeBehindWindow()
        {
            InitializeComponent();
            Debug.WriteLine("Test");
        }

        public void SetButtonText(string text)
        {
            this.button.Content = text;
        }

        public void SetSelectedItem()
        {
            this.comboBox.SelectedValue = "ComboBoxItem 2";
            //this.comboBox.SelectedItem = VisualTreeHelper.GetChild(this.comboBox, 1);
        }

        private void ButtonExit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void ButtonClick(object sender, RoutedEventArgs e)
        {
            ChatBox.WriteLine(string.Format("Text value is: {0}", textBox.Text), 0xff00ff);
            textBox.Text = "";
        }

        private void CheckBox_Copy_Checked(object sender, RoutedEventArgs e)
        {
            ChatBox.WriteLine($"Checkbox: {checkBox_Copy.IsChecked}");
        }

        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ChatBox.WriteLine($"Combo box: {comboBox.SelectedValue}");
        }
    }
}
