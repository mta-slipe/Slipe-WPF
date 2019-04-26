-- Generated by CSharp.lua Compiler
return function (out)
  do
    out = (out and #out > 0) and (out .. '.') or ""
    local require = require
    local load = function(module) return require(out .. module) end

    -- load all files
    load("Source.WpfCoreTest.obj.Debug.netcoreapp3_0.App_g")
    load("Source.WpfCoreTest.obj.Debug.netcoreapp3_0.MainWindow_g")
    load("Source.WpfCoreTest.TestWindowPartial1")
    load("Source.WpfRenderer.Cegui.CeguiWpfRenderer")
    load("Source.WpfRenderer.Cegui.Elements.WpfGuiButton")
    load("Source.WpfRenderer.Cegui.Elements.WpfGuiCheckbox")
    load("Source.WpfRenderer.Cegui.Elements.WpfGuiComboBox")
    load("Source.WpfRenderer.Cegui.Elements.WpfGuiComboBoxItem")
    load("Source.WpfRenderer.Cegui.Elements.WpfGuiDummy")
    load("Source.WpfRenderer.Cegui.Elements.WpfGuiEdit")
    load("Source.WpfRenderer.Cegui.Elements.WpfGuiGrid")
    load("Source.WpfRenderer.Cegui.Elements.WpfGuiLabel")
    load("Source.WpfRenderer.Cegui.Elements.WpfGuiList")
    load("Source.WpfRenderer.Cegui.Elements.WpfGuiListItem")
    load("Source.WpfRenderer.Cegui.Elements.WpfGuiRadioButton")
    load("Source.WpfRenderer.Cegui.Elements.WpfGuiStackPanel")
    load("Source.WpfRenderer.Cegui.Elements.WpfGuiTab")
    load("Source.WpfRenderer.Cegui.Elements.WpfGuiTabPanel")
    load("Source.WpfRenderer.Cegui.Elements.WpfGuiWindow")
    load("Source.WpfRenderer.Cegui.GuiWpfHelper")
  end

  System.init({
    "WpfRenderer.Cegui.Elements.WpfGuiDummy",
    "WpfCoreTest.App",
    "WpfCoreTest.MainWindow",
    "WpfCoreTesto.MainWindow",
    "WpfRenderer.Cegui.CeguiWpfRenderer",
    "WpfRenderer.Cegui.Elements.WpfGuiButton",
    "WpfRenderer.Cegui.Elements.WpfGuiCheckbox",
    "WpfRenderer.Cegui.Elements.WpfGuiComboBox",
    "WpfRenderer.Cegui.Elements.WpfGuiComboBoxItem",
    "WpfRenderer.Cegui.Elements.WpfGuiEdit",
    "WpfRenderer.Cegui.Elements.WpfGuiGrid",
    "WpfRenderer.Cegui.Elements.WpfGuiLabel",
    "WpfRenderer.Cegui.Elements.WpfGuiList",
    "WpfRenderer.Cegui.Elements.WpfGuiListItem",
    "WpfRenderer.Cegui.Elements.WpfGuiRadioButton",
    "WpfRenderer.Cegui.Elements.WpfGuiStackPanel",
    "WpfRenderer.Cegui.Elements.WpfGuiTab",
    "WpfRenderer.Cegui.Elements.WpfGuiTabPanel",
    "WpfRenderer.Cegui.Elements.WpfGuiWindow",
    "WpfRenderer.Cegui.GuiWpfHelper"
  }, {
    Main = "WpfCoreTest.App.Main"
  })
end