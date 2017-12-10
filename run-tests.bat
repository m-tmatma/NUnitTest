@echo off
set test_path0=NUnitTest\bin\Debug\NUnitTest.dll
set test_path1=NUnitTest\bin\Release\NUnitTest.dll
set TESTS=

if exist %test_path0% (
	echo %test_path0%
	set TESTS=%TESTS% %test_path0%
)
if exist %test_path1% (
	echo %test_path1%
	set TESTS=%TESTS% %test_path1%
)

for /r . %%i in (nunit3-console.exe) do (
	if exist %%i (
		echo %%i %TESTS%
		%%i %TESTS%
		goto :break_nunit3_console
	)
)
:break_nunit3_console

for /r . %%i in (ReportUnit.exe) do (
	if exist %%i (
		echo %%i TestResult.xml
		%%i . TestResults
		goto :break_report_unit
	)
)
:break_report_unit
