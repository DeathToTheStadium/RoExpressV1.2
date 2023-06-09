local roexpress = {}
local roexpressMethods = {}

roexpress.__call = function(options : {})
    -- Get App object and Return it
    return require(script.app)
end

roexpress.__index = function(object,index)
    -- Get Router Object or return Express Methoud
    local router = require(script.router)
    if index:lower() == 'router' then
		return require(script.router)
	else
        return roexpressMethods[index]
    end
end

return setmetatable(roexpressMethods,roexpress)