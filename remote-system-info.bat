@echo off
REM Prompt for computer name
set /P "CompName=Please enter the computer name: "

REM Fetch and display system information
systeminfo /s %CompName% | findstr /B /C:"Host Name" /C:"OS Name" /C:"OS Version" /C:"System Boot Time" /C:"System Manufacturer" /C:"System Model" /C:"System Type" /C:"Total Physical Memory"

REM Pause to allow user to view the results
pause
