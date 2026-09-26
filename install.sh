#!/usr/bin/env bash
set -euo pipefail

# 个人用途开源 TTS 安装脚本（中文）
# 只从官方渠道下载：GitHub / Hugging Face / Mozilla Common Voice / OpenSLR

python3 --version || {
  echo "Python 3 未安装，请先安装 Python 3.10+。"
  exit 1
}

if [ ! -d ".venv" ]; then
  python3 -m venv .venv
fi

source .venv/bin/activate

python -m pip install --upgrade pip setuptools wheel

# Coqui TTS 官方开源实现
# 其模型和语音能力来自官方仓库与公开权重
python -m pip install "TTS>=0.22.0"

# 常用音频处理库
python -m pip install soundfile librosa numpy scipy

echo
echo "安装完成。"
echo "下一步："
echo "1) source .venv/bin/activate"
echo "2) ./download_models.sh"
echo "3) python run_inference.py"
echo
echo "官方安全来源："
echo "  - Coqui TTS: https://github.com/coqui-ai/TTS"
echo "  - Hugging Face: https://huggingface.co/models?search=tts"
echo "  - Mozilla Common Voice: https://commonvoice.mozilla.org/"
echo "  - OpenSLR: https://openslr.org/resources.php"
