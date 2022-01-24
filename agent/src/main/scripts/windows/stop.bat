@echo on

echo "Stopping Testsigma Agent"
SET INSTALLATION_FOLDER1=%~dp0
SET INSTALLATION_FOLDER=%INSTALLATION_FOLDER1:~0,-1%
CD /D %INSTALLATION_FOLDER%
SET TS_DATA_DIR=%userprofile%\AppData\Roaming\Testsigma\Agent
SET TS_ROOT_DIR=%INSTALLATION_FOLDER%
SET TS_AGENT_JAR_PATH=%INSTALLATION_FOLDER%
SET MAIN_JAR_FILE=%INSTALLATION_FOLDER%\agent-launcher.jar
SET LOGGING_LEVEL=INFO

SET /P PID= < "%TS_DATA_DIR%\process.pid"
"%TS_ROOT_DIR%\windows-kill" -SIGINT %PID%