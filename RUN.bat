@echo off
cd /d C:\Users\bylm6\Downloads\ComfyUI_windows_portable_nvidia\ComfyUI_windows_portable
call C:\Users\bylm6\miniconda3\Scripts\activate.bat comfy-py-310
python -s ComfyUI\main.py --windows-standalone-build --fast fp16_accumulation
pause