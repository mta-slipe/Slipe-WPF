local TabControl = {}

TabControl.__inherits__ = { System.Windows.Controls.ItemsControl }

TabControl.__ctor__ = function(this)
	this.children = {}
end

TabControl.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.ItemsControl.LoadXaml(this, xmlNode)
end

createProperties(TabControl, { 
	"SelectedContentTemplate",
	"SelectedContentStringFormat",
	"SelectedContent",
	"ContentTemplateSelector",
	"ContentTemplate",
	"ContentStringFormat",
	"TabStripPlacement",
	"SelectedContentTemplateSelector",
})

System.define("System.Windows.Controls.TabControl", TabControl)