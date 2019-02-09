@echo off
REM chkhtml.cmd for Windows
REM Description: Offline validator for HTML using the Nu HTML Checker (v.Nu)
REM Copyright TNG Consulting Inc. <www.tngconsulting.ca>
REM License: http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
REM Author: Michael Milette
REM Version: 0.2 BETA (initial public release on 2019-02-08)
REM Minimum Requirements:
REM - JRE 8
REM - The contents of the vnu.jar ZIP file from https://github.com/validator/validator/releases
REM Tested with JRE 8 to 11 on Windows 10.

REM Installation: Place this file and the vnu.jar files in C:\Users\%USERNAME%\AppData\Local\Microsoft\WindowsApps
REM Note: If you want to also see errors, remove the "--errors-only" parameter.

REM Command line syntax:
REM    chkhtml filename.html
REM    chkhtml foldername\*.html
REM    chkhtml https://cfc-swc.gc.ca/index.html

java.exe -Xss512k -jar C:\Users\%USERNAME%\AppData\Local\Microsoft\WindowsApps\vnu.jar --asciiquotes --errors-only %*
