-- This file was automatically generated for the LuaDist project.

package = "lyaml"
version = "6.1-1"
description = {
  detailed = "Read and write YAML format files with Lua.",
  homepage = "http://github.com/gvvaughan/lyaml",
  license = "MIT/X11",
  summary = "libYAML binding for Lua",
}
-- LuaDist source
source = {
  tag = "6.1-1",
  url = "git://github.com/LuaDist-testing/lyaml.git"
}
-- Original source
-- source = {
--   dir = "lyaml-release-v6.1",
--   url = "http://github.com/gvvaughan/lyaml/archive/release-v6.1.zip",
-- }
dependencies = {
  "lua >= 5.1, < 5.4",
}
external_dependencies = {
  YAML = {
    library = "yaml",
  },
}
build = {
  build_command = "./configure LUA='$(LUA)' LUA_INCLUDE='-I$(LUA_INCDIR)' CPPFLAGS='-I$(YAML_INCDIR)' LDFLAGS='-L$(YAML_LIBDIR)' --prefix='$(PREFIX)' --libdir='$(LIBDIR)' --datadir='$(LUADIR)' --datarootdir='$(PREFIX)' && make clean all",
  copy_directories = {},
  install_command = "make install luadir='$(LUADIR)' luaexecdir='$(LIBDIR)'",
  type = "command",
}