@echo off

setlocal enabledelayedexpansion
set i=0

for %%f in (*.mp4) do (
    set /a i+=1
    ffmpeg.exe -i "%%f" "!i!.mp4"
)

endlocal

@pause