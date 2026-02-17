set PREFIX=%LIBRARY_PREFIX:\=/%
bash %RECIPE_DIR%/build.sh
if errorlevel 1 exit 1
