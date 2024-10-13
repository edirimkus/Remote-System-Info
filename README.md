# Remote System Info

## Overview
This batch script fetches and displays specific system information from a remote computer. It prompts the user to enter the name of the remote computer, then retrieves and shows key details such as Host Name, OS Name, OS Version, System Boot Time, System Manufacturer, System Model, System Type, and Total Physical Memory.

## Script Breakdown
1. **Prompt for Computer Name:**
   Prompts the user to enter the name of the remote computer.
   ```batch
   @echo off
   set /P "CompName=Please enter the computer name: "

   ```

2. **Fetch and Display System Information**: Retrieves system information from the specified remote computer and filters the output to show only the desired details.
   ```batch
   systeminfo /s %CompName% | findstr /B /C:"Host Name" /C:"OS Name" /C:"OS Version" /C:"System Boot Time" /C:"System Manufacturer" /C:"System Model" /C:"System Type" /C:"Total Physical Memory"
   ```

3. **Pause to View Results**: Pauses the script so the user can review the output before the window closes.
   ```batch
   pause
   ```

## Usage

1. **Run the Script**: Execute the script in an elevated Command Prompt session.
   ```batch
   .\remote-system-info.bat
   ```

## License
This script is licensed under the MIT License. See the LICENSE file for details.


