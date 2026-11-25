
# GPU Server Setups

大学のGPUサーバにおけるPython仮想環境の構築および
有効化を簡略化するためのシェルスクリプトです．

## 機能

- Pythonバージョンの選択（3.10 / 3.11 / 3.12）
- Python仮想環境の自動構築
- インストール済みパッケージの継承
- 既存の仮想環境の自動検出
- 仮想環境の選択および有効化

## 動作環境

- 大学GPUサーバ
- Linux
- Bash

## インストール

GPUサーバにSSH接続した後，以下のコマンドを実行してください．

```bash
git clone https://github.com/coffee496/GPU_server_setups.git
cd GPU_server_setups
```

## 使用方法

### 初回セットアップ

```bash
bash setup.sh
```

使用するPythonのバージョンを選択してください．
選択したバージョンに対応する仮想環境が作成されます．

### 仮想環境の有効化

```bash
source activate.sh
```

仮想環境が1つの場合は自動的に有効化されます．
複数存在する場合は，使用する仮想環境を選択してください．

### 仮想環境の終了

```bash
deactivate
```

## ディレクトリ構成

```text
GPU_server_setups/
├── setup.sh
├── activate.sh
├── README.md
├── CHANGELOG.md
└── .gitattributes
```

## 注意事項

- 本ツールは大学の公式ツールではありません．
- 管理者権限は必要ありません．
- 既存の仮想環境は上書きしません．
- システムのPython環境は変更しません．
- GPUを用いた大規模計算にはSlurmを使用してください．
- GPUサーバ実機での動作確認は未実施です．

## 更新履歴

[CHANGELOG.md](CHANGELOG.md) を参照してください．
