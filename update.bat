@echo off
setlocal enabledelayedexpansion

rem Prompt the user for the target directory containing replacement files
set /p "sourceDirectory=Enter the path to the directory Unturned Managed directory to update files: "

rem Set the destination directory where the files will be replaced
set "destinationDirectory=.\redist"

rem Ensure the destination directory exists
if not exist "%destinationDirectory%" (
    echo Destination directory does not exist.
    exit /b 1
)

rem Ensure the source directory exists
if not exist "%sourceDirectory%" (
    echo Source directory does not exist.
    exit /b 1
)

rem Only process redistributable payloads (ignore nuspec/readme/license)
set "missingCount=0"
for %%F in ("%destinationDirectory%\*.dll" "%destinationDirectory%\*.xml") do (
    if not exist "%sourceDirectory%\%%~nxF" (
        echo Missing in managed directory: %%~nxF
        set /a missingCount+=1
    )
)

if !missingCount! gtr 0 (
    echo Found !missingCount! missing file(s) in the managed directory. Aborting.
    exit /b 1
)

rem Second pass: copy files now that all exist
for %%F in ("%destinationDirectory%\*.dll" "%destinationDirectory%\*.xml") do (
    copy /y "%sourceDirectory%\%%~nxF" "%destinationDirectory%" >nul
    echo %%~nxF replaced.
)

echo Replacement completed.
exit /b 0
