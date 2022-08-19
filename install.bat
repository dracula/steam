@echo off
setlocal

echo Installing CSS...

set originalfile=..\..\steamui\css\1010.css
set copiedfile=..\..\steamui\css\steam1010.css
set originallibrary=..\..\steamui\css\library.css
set copiedlibrary=..\..\steamui\css\steamlibrary.css

FOR /F "usebackq" %%A IN ('%originalfile%') DO set "originalfilesize=%%~zA"
set /A originalfilesize=%originalfilesize% + 0

if %originalfilesize% gtr 100 (
	echo Renaming 1010.css
	move %originalfile% %copiedfile%
	move %originallibrary% %copiedlibrary%
) else (
	if NOT exist %copiedfile% (
		echo The original 1010.css file is missing
		echo Please remove all files in /steamui/css/ and start Steam without flags to regain missing files
	)
)

cd css\

echo Copying custom css files into steamui\css

xcopy .\*.css ..\..\..\steamui\css\ /sy

echo Successfully copied custom css files
