@ECHO OFF

:: Cambiar "Picker" a "PartyPack"
CD ".\Main\games"
RENAME "Picker" "PartyPack"
:: Copiar y pegar "ArchivosEGSySwitch"
CD ..
CD ..
xcopy "ArchivosEGSySwitch" "Main" /s /y
:: Poner cosas que pasar en repositorio
CD ..
xcopy "Cosas que pasar" "The-Jackbox-Party-Pack-5-Spanish/Main" /s /y
:: Hacer versión EGS y Switch en JPP5-ES-EGS-SWITCH.zip
CD ".\The-Jackbox-Party-Pack-5-Spanish\Main"
DEL "jbg.config.jet"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP5-ES-EGS-SWITCH.zip" "."
:: Copiar y pegar "ArchivosMacEGS"
CD ..
xcopy "ArchivosMacEGS" "Main" /s /y
CD "Main"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP5-ES-MAC-EGS.zip" "."
:: Cambiar "PartyPack" a "Picker"
CD ".\games"
RENAME "PartyPack" "Picker"
:: Borrar "RapBattle/TalkshowExport/project/data"
RD ".\RapBattle\TalkshowExport\project\data" /q /s
:: Copiar y pegar "ArchivosSteam"
CD ..
CD ..
xcopy "ArchivosSteam" "Main" /s /y
:: Hacer versión Steam en JPP5-ES.zip
CD "Main"
DEL "config.jet"
:: Hacer versión Steam en JPP5-ES.zip
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP5-ES.zip" "."
:: Borrar "games\SplitTheRoom\videos\splittheroom_introaudience.usm"
DEL ".\games\SplitTheRoom\videos\splittheroom_introaudience.usm"