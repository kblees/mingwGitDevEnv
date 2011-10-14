#!/bin/sh

path=$(reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Inno Setup 5_is1" | grep InstallLocation | cut -c 34-)
iscc="$path/ISCC.exe"

if [ -f $iscc ]; then
    $iscc installer.iss
else
    echo "ERROR: Unable to find an Inno Setup installation."
    exit 1
fi
