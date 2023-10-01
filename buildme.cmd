@echo off
pip install pyinstaller
mkdir process-plot-win
pyinstaller --onefile setup --uac-admin -i main\pp.ico
del setup.spec
runas /user:Administrator rmdir build /s /q
cd dist
copy ./setup.exe ../setup.exe
cd ..
runas /user:Administrator rmdir dist /s /q
copy setup.exe process-plot-win/setup.exe
del setup.exe
