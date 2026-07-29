@echo off
rem ============================================================
rem  binary-converter 로컬 서버 실행 파일
rem  - 더블클릭하면 http://localhost:5500 주소로 앱이 열립니다.
rem  - 창을 닫거나 Ctrl+C 를 누르면 서버가 꺼집니다.
rem  - 파이썬이 없으면 index.html 을 그냥 더블클릭해도 됩니다.
rem  [주의] 이 파일은 반드시 CP949(ANSI) 인코딩으로 저장해야 한글이 안 깨집니다.
rem ============================================================
cd /d "%~dp0"

where python >nul 2>nul
if errorlevel 1 goto nopython

echo.
echo   binary-converter 로컬 서버를 시작합니다.
echo   주소 : http://localhost:5500
echo   종료 : 이 창에서 Ctrl+C 를 누르거나 창을 닫으세요.
echo.

start "" http://localhost:5500/index.html
python -m http.server 5500
goto end

:nopython
echo.
echo   [알림] 파이썬을 찾을 수 없습니다.
echo   index.html 파일을 그냥 더블클릭해도 앱은 정상 작동합니다.
echo.
pause

:end
