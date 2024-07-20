@echo off

rem Sort text files on Drive C: by date
echo Sorting text files on Drive C: by date...
dir /b /a-d /od /t:c "C:\*.txt" > C:\sorted_filelist.txt

rem Archive older files to a folder on Drive Z:
echo Archiving older files to a folder on Drive Z:...
set /p days=Enter the number of days to archive files older than:
for /f "tokens=*" %%f in (C:\sorted_filelist.txt) do (
    forfiles /p "C:\" /m "%%f" /d -%days% /c "cmd /c move /y @path Z:\archive\"
)

rem Sort the archived files by size
echo Sorting the archived files by size...
dir /b /os "Z:\archive\*.txt" > Z:\archive\sorted_archived_filelist.txt

rem Prompt the user for permission to delete old, large files
echo The following files are old and large:
type Z:\archive\sorted_archived_filelist.txt
set /p confirm=Do you want to delete these files? (y/n):
if /i "%confirm%"=="y" (
    echo Deleting old, large files...
    for /f "tokens=*" %%f in (Z:\archive\sorted_archived_filelist.txt) do (
        del /q "Z:\archive\%%f"
    )
    echo Files deleted.
) else (
    echo No files deleted.
)

pause
