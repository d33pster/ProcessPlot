@echo off
pip install pyinstaller
mkdir process-plot-win
pyinstaller --onefile setup --uac-admin -i main\pp.ico
rm setup.spec
rm -r build
cd dist
copy ./setup.exe ../setup.exe
cd ..
rm -r dist
copy setup.exe process-plot-win\setup.exe
rm setup.exe
