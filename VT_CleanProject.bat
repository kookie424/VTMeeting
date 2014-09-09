@echo off
echo ------------------------
echo       init              
echo ------------------------
call "C:\Program Files\Microsoft Visual Studio 9.0\VC\bin\vcvars32.bat"

echo ------------------------
echo       clean intermediate file begin
echo ------------------------
pause
for /r .\ %%f in (*.suo *.exp *.ilk *.ncb *.pdb *.ilk *.vcproj.pdsync *.dat *.*.user)  do  echo deleted %%f & del "%%f"
for /r .\ %%f in (*.dat *.log *_i.h *_i.c *_p.c)  do  echo deleted %%f & del "%%f"
echo ------------------------
echo       clean intermediate file end
echo ------------------------
pause