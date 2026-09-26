import os
from pathlib import Path

from TTS.api import TTS

# 个人使用 / 开源中文 TTS 推理脚本
# 仅使用官方开源模型和公开语料，不包含任何未授权真人声线拷贝

MODEL_NAME = os.getenv("TTS_MODEL", "tts_models/zh-CN/baker/tacotron2-DDC-GST")
OUT_DIR = Path("output")
OUT_DIR.mkdir(exist_ok=True)

def read_texts(path: str):
    with open(path, "r", encoding="utf-8") as f:
        return [line.strip() for line in f if line.strip()]

def main():
    texts = read_texts("sample_texts.txt")
    print(f"使用模型: {MODEL_NAME}")
    print(f"待合成文本数: {len(texts)}")
    print("正在初始化 TTS 模型...")

    # 若有 GPU，可使用 gpu=True
    # 仅使用官方公开权重，不能克隆任何真人声线
    tts = TTS(model_name=MODEL_NAME, progress_bar=False, gpu=False)

    for idx, text in enumerate(texts, 1):
        out_path = OUT_DIR / f"sample_{idx:02d}.wav"
        try:
            tts.tts_to_file(text=text, file_path=str(out_path))
            print(f"已生成: {out_path}")
        except Exception as e:
            print(f"失败: {text}")
            print(f"错误: {e}")
            print("提示：当前安装版本可能模型名不同，请运行：python -m TTS --list_models | grep -i zh")
            break

if __name__ == "__main__":
    main()
