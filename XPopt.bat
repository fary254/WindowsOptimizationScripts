cls
::Пользователю предлагается ввести "y" или "n" для удаления службы Telnet.
set /p answer=Do you want to remove the Telnet service? (y/n):
:: Если пользователь ввел "y", тогда служба будет отключена.
if /i "%answer%"=="y" (
    sc config TlntSrv start= disabled
    echo The Telnet service has been successfully disabled.                  V
) else (
    echo Disabling the Telnet service has been canceled.                      X
)
::cls
set /p answer0=Do you want to disable auto-update? (y/n):
if /i "%answer0%"=="y" (
    sc config wuauserv start= disabled
    echo The auto update has been successfully disabled.                       V
) else (
    echo Disabling the suto-update service has been canceled.                  X
)
::answer1
set /p answer1=Do you want to disable Remote Desktop Help Session Manager services? (y/n):
if /i "%answer1%"=="y" (
    sc config helpsvc start= disabled
    echo The Remote Desktop Help Session Manager services has been successfully disabled.        V
) else (
    echo Disabling the Remote Desktop Help Session Manager services service has been canceled.    X
)
::answer
set /p answer3=Do you want to disable Task Manager(Планировщик задач)? (y/n):
if /i "%answer3%"=="y" (
    sc config Schedule start= disabled
    echo Task Manager has been successfully disabled.                        V
) else (
    echo Disabling Task Manager has been canceled.                           X
)
set /p answer4=Do you want to disable COM services for burning CDs? (y/n):
if /i "%answer4%"=="y" (
    sc config ImapiService start= disabled
    echo COM services for burning CDs has been successfully disabled.        V
) else (
    echo Disabling COM services for burning CDs has been canceled.          X                     X                      
)
set /p answer5=Do you want to disable Remote registry? (y/n):
if /i "%answer5%"=="y" (
    sc config RemoteRegistry start= disabled
    echo COM services for burning CDs has been successfully disabled.        V
) else (
    echo Disabling Remote registry has been canceled.                        X                      
)
set /p answer6=Do you want to disable Error Logging Service? (y/n):
if /i "%answer6%"=="y" (
    sc config ERSvc start= disabled
    echo Error Logging Service has been successfully disabled.        V
) else (
    echo Disabling Error Logging Service has been canceled.                        X                      
)
set /p answer7=Do you want to disable Messaging service? (y/n):
if /i "%answer7%"=="y" (
    sc config Messenger start= disabled
    echo Messaging service has been successfully disabled.        V
) else (
    echo Disabling Messaging service has been canceled.                        X                      
)
set /p answer8=Do you want to disable Performance Logs and Alerts? (y/n):
if /i "%answer8%"=="y" (
    sc config SysmonLog start= disabled
    echo Performance Logs and Alerts has been successfully disabled.        V
) else (
    echo Disabling Performance Logs and Alertss has been canceled.                        X                      
)
set /p answer9=Do you want to delite built-in games? (y/n):
if /i "%answer9%"=="y" (
    del /Q "C:\Program Files (x86)\MSN Gaming Zone\Windows\*.*"
    del /Q "C:\Documents and Settings\All Users\Start Menu\Programs\Games\*"
    rmdir /Q /S "C:\Documents and Settings\All Users\Start Menu\Programs\Games"
    echo built-in games has been successfully delite.        V
) else (
    echo deliting built-in games has been canceled.                        X                      
)
set /p answer10=Do you want to delite Windows update in start menu? (y/n):
if /i "%answer10%"=="y" (
       reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoWindowsUpdate /t REG_DWORD /d 1 /f
       reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoSMHelp /t REG_DWORD /d 1 /f
       del "C:\Documents and Settings\All Users\Start Menu\Windows Update"
    echo Windows update has been successfully delite.        V
) else (
    echo deliting Windows update has been canceled.                        X                      
)
set /p answer11=Do you want to delite Introducing Windows XP? (y/n):
if /i "%answer11%"=="y" (
    del /Q "C:\WINDOWS\system32\tourstart.exe"
    echo Introducing Windows XP has been successfully delite.        V
) else (
    echo deliting Windows update has been canceled.                        X                      
)
set /p answer12=Do you want to delite Hyper Terminal(telnet termenal)? (y/n):
if /i "%answer12%"=="y" (
    ::delete exe
    del /Q "C:\Program Files\Windows NT\hypertrm.exe"
    echo hyper termenal has been successfully delite.        V
) else (
    echo deliting Windows update has been canceled.                        X                      
)
set /p answer13=Do you want to set classic theme? (y/n):
if /i "%answer13%"=="y" (
       rundll32.exe shell32.dll,Control_RunDLL desk.cpl desk,@Themes /Action:OpenTheme /file:"C:\Windows\Resources\Themes\Windows Classic.theme"
    echo Classic theme has been successfully set.        V
) else (
    echo Seting Classic theme has been canceled.                        X                      
)
cls
shutdown /r


