cls
color a
set /p answer=Do you want to remove clock.avi(Teach media file)? (y/n):
if /i "%answer%"=="y" (
    cls
    del C:\WINNT\clock.avi
    echo successfully                 V
) else (
    cls
    echo deleting clock.avi has been canceled.                      X
)
set /p answer0=Do you want to remove help file? (y/n):
if /i "%answer0%"=="y" (
    cls
    del C:\WINNT\Help\*.*
    del C:\WINNT\system32\*.hlp
    del C:\*.hlp
    echo successfully                 V
) else (
    echo deleting help system and help files has been canceled.                      X
)
set /p answer1=Do you want to remove log files? (y/n):
if /i "%answer1%"=="y" (
    cls
    del C:\WINNT\*.log
    del C:\*.log
    del C:\WINNT\setuplog.txt
    echo successfully                 V
) else (
    echo deleting help system and help files has been canceled.                      X
)
set /p answer2=Do you want to delite HyperTerminal(terminal for telnet)? (y/n):
if /i "%answer2%"=="y" (
    cls
    del "C:\Program Files\Windows NT\hypertrm.exe"
    echo successfully                 V
) else (
    echo deleting HyperTerminal has been canceled.                      X
)
set /p answer3=Do you want to delete console telnet terminal?(telner.exe)? (y/n):
if /i "%answer3%"=="y" (
    cls
    del C:\WINNT\system32\telnet.exe
    echo successfully                 V
) else (
    echo deleting telnet.exe has been canceled.                      X
)
pause
cls
shutdown /r