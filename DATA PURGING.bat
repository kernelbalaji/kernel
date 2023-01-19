@echo off    
del /s /f /q %windir%\temp\*.*    
rd /s /q %windir%\temp    
md %windir%\temp 
del /s /f /q "%SysteDrive%\Temp"\*.*    
rd /s /q "%SysteDrive%\Temp"    
md "%SysteDrive%\Temp"    
del /s /f /q %temp%\*.*    
rd /s /q %temp%    
md %temp%    
   

::Prefetch Folder

@echo off

del /s /f /q %windir%\Prefetch\*.*    
rd /s /q %windir%\Prefetch    
md %windir%\Prefetch    

::dll Catch

@echo off

del /s /f /q %windir%\system32\dllcache\*.*    
rd /s /q %windir%\system32\dllcache    
md %windir%\system32\dllcache    


::History

@echo off

del /s /f /q "%USERPROFILE%\Local Settings\History"\*.*    
rd /s /q "%USERPROFILE%\Local Settings\History"    
md "%USERPROFILE%\Local Settings\History"    

::Internet Temp Files

@echo off
del /s /f /q "%USERPROFILE%\Local Settings\Temporary Internet Files"\*.*    
rd /s /q "%USERPROFILE%\Local Settings\Temporary Internet Files"    
md "%USERPROFILE%\Local Settings\Temporary Internet Files"    

::Windows Temp

@echo off

del /s /f /q "%USERPROFILE%\Local Settings\Temp"\*.*    
rd /s /q "%USERPROFILE%\Local Settings\Temp"    
md "%USERPROFILE%\Local Settings\Temp"    

::Recent Files

@echo off

del /s /f /q "%USERPROFILE%\Recent"\*.*    
rd /s /q "%USERPROFILE%\Recent"    
md "%USERPROFILE%\Recent"
del /s /f /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent"\*.*    
rd /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent"    
md "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Recent"    
C:\Users\Hds\AppData\Roaming\Microsoft\Windows\Recent

::Cookies

@echo off
del /s /f /q "%USERPROFILE%\Cookies"\*.*    
rd /s /q "%USERPROFILE%\Cookies"    
md "%USERPROFILE%\Cookies"

::Excel Unsaved

@echo off
del /s /f /q "%USERPROFILE%\AppData\Roaming\Microsoft\Excel"\*.*    
rd /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Excel\"    
md "%USERPROFILE%\AppData\Roaming\Microsoft\Excel\" 


@echo off
del /s /f /q "%USERPROFILE%\AppData\Local\Microsoft\Office\UnsavedFiles"\*.*    
rd /s /q "%USERPROFILE%\AppData\Local\Microsoft\Office\UnsavedFiles\"    
md "%USERPROFILE%\AppData\Local\Microsoft\Office\UnsavedFiles\" 

@echo off
del /s /f /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Office.Desktop_8wekyb3d8bbwe\LocalCache\Roaming\Microsoft\Excel"\*.*    
rd /s /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Office.Desktop_8wekyb3d8bbwe\LocalCache\Roaming\Microsoft\Excel"    
md "%USERPROFILE%\AppData\Local\Packages\Microsoft.Office.Desktop_8wekyb3d8bbwe\LocalCache\Roaming\Microsoft\Excel" 

@echo off
del /s /f /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Office.Desktop_8wekyb3d8bbwe\LocalCache\Local\Microsoft\Office\UnsavedFiles"\*.*    
rd /s /q "%USERPROFILE%\AppData\Local\Packages\Microsoft.Office.Desktop_8wekyb3d8bbwe\LocalCache\Local\Microsoft\Office\UnsavedFiles"    
md "%USERPROFILE%\AppData\Local\Packages\Microsoft.Office.Desktop_8wekyb3d8bbwe\LocalCache\Local\Microsoft\Office\UnsavedFiles" 





::Internet Explorer

@echo off

REM Cookies:

REM RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2

REM RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8

::Firefox

@echo off

set DataDir=C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles

del /q /s /f "%DataDir%"
rd /s /q "%DataDir%"

for /d %%x in (C:\Users\%USERNAME%\AppData\Roaming\Mozilla\Firefox\Profiles\*) do del /q /s /f %%x\*sqlite

::Google Chrome

@echo off

set ChromeDir=C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data

del /q /s /f "%ChromeDir%"

rd /s /q "%ChromeDir%"

::Google Chrome
RD /S /Q "%LocalAppData%\Google\Chrome


::Run History

@echo off

REG Delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /VA /F

REG Delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths /VA /F 


::File Explorer Search

@echo off

REG Delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\WordWheelQuery /VA /F


::Recyclebin

@echo off

set Drive=C:

if exist %Drive%\$RECYCLE.BIN (
    pushd %Drive%\$RECYCLE.BIN
    del /s /q .
    popd
)

Downloader Folder 1Day Download
forfiles /p "C:\Users\%USERNAME%\Downloads" /s /m *.* /c "cmd /c Del @path" /d -0

