cls
ma80.exe bios,bios=bios
ma80.exe boot,boot=boot
mlink /ws:DA00 bios
mlink /ws:4000 boot
@echo off
::copy /b boot.com+cpm.sys+bios.com F:\emu\PK8000\pk8000_hdd.bin
::copy /b boot.com+cpm.sys+bios.com F:\Emu80\pk8000\pk8000_hdd.rom
copy /b boot.com+cpm.sys+bios.com pk8000_hdd.bin
del bios.com
del boot.com
del *.rel
del *.prn
if not exist pk8000_hdd.bin goto :end
echo ================================================
echo = Yeehaw! System created! File: PK8000_HDD.BIN =
echo ================================================
pause
:end
