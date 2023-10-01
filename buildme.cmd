@echo off
pip install pyinstaller
mkdir process-plot-win
pyinstaller --onefile setup --uac-admin -i main\pp.ico