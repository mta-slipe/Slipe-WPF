using Slipe.Client.IO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Windows.Input;

namespace WpfCoreTest.ViewModels
{
    //public class MainViewModel : INotifyPropertyChanged
    //{
    //    private string echo;
    //    public string Echo
    //    {
    //        get => echo;
    //        set
    //        {
    //            echo = value;
    //            OnPropertyChanged("Echo");
    //        }
    //    }

    //    public ICommand EchoCommand { get; set; }

    //    public MainViewModel()
    //    {
    //        Echo = "Test";
    //        //EchoCommand = new CommandHandler(OutputEcho, true);
    //    }


    //    public void OutputEcho()
    //    {
    //        //ChatBox.WriteLine(Echo, 0xff00ff);
    //        Echo = "";
    //    }


    //    public event PropertyChangedEventHandler PropertyChanged;
    //    protected void OnPropertyChanged(string name)
    //    {
    //        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
    //    }
    //}


    //public class CommandHandler : ICommand
    //{
    //    private readonly Action action;
    //    private readonly bool canExecute;
    //    public CommandHandler(Action action, bool canExecute)
    //    {
    //        this.action = action;
    //        this.canExecute = canExecute;
    //    }

    //    public bool CanExecute(object parameter)
    //    {
    //        return this.canExecute;
    //    }

    //    public event EventHandler CanExecuteChanged;

    //    public void Execute(object parameter)
    //    {
    //        this.action();
    //    }
    //}
}
