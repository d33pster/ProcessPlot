@echo off
pip install pyinstaller
mkdir process-plot-win
cd process-plot-win
mkdir main
cd ..
pyinstaller --onefile setup --uac-admin -i main\pp.ico
del setup.spec
del build /s /q
rmdir /s /q build
cd dist
copy setup.exe ..\setup.exe
cd ..
del dist /s /q
rmdir /s /q dist
copy setup.exe process-plot-win\setup.exe
del setup.exe
cd main
pyinstaller --onefile prop --uac-admin -i pp-app.ico
pyinstaller --onefile prop-custom --uac-admin -i pp-app.ico
pyinstaller --onefile prop-help -i pp-app.ico
del prop.spec
del prop-custom.spec
del prop-help.spec
del build /s /q
rmdir /s /q build
cd dist
copy prop.exe ..\prop.exe
copy prop-custom.exe ..\prop-custom.exe
copy prop-help.exe ..\prop-help.exe
cd ..
del dist /s /q
rmdir /s /q dist
copy prop.exe ..\process-plot-win\main
copy prop-call.dat ..\process-plot-win\main
copy prop-call2.dat ..\process-plot-win\main
copy prop-custom.exe ..\process-plot-win\main
copy prop-gui.cmd ..\process-plot-win\main
copy prop-gui-call.dat ..\process-plot-win\main
copy prop-help.exe ..\process-plot-win\main
del prop.exe
del prop-custom.exe
del prop-help.exe
cd ..
echo done.
echo
echo
echo "Running Setup Script ..."
cd process-plot-win
setup