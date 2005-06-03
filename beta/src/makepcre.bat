@echo off
rem =================
rem Из каталога pcre:
rem =================
bcc32i -DSUPPORT_UTF8 dftables.c
dftables.exe chartables.c
bcc32i -Oa -Ob -Oc -Od -Oe -Og -Oi -Ol -Om -Op -Os -Ot -Ov -Ox -Oz -OS -OM -OI -5 -B -Z -pr -N- -DSUPPORT_UTF8 -DPOSIX_MALLOC_THRESHOLD=10 -c maketables.c get.c study.c pcre.c

rem =================
rem Или просто:
rem =================
rem bcc32i -Oa -Ob -Oc -Od -Oe -Og -Oi -Ol -Om -Op -Os -Ot -Ov -Ox -Oz -OS -OM -OI -5 -B -Z -pr -N- -c pcre.c