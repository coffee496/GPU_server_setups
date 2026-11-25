
# GPU Server Setups

## Overview

大学のGPUサーバにおけるPython仮想環境の構築および
有効化を簡略化するためのシェルスクリプトです．

## Features

- Pythonバージョンの選択（3.10 / 3.11 / 3.12）
- Python仮想環境の自動構築
- インストール済みパッケージの継承
- 既存の仮想環境の自動検出
- 仮想環境の選択および有効化

## Requirements

- 大学GPUサーバ
- Linux
- Bash
- Git

## Installation

GPUサーバにSSH接続した後，以下のコマンドを実行してください．

```bash
git clone https://github.com/coffee496/GPU_server_setups.git
cd GPU_server_setups
```

## Usage

### Initial Setup

```bash
bash setup.sh
```

使用するPythonのバージョンを選択してください．
選択したバージョンに対応する仮想環境が作成されます．

### Activation

```bash
source activate.sh
```

仮想環境が1つの場合は自動的に有効化されます．
複数存在する場合は，使用する仮想環境を選択してください．

### Deactivation

```bash
deactivate
```

## Directory Structure

```text
GPU_server_setups/
├── setup.sh
├── activate.sh
├── README.md
├── CHANGELOG.md
└── .gitattributes
```

## Notes

- 本ツールは大学の公式ツールではありません．
- 管理者権限は必要ありません．
- 既存の仮想環境は上書きしません．
- システムのPython環境は変更しません．
- ホームディレクトリ直下のmyvenv*を検出対象とします．
- GPUを用いた大規模計算にはSlurmを使用してください．

## References

- [Google Classroom（GPUサーバ関連資料）](https://classroom.google.com/w/NjkwMjQ2MDQ5ODEx/t/all)

本ツールは「GPUサーバの使い方 入門編 第1.06版」に基づいて作成しています．
資料の閲覧にはGoogle Classroomへのアクセス権限が必要です．

## Changelog

[CHANGELOG.md](CHANGELOG.md) を参照してください．
