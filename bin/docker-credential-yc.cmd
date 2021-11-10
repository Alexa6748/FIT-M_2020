@echo off
rem Path to yc executable (by default from the same directory)
IF "%$YC%"=="" SET YC=%~dp0%yc.exe

rem fallback to yc from $env:Path if not set explicitly and doesn't exist in the same directory
IF NOT EXIST %YC% SET YC=yc

CALL "%YC%" --no-user-output container docker-credential %*