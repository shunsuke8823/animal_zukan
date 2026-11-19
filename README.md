# 動物図鑑

## アプリ概要

このアプリは、動物を調べたい人が、動物分類から調べたい動物を探し、詳細を確認できるアプリです。

### 機能一覧
- 動物の一覧を見ることができる
- 動物分類タブを押すと、動物を絞り込むことができる
- 動物のリンクを押すと、動物の詳細を確認できる

## 作成した理由

- 卒業制作に使用するTurbo Frameを使用した絞り込み機能を制作前にミニアプリで練習したかったため。
- 同じく卒業制作で使用するTailwind CSSでミニアプリを作成し、使用感を確かめたかったため。

## 使用技術

| 役割 | 技術名 | バージョン |
| --- | --- | --- |
| バックエンド言語 | Ruby | 3.4.12 |
| Webアプリケーションフレームワーク | Ruby on Rails | 8.1.4.1 |
| CSSフレームワーク | Tailwind CSS | 4.3.4 | 
| フロントエンドフレームワーク | Turbo | 2.0.23 |
| DB | PostgreSQL | 17 |

## 環境構築手順

### 必要なもの 
- Docker desktop(ない場合は下記URLからダウンロードし、起動した状態にしておいてください)
  - https://www.docker.com/ja-jp/products/docker-desktop/

- ターミナルに下記コマンドを入力し、このアプリをクローンしてください。
```bash
git clone https://github.com/shunsuke8823/animal_zukan.git
```

- clone後、animal_zukanディレクトリに移動し下記コマンドを実行してアプリをビルドしてください。
```bash
docker compose build
```

- ビルド完了後、下記コマンドを実行してコンテナを起動してください。※logを確認したい場合は-dを外してください。
```bash
docker compose up -d
```

- dbコンテナとwebコンテナが正常に起動したら、下記コマンドを上から順番に実行し、DBの構築と用意されたデータのDB保存をしてください。
```bash
docker compose exec web bin/rails db:create
docker compose exec web bin/rails db:migrate
docker compose exec web bin/rails db:seed
```

- DB構築後、localhost:3000をブラウザで開いて、動物一覧が表示されれば環境構築終了です。

- コンテナを閉じたい場合は下記コマンドを入力し終了してください。
```bash
docker compose down
```