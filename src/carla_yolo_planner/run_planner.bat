@echo off
chcp 65001 >nul
echo 正在激活 Conda 虚拟环境...
call conda activate carla_yolo

if %errorlevel% neq 0 (
    echo 错误：无法激活虚拟环境 carla_yolo
    pause
    exit /b 1
)

echo 正在切换到项目目录...
cd /d D:\gmj\nn\src\carla_yolo_planner

if %errorlevel% neq 0 (
    echo 错误：无法切换到目录 D:\gmj\nn\src\carla_yolo_planner
    pause
    exit /b 1
)

echo 正在启动 Carla YOLO Planner...
python main.py

echo 程序已退出
pause