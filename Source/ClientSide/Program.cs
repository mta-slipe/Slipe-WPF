using Slipe.Client.Elements;
using Slipe.Client.Gui;
using Slipe.Client.IO;
using Slipe.Shared.Elements;
using System;
using WpfCoreTest;
using WpfRenderer;
using WpfRenderer.Cegui;

namespace ClientSide
{
    class Program
    {
        static void Main(string[] args)
        {
            new ElementManager(new ElementHelper());
            new Program();
        }

        public Program()
        {
            ChatBox.WriteLine("Hello world", 0xffff00);

            MainWindow window = new MainWindow();
            Window guiWindow = CeguiWpfRenderer.Render(window);
            // guiWindow.Visible = false;

            new CommandHandler("wpf", (string command, string[] arguments) =>
            {
                guiWindow.Visible = !guiWindow.Visible;
            });
            new CommandHandler("wpftest", (string command, string[] arguments) =>
            {
                if (arguments.Length == 0)
                {
                    return;
                }
                window.SetButtonText(arguments[0]);
            });
        }
    }
}
