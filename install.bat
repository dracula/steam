@echo off
setlocal

echo Installing CSS...

set originalfile=..\..\steamui\css\5.css
set copiedfile=..\..\steamui\css\steam5.css

FOR /F "usebackq" %%A IN ('%originalfile%') DO set "originalfilesize=%%~zA"
set /A originalfilesize=%originalfilesize% + 0

if %originalfilesize% gtr 100 (
	echo Renaming 5.css
	move %originalfile% %copiedfile%
) else (
	if NOT exist %copiedfile% (
		echo The original 5.css file is missing
		echo Please remove all files in /steamui/css/ and start Steam without flags to regain missing files
	)
)

cd css\

echo Copying custom css files into steamui\css

xcopy .\*.css ..\..\..\steamui\css\ /sy

echo Successfully copied custom css files
