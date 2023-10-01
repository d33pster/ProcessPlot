@echo off
runas /user:Administrator cmd
pip install pyinstaller
mkdir process-plot-win
pyinstaller --onefile setup --uac-admin -i main\pp.ico
del setup.spec
rmdir build /s /q
cd dist
copy ./setup.exe ../setup.exe
cd ..
rmdir dist /s /q
copy setup.exe process-plot-win\setup.exe
del setup.exe
