@echo off
echo ========================================
echo   DocScanner Pro - Setup
echo ========================================
echo.

where node >nul 2>nul
if %errorlevel% neq 0 (
  echo [ERROR] Node.js পাওয়া যায়নি!
  echo         https://nodejs.org থেকে ডাউনলোড করুন
  pause
  exit /b 1
)

echo [OK] Node.js পাওয়া গেছে
echo.
echo [*] ডিপেন্ডেন্সি ইনস্টল হচ্ছে...
call npm install

if %errorlevel% neq 0 (
  echo [ERROR] ইনস্টলেশন ব্যর্থ!
  pause
  exit /b 1
)

echo.
echo [OK] ইনস্টলেশন সম্পন্ন!
echo.
echo ========================================
echo   অ্যাপ চালু করুন: npm start
echo   Windows EXE তৈরি: npm run build-win
echo ========================================
pause
