-- Taken From miguelmota/is-valid-email
-- https://github.com/miguelmota/is-valid-email/blob/master/is-valid-email.js

local function validemail(v)
  if v == nil then return nil end
  if (type(v) ~= 'string') then
    error("Expected string")
    return nil
  end
  if v:match("^[%w+%-_]*%.?[%w+%-_]*%.?[%w+%-_]*%.?[%w+%-_]*%.?[%w+%-_]*%.?[%w+%-_]*%.?[%w+%-_]+@[%w+%-_]*%.?[%w+%-_]*%.?[%w+%-_]*%.?[%w+%-_]*%.?[%w+%-_]*%.?[%w+%-_]+%.%a%a+$") then
    return true
  else
    return nil
  end
end

return validemail