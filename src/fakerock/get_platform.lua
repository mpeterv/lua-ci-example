local function get_platform()
   if package.config:sub(1, 1) == "\\" then
      return "windows"
   end

   local pipe = assert(io.popen("uname -s"))
   local out = pipe:read("*l")
   pipe:close()

   if out == "Darwin" then
      return "mac"
   else
      return "linux" -- Probably.
   end
end

return get_platform

