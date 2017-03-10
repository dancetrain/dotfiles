local awful = require("awful")
local tools = {}

tools.run_once = function(program)
   if program then
      awful.util.spawn_with_shell("pgrep -f -u $USER -x " .. program .. " || (" .. program .. ")")
   end
end

return tools
