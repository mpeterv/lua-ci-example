local get_platform = require "fakerock.get_platform"
local get_lua_version = require "fakerock.get_lua_version"

local fakerock = {}

fakerock.version = "0.1.0"

function fakerock.get_number()
   local platform = get_platform()
   local lua_version = get_lua_version()

   if platform == "hurd" then
      error("this line should not be covered")
   elseif platform == "windows" then
      if lua_version == "Lua 5.1" then
         return 1
      elseif lua_version == "Lua 5.2" then
         return 2
      elseif lua_version == "Lua 5.3" then
         return 3
      elseif lua_version == "LuaJIT 2.0" then
         return 4
      else
         return 5
      end
   elseif platform == "mac" then
      if lua_version == "Lua 5.1" then
         return 6
      elseif lua_version == "Lua 5.2" then
         return 7
      elseif lua_version == "Lua 5.3" then
         return 8
      elseif lua_version == "LuaJIT 2.0" then
         return 9
      else
         return 10
      end
   else
      if lua_version == "Lua 5.1" then
         return 11
      elseif lua_version == "Lua 5.2" then
         return 12
      elseif lua_version == "Lua 5.3" then
         return 13
      elseif lua_version == "LuaJIT 2.0" then
         return 14
      else
         return 15
      end
   end
end

return fakerock
