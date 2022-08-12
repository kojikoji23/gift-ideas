# アプリケーション名  
GIFT IDEAS  

# アプリケーション概要  
今まで自身がもらって嬉しかった贈り物やあげて喜ばれた贈り物を共有し  
利用者がプレゼントを贈る際のヒントを得ることができる情報共有アプリ。  

# URL  
https://gift-ideas-38098.herokuapp.com/  

# テスト用アカウント  
* Basic認証ID : admin  
* Basic認証パスワード : 3333  
* メールアドレス : ao@com  
* パスワード : ao1234  

# 利用方法  

### ギフト投稿  
1. トップページ(一覧ページ)のヘッダーからユーザー新規登録を行う  
2. 投稿ボタンから、ギフトの内容(ギフト名、レビュー、画像、URL、贈った相手の年齢層・性別、贈るシーン、ギフトの価格帯)を入力し投稿する  

### ギフト検索  
1. トップページ(一覧ページ)のヘッダーからシーンを選択  
2. 表示されたギフトをクリックし詳細情報を確認する  

# 洗い出した要件  
https://docs.google.com/spreadsheets/d/1KsucZFyMP4Q2x6z2Q4klN9T_KEtsdQyiFHsJ-1kZgaw/edit?usp=sharing  

# 実装した機能についてのGIF  
### ギフト投稿  
[![Image from Gyazo](https://i.gyazo.com/bf76d18ee36c882109ba8eb1abf48c0b.gif)](https://gyazo.com/bf76d18ee36c882109ba8eb1abf48c0b)

### ギフト検索  
[![Image from Gyazo](https://i.gyazo.com/c60d8b915c227b4dded6651017bc5a11.gif)](https://gyazo.com/c60d8b915c227b4dded6651017bc5a11)

# 実装予定の機能  
* いいね/フォロー機能  
* 詳細検索機能  

# データベース設計  
[![Image from Gyazo](https://i.gyazo.com/820f8cbaf034cb636df5f77ba85b1c8c.png)](https://gyazo.com/820f8cbaf034cb636df5f77ba85b1c8c)

# 画面遷移図  
[![Image from Gyazo](https://i.gyazo.com/3e3455b123711d0303689134522953ac.png)](https://gyazo.com/3e3455b123711d0303689134522953ac)


# 開発環境  
* フロントエンド  
* バックエンド  
* インフラ  
* テスト  
* テキストエディタ  
* タスク管理  

# ローカルでの動作方法  
以下コマンドを順に実行。  
% git clone https://github.com/kojikoji23/gift-ideas.git  
% cd gift-ideas  
% bundle install  
% yarn install  

# 工夫したポイント  
### カリキュラム外の機能  
* ギフト検索機能  
投稿が増えた場合を想定して絞り込みを行う必要があったため
* "Rinku"を用いたURLの投稿機能  
同じものを購入したいと感じた場合にそのまま購入サイトに遷移させるため  

### その他  
* スマホ表示用にレスポンシブ化  
* ギフト投稿サイトということで柔らかく幸せな雰囲気を出すためにCSSにてあらゆる角を丸く修正

