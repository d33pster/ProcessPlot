@echo off
pip install pyinstaller
mkdir process-plot-win
pyinstaller --onefile setup --uac-admin -i main\pp.ico
del setup.spec
del build /s /q
rmdir build
cd dist
copy setup.exe ..\setup.exe
cd ..
del dist /s /q
rmdir dist
copy setup.exe process-plot-win\setup.exe
del setup.exe
