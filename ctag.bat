ctags --langdef=MYLUA --langmap=MYLUA:.lua -f ./.tags ^
--regex-MYLUA="/^.*\s*function[ \t]*([a-zA-Z0-9_]+):([a-zA-Z0-9_]+).*$/\2/f,function/" ^
--regex-MYLUA="/[ \t]{1}([a-zA-Z0-9_]+)[ \t]*[=][^=]/\1/v,variable/" ^
--regex-MYLUA="/^.*\s*function\s*(\w+):(\w+).*$/\2/f/" ^
--regex-MYLUA="/^\s*self\.(\w+)\s*=\s*(\w+)\s*.*$/\1/e/" ^
--regex-MYLUA="/^\s*self\.(\w+)\s*=\s*\{\}\s*.*$/\1/e/" ^
--regex-MYLUA="/^\s*(\w+)\s*=\s*(\w+)\.getInstance\(\).*$/\1/e/" ^
--regex-MYLUA="/^\s*(\w+)\s*=\s*[0-9]+.*$/\1/e/" ^
--regex-MYLUA="/^\s*(\w+)\s*=\s*-[0-9]+.*$/\1/e/" ^
--regex-MYLUA="/^.*\s*function\s*(\w+)\.(\w+).*$/\2/f/" ^
--regex-MYLUA="/^.*\s*function\s*(\w+)\s*\(.*$/\1/f/" ^
--regex-MYLUA="/^\s*(\w+)\s*=\s*\{.*$/\1/e/" ^
--regex-MYLUA="/[ ]?local[ ]+function[ ]+([^:.= ]+)\(/\1/f/" ^
--regex-MYLUA="/[ ]?local[ ]+([a-zA-Z_]+)[ ]?=[ ]?function\(/\1/f/" ^
--regex-MYLUA="/^function[ ]+[^:]+:([^ \(]+)/\1/f/" ^
--regex-MYLUA="/^function[ ]+([^:. ]+)\(/\1/f/" ^
--regex-MYLUA="/^function[ ]+[^:]+\.([a-zA-Z_]+)\(/\1/f/" ^
--languages=MYLUA --excmd=number -R .

rem --regex-MYLUA="/([a-zA-Z0-9_]+) = require[ (]\"([^\"]+)\"/\1/r,require/"
rem --regex-MYLUA="/[ \t]{1}([a-zA-Z0-9_]+)[ \t]*[=][^=]/\1/v,variable/"
rem --regex-MYLUA="/^.*\s*function\s*(\w+):(\w+).*$/\2/f/"
rem --regex-MYLUA="/^\s*self\.(\w+)\s*=\s*(\w+)\s*.*$/\1/e/"
rem --regex-MYLUA="/^\s*self\.(\w+)\s*=\s*\{\}\s*.*$/\1/e/"
rem --regex-MYLUA="/^\s*(\w+)\s*=\s*(\w+)\.getInstance\(\).*$/\1/e/"
rem --regex-MYLUA="/^\s*(\w+)\s*=\s*[0-9]+.*$/\1/e/"
rem --regex-MYLUA="/^\s*(\w+)\s*=\s*-[0-9]+.*$/\1/e/"
rem --regex-MYLUA="/^.*\s*function\s*(\w+)\.(\w+).*$/\2/f/"
rem --regex-MYLUA="/^.*\s*function\s*(\w+)\s*\(.*$/\1/f/"
rem --regex-MYLUA="/^\s*(\w+)\s*=\s*\{.*$/\1/e/"