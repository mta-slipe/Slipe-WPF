# Slipe WPF
Slipe WPF is a first party module for [Slipe](https://mta-slipe.com).  
The goal of Slipe WPF is to bring support for Microsoft's Windows Presentation Foundation to Slipe.  

## Compiling
When compiling the Slipe WPF module it's important to include the `-generated` option in the compile command. Otherwise generated `.g.cs` will not be included. For example:  
`slipe compile -module SlipeWPF -client-only -generated`