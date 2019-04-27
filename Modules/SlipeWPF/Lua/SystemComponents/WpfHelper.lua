
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

function createEvents(class, events)
	for _, event in pairs(events) do
		class["add" .. event] = function(this, value)
			this[event] = this[event] + value
		end
	end
end