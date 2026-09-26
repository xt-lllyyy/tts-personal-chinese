#!/usr/bin/env bash
set -euo pipefail

mkdir -p dist
rm -rf dist/tts-personal-chinese
mkdir -p dist/tts-personal-chinese

cp install.sh requirements.txt download_models.sh sample_texts.txt run_inference.py README.md LICENSE .gitignore dist/tts-personal-chinese/

cd dist
zip -r tts-personal-chinese.zip tts-personal-chinese

echo
echo "已生成 ZIP 包："
echo "dist/tts-personal-chinese.zip"
