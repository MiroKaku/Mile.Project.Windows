@setlocal
@echo off

rem Change to the current folder.
cd "%~dp0"

rem Remove the output folder for a fresh compile.
rd /s /q Output

rem Initialize Visual Studio environment
call "%~dp0Mile.Project.Windows\Mile.Project.InitializeVisualStudioEnvironment.cmd"

rem Build all targets
MSBuild -m BuildAllTargets.proj

@endlocal