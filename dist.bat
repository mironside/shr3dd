call "d:\program files\epic games\4.8\engine\build\batchfiles\RunUAT.bat" BuildCookRun -project=D:\UProjects\shr3dd\shr3dd.uproject -noP4 -platform=Win64 -clientconfig=Shipping -serverconfig=Shipping -cook -allmaps -NoCompile -stage -pak -archive -archivedirectory=%~dp0\Build\shr3dd
pushd %~dp0\Build\shr3dd
rd shr3dd /S /Q
move WindowsNoEditor shr3dd
del %~dp0\shr3dd.7z /F /Q
%~dp0\7z a -t7z %~dp0\shr3dd.7z -m0=lzma2 -mx=9 -xr!*.pdb -aoa shr3dd
copy /Y %~dp0\shr3dd.7z "d:\google drive\shr3dd.7z"
popd
