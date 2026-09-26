#!/usr/bin/env bash
set -euo pipefail

source .venv/bin/activate

echo "查看可用中文 TTS 模型（官方 Coqui TTS 列表）..."
python -m TTS --list_models | grep -i "zh" || true

echo
echo "建议使用官方中文模型，例如："
echo "  tts_models/zh-CN/baker/tacotron2-DDC-GST"
echo "  也可以根据当前版本输出，选择适配的 zh / cn 模型。"
echo
echo "如果你已经确认模型名，可直接运行："
echo '  python -m TTS --model_name "tts_models/zh-CN/baker/tacotron2-DDC-GST" --text "你好，世界" --out_path output.wav'
echo
echo "或者用脚本 run_inference.py 做批量合成。"

echo
echo "注意："
echo "  - 仅从官方来源下载：GitHub / Hugging Face / Mozilla Common Voice / OpenSLR"
echo "  - 不下载任何未授权的真人声线克隆或私有音源"
