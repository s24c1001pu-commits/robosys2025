# robosys2025

このソフトウェアパッケージは、**GNU GPL 3.0（GNU General Public License version 3）** の下で配布されます。  
再頒布および改変が許可されていますが、GPL 3.0 の条項に従う必要があります。

© 2025 Ryuichi Ueda

## 説明

`kadai` コマンドは、指定したファイルや標準入力の**文字数をカウント**するシンプルなツールです。  
---

## ライセンスおよび著作権

- このソフトウェアパッケージは、**3条項BSDライセンス（BSD-3-Clause）** の下、再頒布および使用が許可されています。
- © 2025 Takuto

## 利用しているライブラリ・コード・ドキュメント

- このパッケージは、講義資料  
  **「ロボットシステム学 2025」**  
  に掲載されているコードおよび構成を参考にしています。
- 講義資料は、下記スライド（**CC-BY-SA 4.0 by Ryuichi Ueda**）として公開されています。
  - [ryuichiueda/slides_marp robosys_2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)
- 本パッケージに含まれるコードは、上記資料を参考にしつつ、**内容を理解した上で自分自身の著作として作成したもの**です。
- 参考にした資料・コードの著作権は **Ryuichi Ueda 氏** に帰属します。

標準入力にも対応しているため、パイプを利用したテキスト処理の一部としても利用できます。

## 特徴

- ファイル入力、標準入力の両方に対応
- 結果は標準出力に文字数のみ表示
- シンプルで便利な文字数カウント

## インストールの手順

1. このリポジトリをクローン  
```bash

$ git clone https://github.com/s24c1001pu-commits/robosys2025.git
$ cd robosys2025

2. 実行権限を付与

$ chmod +x kadai

# 使用例

標準入力から文字数をカウント

$ echo "hello world" | ./kadai
文字数: 11

ファイルから文字数をカウント

$ ./kadai test.txt
文字数: 42


#テスト

GitHub Actions による自動テストを設定済みです。ローカルでも以下で確認可能です。

$ ./test/test_kadai.bats

---

## ライセンスおよび著作権

- このソフトウェアパッケージは、**3条項BSDライセンス（BSD-3-Clause）** の下、再頒布および使用が許可されています。
- © 2025 Takuto

## 利用しているライブラリ・コード・ドキュメント

- このパッケージは、講義資料  
  **「ロボットシステム学 2025」**  
  に掲載されているコードおよび構成を参考にしています。
- 講義資料は、下記スライド（**CC-BY-SA 4.0 by Ryuichi Ueda**）として公開されています。
  - [ryuichiueda/slides_marp robosys_2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)
- 本パッケージに含まれるコードは、上記資料を参考にしつつ、**内容を理解した上で自分自身の著作として作成したもの**です。
- 参考にした資料・コードの著作権は **Ryuichi Ueda 氏** に帰属します。


