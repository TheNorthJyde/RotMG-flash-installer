echo off
cls

if not exist "C:\Users\%USERNAME%\Documents\Realm\flashplayer18_sa.exe" ( start "" https://cdn.discordapp.com/attachments/410511142696517633/464721079823237120/flashplayer18_sa.exe 
timeout 4
) 

if not exist "C:\Users\%USERNAME%\Documents\Realm" mkdir "C:\Users\%USERNAME%\Documents\Realm"

rem if not exist "C:\Users\%USERNAME%\Documents\Realm\flashplayer18_sa.exe" 

move "C:\Users\%USERNAME%\Downloads\flashplayer18_sa.exe" "C:\Users\%USERNAME%\Documents\Realm"


( 
echo cd "C:\Users\%USERNAME%\Documents\Realm"
echo start flashplayer18_sa https://www.realmofthemadgod.com/client 
echo Exit)> "C:\Users\%USERNAME%\Documents\Realm\Launch Realm.bat"


set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Desktop\ROTMG.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "C:\Users\%USERNAME%\Documents\Realm\Launch Realm.bat" >> %SCRIPT%
echo oLink.IconLocation = "https://raw.githubusercontent.com/TheNorthJyde/RotMG-flash-installer/master/oryx.ico" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%
