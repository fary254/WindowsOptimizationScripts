cls
color a
::Пользователю предлагается ввести "y" или "n" для удаления службы Telnet.
set /p answer=Do you want to remove the Telnet service? (y/n):
if /i "%answer%"=="y" (
    sc config TlntSrv start= disabled
    echo The Telnet service has been successfully disabled.                  V
) else (
    echo Disabling the Telnet service has been canceled.                      X
)
set /p answer0=Do you want to remove Widnows Media Center? (y/n):
if /i "%answer0%"=="y" (
    dism /online /disable-feature /featurename:MediaCenter
    echo The Windows Media Center has been successfully Delite.                  V
) else (
    echo deleting the Windows Media Center has been canceled.                      X
)
set /p answer1=Do you want to remove HELP FILES? (y/n):
if /i "%answer1%"=="y" (
    del /S /Q C:\Windows\Help\.
    rmdir /S /Q C:\Windows\Help
    echo The Help files has been successfully Delite.                  V
) else (
    echo deleting the Help files has been canceled.                      X
)
set /p answer2=Do you want to remove folder Windows.old? (y/n):
if /i "%answer2%"=="y" (
    cls
    dir C:\Windows.old
    tree C:\Windows.old
    rmdir /s /q C:\Windows.old
    del  C:\Windows.old
    echo successfully                                  V
) else (
    echo deleting the Windows.old has been canceled.                      X
)
cls
set /p answer2=Do you want to turn off desktop graphic effects? (y/n):
if /i "%answer2%"=="y" (
    REG ADD "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 0 /f
    echo Выставление производительности графики
    REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f
    cls
    echo successfully                                  V
) else (
    echo turning off desktop graphic effects has been canceled.                      X
)
cls
shutdown /r /t 0