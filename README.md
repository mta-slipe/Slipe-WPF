# Slipe WPF
Slipe WPF is a first party module for [Slipe](https://mta-slipe.com).  
The goal of Slipe WPF is to bring support for Microsoft's Windows Presentation Foundation to Slipe. 

Slipe WPF is still a an experimental stage.

## Getting started

First you will need to add the SlipeWPF module to your project, you can do this with: `slipe import-module https://mta-slipe.com/downloads/SlipeWPF.zip`

## Compiling

When compiling the Slipe WPF module it's important to include the `-generated` option in the compile command. Otherwise generated `.g.cs` will not be included. For example:  
`slipe compile -module SlipeWPF -client-only -generated`

Also, you will need to to mark your WPF project project as `"BlockEntryPoint": true` in your `.slipe` file.

## What's implemented
Since WPF as a library is huge we have not implemented every single control and method, or even every approach to the frameorok. 

Currently the only appraoch of using WPF that is supported is code behind. Binding is not yet supported.

The list below details what classes have been implemented, and which of their events / properties.

* All classes  
    **Events:** `Click`, `DoubleClick`, `MouseEnter`, `MouseLeave`   
    **Properties:** `Width`, `Height`, `Margin` (only for position), `Content`      
* Window  
    **Events:**  
    **Properties:** `Title` 
* Grid  
    **Events:**  
    **Properties:** 
* TextBlock  
    **Events:**  
    **Properties:** `Text`
* TextBox  
    **Events:**  
    **Properties:** `Text` 
* Button  
    **Events:** `Click`  
    **Properties:**  
* TabControl  
    **Events:** `SelectionChanged`  
    **Properties:** `SelectedItem`, `SelectedValue`, `SelectedIndex`  
* StackPanel  
    **Events:**  
    **Properties:** `Orientation`  
* CheckBox  
    **Events:** `Checked`  
    **Properties:** `IsChecked`  
* RadioButton   
    **Events:** `Checked`   
    **Properties:** `IsChecked`  
* ComboBox  
    **Events:** `SelectionChanged` 
    **Properties:** `SelectedItem`, `SelectedValue`, `SelectedIndex`  
* ComboBoxItem  
    **Events:**  
    **Properties:**  
* ListBox  
    **Events:** `SelectionChanged` 
    **Properties:** `SelectedItem`, `SelectedValue`, `SelectedIndex`  
* ListBoxItem  
    **Events:**  
    **Properties:**  

## Renderers
Currently Slipe WPF only supports rendering WPF windows using CEGUI. We're planning on adding a CEF and DX draw renderer to that.    