@echo off
setlocal
set "LUAROCKS_SYSCONFDIR=C:\Program Files/luarocks"
"C:\Users\user\scoop\apps\lua\current\lua.exe" -e "package.path=\"C:\\local\\LuaRocks-3.3.1\\systree/share/lua/5.3/?.lua;C:\\local\\LuaRocks-3.3.1\\systree/share/lua/5.3/?/init.lua;\"..package.path;package.cpath=\"C:\\local\\LuaRocks-3.3.1\\systree/lib/lua/5.3/?.dll;\"..package.cpath;" "C:\local\LuaRocks-3.3.1\systree\lib\luarocks\rocks-5.3\ltags\bin\ltags" %*
exit /b %ERRORLEVEL%
