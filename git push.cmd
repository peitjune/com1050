@echo off
setlocal enabledelayedexpansion

echo ===== Nhap thong tin Git =====
set /p name="Nhap user.name: "
set /p email="Nhap user.email: "

git config user.name "%name%"
git config user.email "%email%"

echo ===== CHON KIEU ADD =====
echo 1. Add tat ca file
echo 2. Add file tuy chon
set /p choice="Nhap lua chon (1/2): "

if "%choice%"=="1" (
    echo Dang add tat ca file...
    git add .
) else if "%choice%"=="2" (
    echo.
    git status
    echo.
    set /p files="Nhap ten file (cach nhau boi dau cach), neu ten file co dau cach thi phai cho trong "", vi du : "ten file.py": "
    
    if "!files!"=="" (
        echo Khong nhap file -> huy thao tac!
        pause
        exit /b
    )
    
    echo Dang add file: !files!
    git add !files!
) else (
    echo Lua chon khong hop le!
    pause
    exit /b
)

echo ===== DONE =====

echo ===== Commit =====
set /p msg="Nhap commit message: "
git commit -m "%msg%"

echo ===== Push =====
git push origin main

echo ===== DONE =====
pause