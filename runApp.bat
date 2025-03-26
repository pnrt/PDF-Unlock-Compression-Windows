@echo off
setlocal

REM Set Java executable (Optional: Modify if needed)
set "JAVA_EXEC=java"

REM Path to your JAR file
set "JAR_PATH=%~dp0org.pnrt-windows-x64-1.0.0.jar"

REM Check if Java is installed
%JAVA_EXEC% -version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Java is not installed or not found in PATH.
    echo Please install Java or set JAVA_HOME correctly.
    pause
    exit /b
)

REM Check if the JAR file exists
if not exist "%JAR_PATH%" (
    echo ERROR: JAR file not found at "%JAR_PATH%".
    echo Please ensure the JAR file is in the correct location.
    pause
    exit /b
)

REM Run the JAR file
echo Starting application...
%JAVA_EXEC% -jar "%JAR_PATH%"

REM Exit when the app closes
exit
