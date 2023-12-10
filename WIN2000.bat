cls
color a
::Пользователю предлагается ввести "y" или "n" для удаления службы Telnet.
set /p answer=Do you want to remove clock.avi(Teach media file)? (y/n):
if /i "%answer%"=="y" (
    cls
    del C:\WINNT\clock.avi
    echo successfully                 V
) else (
    cls
    echo deleting welcome.exe has been canceled.                      X
)
set /p answer0=Do you want to remove help file? (y/n):
if /i "%answer0%"=="y" (
    cls
    del C:\WINNT\Help\*.*
    del C:\WINNT\system32\*.hlp
    echo successfully                 V
) else (
    echo deleting help system and help files has been canceled.                      X
)
set /p answer1=Do you want to remove log files? (y/n):
if /i "%answer1%"=="y" (
    cls
    del C:\WINNT\*.log
    del C:\WINNT\setuplog.txt
    echo successfully                 V
) else (
    echo deleting help system and help files has been canceled.                      X
)
pause
cls
shutdown /r