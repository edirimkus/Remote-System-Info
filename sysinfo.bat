@echo off
set /P "CompName=Please enter the computer name: "
systeminfo /s %CompName% | findstr /B /C:"Host Name" /C:"OS Name" /C:"OS Version" /C:"System Boot Time" /C:"System Manufacturer" /C:"System Model" /C:"System Type" /C:"Total Physical Memory"
pause