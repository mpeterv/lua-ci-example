package = "fakerock"
version = "dev-1"
source = {
   url = "git+https://github.com/mpeterv/lua-ci-example.git"
}
description = {
   summary = "This is a fake rock for Lua CI example.",
   detailed = "",
   homepage = "https://github.com/mpeterv/lua-ci-example",
   license = "Unlicense"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      fakerock = "src/fakerock/init.lua",
      ["fakerock.get_lua_version"] = "src/fakerock/get_lua_version.lua",
      ["fakerock.get_platform"] = "src/fakerock/get_platform.lua"
   }
}
