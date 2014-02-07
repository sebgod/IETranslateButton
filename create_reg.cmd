@setlocal enabledelayedexpansion
@pushd %~dp0
@set exec=%~dp0IETranslateButton.exe
@set execEscaped=%exec:\=\\%

@echo Windows Registry Editor Version 5.00>register_button.reg
@echo.>>register_button.reg
@echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Extensions\{BE9DCBC5-EE8A-423D-97B9-D913016E3CD3}]>>register_button.reg
@echo "HotIcon"="%execEscaped%,1">>register_button.reg
@echo "Icon"="%execEscaped%,0">>register_button.reg
@echo "ButtonText"="Translate">>register_button.reg
@echo "clsid"="{1FBA04EE-3024-11d2-8F1F-0000F87ABD16}">>register_button.reg
@echo "Default Visible"="yes">>register_button.reg
@echo "Exec"="%execEscaped%">>register_button.reg

@popd
@endlocal
