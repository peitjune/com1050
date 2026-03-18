@echo off

echo ===== Nhap thong tin Git =====
set /p name="Nhap user.name: "
set /p email="Nhap user.email: "

git config user.name "%name%"
git config user.email "%email%"

echo ===== Git Add =====
git add .

echo ===== Commit =====
set /p msg="Nhap commit message: "
git commit -m "%msg%"

echo ===== Pull (tranh loi) =====
git pull origin main --rebase

echo ===== Push =====
git push origin main

echo ===== DONE =====
pause