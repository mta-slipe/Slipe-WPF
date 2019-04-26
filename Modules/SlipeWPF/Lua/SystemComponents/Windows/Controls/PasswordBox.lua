local PasswordBox = {}

PasswordBox.__inherits__ = { System.Windows.Controls.Control }

PasswordBox.__ctor__ = function(this, xmlNode)
	this.children = {}
end

PasswordBox.LoadXaml = function(this, xmlNode)
	System.Windows.Controls.Control.LoadXaml(this, xmlNode)
	this:setText(xmlNode.attributes["Text"])
end

createProperties(PasswordBox, {
	"IsSelectionActive",
	"CaretBrush",
	"SelectionOpacity",
	"SelectionTextBrush",
	"SelectionBrush",
	"MaxLength",
	"PasswordChar",
	"SecurePassword",
	"Password",
	"IsInactiveSelectionHighlightEnabled",
})

System.define("System.Windows.Controls.PasswordBox", PasswordBox)