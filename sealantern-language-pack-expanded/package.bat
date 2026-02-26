@echo off
REM Sea Lantern Expanded Language Pack - 打包腳本
REM 將插件打包為 ZIP 文件用於分發

setlocal enabledelayedexpansion

set "PLUGIN_DIR=%CD%"
set "ZIP_NAME=sealantern-language-pack-expanded-1.0.0.zip"
set "TEMP_DIR=%PLUGIN_DIR%\temp_pack"

echo.
echo ====================================
echo Sea Lantern Language Pack 打包工具
echo ====================================
echo.

REM 檢查必要文件
if not exist "%PLUGIN_DIR%\manifest.json" (
    echo ❌ 錯誤: 找不到 manifest.json
    exit /b 1
)

if not exist "%PLUGIN_DIR%\index.js" (
    echo ❌ 錯誤: 找不到 index.js
    exit /b 1
)

if not exist "%PLUGIN_DIR%\languages" (
    echo ❌ 錯誤: 找不到 languages 目錄
    exit /b 1
)

echo ✅ 檢查完成，所有必要文件存在
echo.

REM 創建臨時打包目錄
if exist "%TEMP_DIR%" (
    echo 🗑️  清空舊的臨時目錄...
    rmdir /s /q "%TEMP_DIR%"
)

mkdir "%TEMP_DIR%\sealantern-language-pack-expanded"
cd /d "%TEMP_DIR%\sealantern-language-pack-expanded"

REM 複製文件
echo 📋 複製文件...
copy "%PLUGIN_DIR%\manifest.json" .
copy "%PLUGIN_DIR%\index.js" .
copy "%PLUGIN_DIR%\README.md" .
copy "%PLUGIN_DIR%\CONTRIBUTING.md" .
copy "%PLUGIN_DIR%\.gitignore" .

REM 複製語言文件
mkdir languages
xcopy "%PLUGIN_DIR%\languages\*.json" languages\ /Y > nul

echo ✅ 文件複製完成
echo.

REM 統計
for /r languages %%F in (*.json) do set /a count+=1
echo 📚 語言文件: %count% 個
echo.

REM 刪除舊 ZIP
cd /d "%PLUGIN_DIR%"
if exist "%ZIP_NAME%" (
    echo 🗑️  刪除舊的 ZIP 文件...
    del "%ZIP_NAME%"
)

REM 打包為 ZIP (使用 PowerShell)
echo 📦 開始打包為 ZIP...
powershell -nologo -noprofile -command ^
    "Add-Type -A System.IO.Compression.FileSystem; ^
    [IO.Compression.ZipFile]::CreateFromDirectory('%TEMP_DIR%', '%PLUGIN_DIR%\%ZIP_NAME%')" 

if %ERRORLEVEL% equ 0 (
    echo ✅ 打包成功！
    echo.
    echo 📄 ZIP 文件信息:
    for %%F in ("%ZIP_NAME%") do (
        echo    文件名: %%~nxF
        echo    大小: %%~zF 字節
        echo    路徑: %PLUGIN_DIR%\%%~nxF
    )
    echo.
    echo 🎉 插件已準備好分發！
) else (
    echo ❌ 打包失敗
    exit /b 1
)

REM 清空臨時目錄
rmdir /s /q "%TEMP_DIR%"

echo.
echo ====================================
echo 打包完成！
echo ====================================
