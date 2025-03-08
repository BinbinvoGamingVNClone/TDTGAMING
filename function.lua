WebSocket=WebSocket or{};WebSocket.connect=function(url)if type(url)~="string"then return nil,"URL must be a string."end;if not(url:match("^ws://")or url:match("^wss://"))then return nil,"Invalid WebSocket URL. Must start with 'ws://' or 'wss://'."end;local cleanedUrl=url:gsub("^ws://",""):gsub("^wss://","");if cleanedUrl==""or cleanedUrl:match("^%s*$")then return nil,"Invalid WebSocket URL. No host specified."end;return{Send=function(message)end,Close=function()end,OnMessage={},OnClose={}}end;function hookmetamethod(target,method,replacement)assert(type(target)=="table"or type(target)=="userdata","Invalid argument #1 to 'hookmetamethod' (table or userdata expected)")assert(type(method)=="string","Invalid argument #2 to 'hookmetamethod' (string expected)")assert(type(replacement)=="function","Invalid argument #3 to 'hookmetamethod' (function expected)");local meta=getrawmetatable(target);local original=meta[method];meta[method]=replacement;return original end
