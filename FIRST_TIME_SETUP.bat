@echo off
chcp 65001 >nul
echo ========================================
echo   ComfyUI-LayerDivider RTX5060 安装脚本
echo ========================================
echo.

:: 创建conda虚拟环境
echo [1/4] 创建虚拟环境 comfy-py-310...
call conda create -n comfy-py-310 python=3.10 -y
echo.

:: 激活环境
echo [2/4] 激活虚拟环境...
call conda activate comfy-py-310
echo.

:: 安装PyTorch cu128
echo [3/4] 安装 PyTorch (CUDA 12.8)...
pip install torch==2.11.0+cu128 torchvision==0.26.0+cu128 --index-url https://download.pytorch.org/whl/cu128
echo.

:: 安装LayerDivider依赖
echo [4/4] 安装 LayerDivider 依赖...
pip install segment-anything==1.0
pip install onnxruntime-gpu==1.23.2
pip install pytoshop-fix-packbits==1.1.8
pip install psd-tools==1.17.0
pip install opencv-python
pip install scipy
echo.

echo ========================================
echo 安装完成！以后每次启动请运行 RUN.bat
echo ========================================
pause
