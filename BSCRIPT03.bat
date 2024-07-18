@echo off

Rem Prompt user to select a Windows utility
:menu
echo.
echo Select a Windows utility:
echo 1. ipconfig
echo 2. tasklist/taskkill
echo 3. chkdsk
echo 4. format
echo 5. defrag
echo 6. find
echo 7. attrib
choice /c 1234567 /m "Enter chosen utility:"

if errorlevel 7 goto attrib
if errorlevel 6 goto find
if errorlevel 5 goto defrag
if errorlevel 4 goto format
if errorlevel 3 goto chkdsk
if errorlevel 2 goto task
if errorlevel 1 goto ipconfig

goto invalid

:ipconfig
echo Running ipconfig...
ipconfig
goto menu

:task
set /p task=Do you want to do tasklist or taskkill? (list/kill): 
if "%task%"=="list" (
    tasklist
) else if "%task%"=="kill" (
    set /p pid=Enter the PID of the task to kill: 
    taskkill /PID %pid%
) else (
    echo Invalid choice. Please enter 'list' or 'kill'.
)
goto menu

:chkdsk
echo Running chkdsk...
set /p drive=Enter the drive letter:
chkdsk %drive%:
goto menu

:format
echo Running format...
set /p drive=Enter the drive letter (e.g., C:) to format: 
format %drive%
goto menu

:defrag
echo Running defrag...
set /p drive=Enter the drive letter (e.g., C:) to defrag: 
defrag %drive%
goto menu

:find
echo Running find...
set /p search=Enter the text to search for:
find "%search%"
goto menu

:attrib
echo Running attrib...
set /p attributes=Enter the file or directory path: 
attrib %attributes%
goto menu

:invalid
echo Invalid choice. Please select a number between 1-7.
pause
goto menu
