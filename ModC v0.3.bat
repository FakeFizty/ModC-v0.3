:: Made by FakeFizty
::=============================================================================================

@echo off
title Mod C v3
setlocal enabledelayedexpansion
set /a number=1
set color=[
set color_dark_gray=%color%38;2;100;100;100m
set color_gray=%color%38;2;175;175;175m
set color_red=%color%38;2;255;0;0m
set color_pastel_blue=%color%38;2;110;153;181m
set color_pastel_green=%color%38;2;88;158;82m
set color_reset=%color%0m
set color_theme=%color_pastel_green%
set Preset_0_Name=None
goto :setup

:setup
if not exist "%localappdata%\ModC" (md "%localappdata%\ModC")
for /L %%h in (1,1,20) do (
    if not exist "%localappdata%\ModC\Preset%%h" (md "%localappdata%\ModC\Preset%%h")
)
if not exist "%localappdata%\ModC\data.bat" (
    call :createdatafile
)
if not exist "%localappdata%\ModC\active.bat" (
    call :createactivefile
)
if not exist "%localappdata%\ModC\settings.bat" (
    call :createsettingsfile
)
goto :main

:createdatafile
(
echo set Preset_1_Name=None
echo set Preset_2_Name=None
echo set Preset_3_Name=None
echo set Preset_4_Name=None
echo set Preset_5_Name=None
echo set Preset_6_Name=None
echo set Preset_7_Name=None
echo set Preset_8_Name=None
echo set Preset_9_Name=None
echo set Preset_10_Name=None
echo set Preset_11_Name=None
echo set Preset_12_Name=None
echo set Preset_13_Name=None
echo set Preset_14_Name=None
echo set Preset_15_Name=None
echo set Preset_16_Name=None
echo set Preset_17_Name=None
echo set Preset_18_Name=None
echo set Preset_19_Name=None
echo set Preset_20_Name=None
)>"%localappdata%\ModC\data.bat"
goto :eof

:createactivefile
(
echo set Active_Preset_Name=Preset_0_Name
)>"%localappdata%\ModC\active.bat"
goto :eof

:createsettingsfile
(
echo set color_theme=%color_theme%
)>"%localappdata%\ModC\settings.bat"
goto :eof

::=============================================================================================

:main
cls
call "%localappdata%\ModC\data.bat"
call "%localappdata%\ModC\active.bat"
call "%localappdata%\ModC\settings.bat"
echo Active Mod Preset: %color_theme%!%Active_Preset_Name%!%color_reset%
echo.
echo %color_theme%[0]%color_reset% Remove Mods
echo %color_theme%[M]%color_reset% Manage Preset Names
echo %color_theme%[S]%color_reset% Settings
echo %color_dark_gray%(Press any letter without keybind to refresh screen)%color_reset%
echo.
echo %color_theme%[1]%color_reset% %Preset_1_Name%
echo %color_theme%[2]%color_reset% %Preset_2_Name%
echo %color_theme%[3]%color_reset% %Preset_3_Name%
echo %color_theme%[4]%color_reset% %Preset_4_Name%
echo %color_theme%[5]%color_reset% %Preset_5_Name%
echo %color_theme%[6]%color_reset% %Preset_6_Name%
echo %color_theme%[7]%color_reset% %Preset_7_Name%
echo %color_theme%[8]%color_reset% %Preset_8_Name%
echo %color_theme%[9]%color_reset% %Preset_9_Name%
echo %color_theme%[10]%color_reset% %Preset_10_Name%
echo %color_theme%[11]%color_reset% %Preset_11_Name%
echo %color_theme%[12]%color_reset% %Preset_12_Name%
echo %color_theme%[13]%color_reset% %Preset_13_Name%
echo %color_theme%[14]%color_reset% %Preset_14_Name%
echo %color_theme%[15]%color_reset% %Preset_15_Name%
echo %color_theme%[16]%color_reset% %Preset_16_Name%
echo %color_theme%[17]%color_reset% %Preset_17_Name%
echo %color_theme%[18]%color_reset% %Preset_18_Name%
echo %color_theme%[19]%color_reset% %Preset_19_Name%
echo %color_theme%[20]%color_reset% %Preset_20_Name%
echo.
set /p input="Type in Preset Number>> "
if %input% equ M (goto :edit)
if %input% equ m (goto :edit)
if %input% equ S (goto :settings)
if %input% equ s (goto :settings)
if %input% gtr 20 (
    goto :main
)
if %input% equ 0 (
    del /Q "%appdata%\.minecraft\mods\*.*"
    call :createactivefile
    (
     echo set Active_Preset_Name=Preset_0_Name
    )>"%localappdata%\ModC\active.bat"
    goto :main
)
del /Q "%appdata%\.minecraft\mods\*.*"
xcopy /Q /Y "%localappdata%\ModC\Preset%input%\*.*" "%appdata%\.minecraft\mods"
(
echo set Active_Preset_Name=Preset_%input%_Name
)>"%localappdata%\ModC\active.bat"
goto :main

::=============================================================================================

:edit
cls
echo %color_dark_gray%Type in number of preset that you want to edit name of...%color_reset%
echo.
echo %color_dark_gray%To Return to Main Menu, type 0...%color_reset%
echo.
echo %color_theme%[1]%color_reset% %Preset_1_Name%
echo %color_theme%[2]%color_reset% %Preset_2_Name%
echo %color_theme%[3]%color_reset% %Preset_3_Name%
echo %color_theme%[4]%color_reset% %Preset_4_Name%
echo %color_theme%[5]%color_reset% %Preset_5_Name%
echo %color_theme%[6]%color_reset% %Preset_6_Name%
echo %color_theme%[7]%color_reset% %Preset_7_Name%
echo %color_theme%[8]%color_reset% %Preset_8_Name%
echo %color_theme%[9]%color_reset% %Preset_9_Name%
echo %color_theme%[10]%color_reset% %Preset_10_Name%
echo %color_theme%[11]%color_reset% %Preset_11_Name%
echo %color_theme%[12]%color_reset% %Preset_12_Name%
echo %color_theme%[13]%color_reset% %Preset_13_Name%
echo %color_theme%[14]%color_reset% %Preset_14_Name%
echo %color_theme%[15]%color_reset% %Preset_15_Name%
echo %color_theme%[16]%color_reset% %Preset_16_Name%
echo %color_theme%[17]%color_reset% %Preset_17_Name%
echo %color_theme%[18]%color_reset% %Preset_18_Name%
echo %color_theme%[19]%color_reset% %Preset_19_Name%
echo %color_theme%[20]%color_reset% %Preset_20_Name%
echo.
set /p editpresetinput="Enter Preset Number>> "
set /p editnameinput="Enter New Name>> "
set Preset_%editpresetinput%_Name=%editnameinput%
(
echo set Preset_1_Name=%Preset_1_Name%
echo set Preset_2_Name=%Preset_2_Name%
echo set Preset_3_Name=%Preset_3_Name%
echo set Preset_4_Name=%Preset_4_Name%
echo set Preset_5_Name=%Preset_5_Name%
echo set Preset_6_Name=%Preset_6_Name%
echo set Preset_7_Name=%Preset_7_Name%
echo set Preset_8_Name=%Preset_8_Name%
echo set Preset_9_Name=%Preset_9_Name%
echo set Preset_10_Name=%Preset_10_Name%
echo set Preset_11_Name=%Preset_11_Name%
echo set Preset_12_Name=%Preset_12_Name%
echo set Preset_13_Name=%Preset_13_Name%
echo set Preset_14_Name=%Preset_14_Name%
echo set Preset_15_Name=%Preset_15_Name%
echo set Preset_16_Name=%Preset_16_Name%
echo set Preset_17_Name=%Preset_17_Name%
echo set Preset_18_Name=%Preset_18_Name%
echo set Preset_19_Name=%Preset_19_Name%
echo set Preset_20_Name=%Preset_20_Name%
)>"%localappdata%\ModC\data.bat"
set Preset_0_Name=None
goto :main

::=============================================================================================

:settings
cls
echo %color_dark_gray%You can inport mods to presets at this location:%color_reset%
echo %color_dark_gray%C:\Users\USERNAME\AppData\Local\ModC%color_reset%
echo.
echo %color_theme%[T]%color_reset% Change Theme
echo.
echo Type "B" to Return to Main Menu
set /p settingsinput="Enter Letter>> "
if %settingsinput% equ T (goto :changetheme)
if %settingsinput% equ t (goto :changetheme)
if %settingsinput% equ B (goto :main)
if %settingsinput% equ b (goto :main)
goto :settings

:changetheme
cls
call "%localappdata%\ModC\settings.bat"
echo Enter VALID RGB Color.
echo.
echo %color_theme%This is example of current color%color_reset%
echo.
echo Type "B" to Return to Main Menu
echo Type "D" to Reset to Default Color
set /p R="Enter Red Color Value>> "
if %R% equ B (goto :main)
if %R% equ b (goto :main)
if %R% equ D (
    goto :defaultcolorsetup
)
if %R% equ d (
    goto :defaultcolorsetup
)
if %R% geq 256 (
    echo %color_red%Invalid Color Number%color_reset%
    pause
    goto :changetheme
)
if %R% lss 0 (
    echo %color_red%Invalid Color Number%color_reset%
    pause
    goto :changetheme
)
set /p G="Enter Green Color Value>> "
if %G% equ B (goto :main)
if %G% equ b (goto :main)
if %G% geq 256 (
    echo %color_red%Invalid Color Number%color_reset%
    pause
    goto :changetheme
)
if %G% lss 0 (
    echo %color_red%Invalid Color Number%color_reset%
    pause
    goto :changetheme
)
set /p B="Enter Blue Color Value>> "
if %B% equ B (goto :main)
if %B% equ b (goto :main)
if %B% geq 256 (
    echo %color_red%Invalid Color Number%color_reset%
    pause
    goto :changetheme
)
if %B% lss 0 (
    echo %color_red%Invalid Color Number%color_reset%
    pause
    goto :changetheme
)
goto :finalizecolortheme

:finalizecolortheme
(
echo set color_theme=%color%38;2;%R%;%G%;%B%m
)>"%localappdata%\ModC\settings.bat"
goto :changetheme

:defaultcolorsetup
(
echo set color_theme=%color_pastel_green%
)>"%localappdata%\ModC\settings.bat"
goto :changetheme