# lua-ci-example

[![Build Status](https://travis-ci.org/mpeterv/lua-ci-example.svg?branch=master)](https://travis-ci.org/mpeterv/lua-ci-example)
[![Build status](https://ci.appveyor.com/api/projects/status/1a3rgqpa7jv3f8tp/branch/master?svg=true)](https://ci.appveyor.com/project/mpeterv/lua-ci-example/branch/master)
[![codecov](https://codecov.io/gh/mpeterv/lua-ci-example/branch/master/graph/badge.svg)](https://codecov.io/gh/mpeterv/lua-ci-example)

This repository demonstrates how to setup up CI for a simple Lua project packaged for [LuaRocks](https://luarocks.org/). Builds are run on [Travis CI](https://travis-ci.org/) under Linux and Mac OS and on [AppVeyor](https://www.appveyor.com/) under Windows. On each platform there are separate builds using Lua 5.1, Lua 5.2, Lua 5.3, LuaJIT 2.0, and LuaJIT 2.1, using [hererocks](https://github.com/mpeterv/hererocks) to setup environment. Each build lints the code using [luacheck](https://github.com/mpeterv/luacheck), runs tests using [busted](https://olivinelabs.com/busted/), and collects test coverage using [LuaCov](https://keplerproject.github.io/luacov/). Test coverage is submitted to [Codecov](https://codecov.io).

Important files:

* `src/fakerock`: source files for the project.
* `spec`: [busted](https://olivinelabs.com/busted/) tests.
* `fakerock-dev-1.rockspec`: [LuaRocks](https://luarocks.org/) project specification.
* `.luacheckrc`: [luacheck](https://github.com/mpeterv/luacheck) config.
* `.luacov`: [LuaCov](https://keplerproject.github.io/luacov/) config.
* `.travis.yml`: [Travis CI](https://travis-ci.org/) config.
* `appveyor.yml`: [AppVeyor](https://www.appveyor.com/) config.
