# 开源中文 TTS 个人使用包

这是一个适合个人使用的开源中文 TTS 语音包模板。它遵循：
- 仅使用官方开源项目
- 仅使用公开数据集/公开模型
- 不提供、复制、克隆或复刻任何真人声线
- 仅供个人学习、实验和本地合成测试使用

## 适用场景
- 本地中文语音合成测试
- 学习 TTS 调参和脚本流程
- 个人娱乐型语音合成
- 构建自己的开源语音工程脚本

## 官方安全来源
- Coqui TTS: https://github.com/coqui-ai/TTS
- Hugging Face TTS 搜索: https://huggingface.co/models?search=tts
- Mozilla Common Voice: https://commonvoice.mozilla.org/
- OpenSLR: https://openslr.org/resources.php

## 使用方法

### 1) 安装
```bash
chmod +x install.sh
./install.sh
```

### 2) 激活虚拟环境
```bash
source .venv/bin/activate
```

### 3) 查看可用中文模型
```bash
python -m TTS --list_models | grep -i zh
```

### 4) 生成语音
```bash
python run_inference.py
```

输出会保存在 `output/` 目录下。

## 常见问题
### Q: 模型名不对
A: 不同版本的 Coqui TTS 会有不同模型目录名。请先执行：
```bash
python -m TTS --list_models | grep -i zh
```
然后使用当前版本的实际模型名。

### Q: 能不能直接使用“真人声线/某个声优”的语音包？
A: 不行。任何未经授权的真人声线复制、克隆与商用都不应当出现。此包只面向开源、公开、可合法使用的模型和数据。

### Q: 我想做自己的数据集
A: 可使用 Mozilla Common Voice 或 OpenSLR 的公开数据；若是你自己录音，请确保拥有授权，并明确数据许可与分发方式。

## 许可证说明
本包代码遵循 MIT 许可证（见 LICENSE）。
但第三方模型、权重和数据集仍受各自原始许可证约束；下载和使用前请自行确认。

## 免责声明
本包仅供合法、个人学习和研究用途。
请勿用于侵权、盗版、伪造、谣言、欺诈或任何不合法场景。
