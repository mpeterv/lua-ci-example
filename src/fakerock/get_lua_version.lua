local function get_lua_version()
   if rawget(_G, "jit") then
      return assert(jit.version:match("LuaJIT 2%.%d+")) -- luacheck: std luajit
   else
      return _VERSION
   end
end

return get_lua_version
