@echo off

set "BUILD_DIR=.\build"

call .\setup.bat
set PATH=F:\LEARN\HandmadeHero;%PATH%


if not exist "%BUILD_DIR%" (
    echo Build directory does not. Creating it...
    mkdir  "%BUILD_DIR%"
    
    if errorlevel 1 (
        echo Failed to create a build directory.
    ) else (
        echo Build directory created succeccfully.
    )
) else (
    pushd .\build
    cl ..\HandmadeHero.cpp
    popd 
)
