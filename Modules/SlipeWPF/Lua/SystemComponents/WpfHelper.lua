
function createProperties(class, properties)
	for _, property in pairs(properties) do
		class["get" .. property] = function(this)
			return this[property]
		end
		class["set" .. property] = function(this, value)
			this[property] = value
		end
	end
end