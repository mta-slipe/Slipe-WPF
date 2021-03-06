﻿using Slipe.Client.Elements;
using Slipe.Client.Gui;
using Slipe.Client.IO;
using Slipe.Client.Peds;
using Slipe.Shared.Elements;
using Slipe.Shared.IO;
using System;
using System.Numerics;
using WpfCoreTest;
using WpfRenderer;
using WpfRenderer.Cegui;

namespace ClientSide
{
    class Program
    {
        static void Main(string[] args)
        {
            new Program();
        }

        public Program()
        {

            ChatBox.WriteLine("Hello world", 0xffff00);

            CodeBehindWindow window = new CodeBehindWindow();
            Window guiWindow = CeguiWpfRenderer.Render(window);
            Cursor.SetVisible(guiWindow.Visible);
            // guiWindow.Visible = false;

            new CommandHandler("wpf", (string command, string[] arguments) =>
            {
                guiWindow.Visible = !guiWindow.Visible;
                Cursor.SetVisible(guiWindow.Visible);
            });
            new CommandHandler("wpftest", (string command, string[] arguments) =>
            {
                if (arguments.Length == 0)
                {
                    return;
                }
                window.SetButtonText(arguments[0]);
            });
            new CommandHandler("wpfitems", (string command, string[] arguments) =>
            {
                window.SetSelectedItems();
            });
        }
    }
}
