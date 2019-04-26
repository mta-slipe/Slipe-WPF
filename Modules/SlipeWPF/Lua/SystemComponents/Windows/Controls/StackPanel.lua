local StackPanel = {}

StackPanel.__inherits__ = { System.Windows.Controls.Panel }

StackPanel.__ctor__ = function(this)
	this.children = {}
end

StackPanel.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.Panel.LoadXaml(this, xmlNode)
end

createProperties(StackPanel,{ 
	"HorizontalOffset",
	"ViewportHeight",
	"ViewportWidth",
	"ExtentHeight",
	"ExtentWidth",
	"CanVerticallyScroll",
	"CanHorizontallyScroll",
	"Orientation",
	"VerticalOffset",
	"ScrollOwner",
	"LogicalOrientation",
	"HasLogicalOrientation",
})

System.define("System.Windows.Controls.StackPanel", StackPanel)