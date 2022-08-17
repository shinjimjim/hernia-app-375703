# アプリケーション名
ヘルニア改善アプリ
Heal-nia
<br>
<br>

# アプリケーションの概要

- 登録させたユーザーは、カレンダー形式でヘルニア改善までの行動を記録する事ができます。
- 管理者はユーザーの登録ができ、ユーザーの記録した行動をカレンダー形式で見る事ができます。
- 管理者ユーザーと一般ユーザーは、チャット機能で相互にコミュニケーションが取れます。

<br>
<br>

# なぜこのアプリケーションを作ろうと思ったのか

<p>ヘルニアという病気は、完治することがなく生活習慣を改善することでヘルニアも改善していきます。</p>
<p>しかし、ヘルニアの改善には個人差があり数週間で改善する人もあれば数ヶ月かかる人もいます。</p>
<p>そのため、症状の経過観察が必要で、病院に通院する際は1ヶ月様子を見ることもあります。</p>
<p>その間、自分の行っている改善策が効果的なのか分からず不安な日々が続くことになります。</p>
<p>このアプリケーションはそのような人の手助けになれればと思い作成しました。</p>

<br>
<br>

# URL

#### Herokuによるデプロイ
https://hernia-app-375703.herokuapp.com/

# テスト用アカウント

### 管理者用
- メールアドレス: test@test.com
- パスワード: 111aaa

### 一般ユーザー用
- メールアドレス: test1@test.com
- パスワード: 111aaa
<br>
<br>

# 利用方法

### 管理者サイド
1.管理者用のメールアドレスとパスワードを入力したらユーザー選択ページへ遷移します。
<br>
2.ユーザを選択するとそのユーザーの記録した一覧ページへ遷移します。
<br>
3.トップページの「ルーム作成」ボタンを押したらチャットルーム作成画面へ遷移します。
<br>
4.チャットルームを作成したら任意の一般ユーザーとチャットができます。


### 一般ユーザーサイド
1.メールアドレスとパスワードを入力したら一覧ページへ遷移します。
<br>
2.外面下部の「経過観察」ボタンから登録ページへ遷移できます。
<br>
3.必要事項を選択し「登録」ボタンを押したら一覧ページに戻り記録が反映されます。
<br>
4.画面下部の「相談ボタン」から管理者ユーザーとのチャットページへ遷移します。
<br>
<br>


# 洗い出した要件

[要件を定義したシート](https://docs.google.com/spreadsheets/d/1vrcjCNE8sCyeH4ZuhsLIfHQ1BzOYXYHh32W4VNbJMSs/edit#gid=583231435)
<br>
<br>

# 実装した機能についての画像やGIFおよびその説明

## 一般ユーザーサイド

### ログイン機能
ログインすることで一覧ページに遷移できます。

[![Image from Gyazo](https://i.gyazo.com/0735fca1573f83045576d22041ad8c41.gif)](https://gyazo.com/0735fca1573f83045576d22041ad8c41)

<br>

### 登録機能
項目を選択し登録ボタンを押すと情報が反映された一覧ページに遷移します。
(必須項目は一番上の痛み指数のみです)

[![Image from Gyazo](https://i.gyazo.com/b82a0a71de85de0d1eef5630eade46d1.gif)](https://gyazo.com/b82a0a71de85de0d1eef5630eade46d1)

<br>

[![Image from Gyazo](https://i.gyazo.com/3df2c97c058cab01d88a0473f0767e8c.gif)](https://gyazo.com/3df2c97c058cab01d88a0473f0767e8c)

<br>

### 詳細・編集・削除機能
記録した情報の詳細、編集、削除が可能です。

[![Image from Gyazo](https://i.gyazo.com/fa249b665b9c4d530aad267275e1fa31.gif)](https://gyazo.com/fa249b665b9c4d530aad267275e1fa31)

<br>

### チャット機能
管理者ユーザーとチャットができます。

[![Image from Gyazo](https://i.gyazo.com/5dbaa0fccc3116c047d1d48285d2f60f.gif)](https://gyazo.com/5dbaa0fccc3116c047d1d48285d2f60f)

<br>

## 管理者サイド

### ログイン機能
ログインすることでユーザー選択ページに遷移できます。

[![Image from Gyazo](https://i.gyazo.com/f543e983817694a5df78bf3ff952d2fb.gif)](https://gyazo.com/f543e983817694a5df78bf3ff952d2fb)

<br>

### ユーザー選択機能
ユーザーを選択するとそのユーザーの記録した一覧ページへ遷移します。

[![Image from Gyazo](https://i.gyazo.com/40cf85e441c21a7d35cdf6f5ada12353.gif)](https://gyazo.com/40cf85e441c21a7d35cdf6f5ada12353)

<br>

### 新規登録機能
ヘッダーの新規登録からユーザー新規登録ページへ遷移します。

[![Image from Gyazo](https://i.gyazo.com/646771f58a5aef34a9e92a807d515ec2.gif)](https://gyazo.com/646771f58a5aef34a9e92a807d515ec2)

<br>

### チャット機能(ルーム作成)
ルーム名を入力し対象のユーザーを選択するとそのユーザーとのチャットルームが作成されます。

[![Image from Gyazo](https://i.gyazo.com/ffc91ca1dd28036af6dcc739b6e156a3.gif)](https://gyazo.com/ffc91ca1dd28036af6dcc739b6e156a3)

<br>

### チャット機能
登録したユーザー名を選択することでそのユーザーとチャットができます。

[![Image from Gyazo](https://i.gyazo.com/1cdba428c1a73663cb1b51e8b9a331b6.gif)](https://gyazo.com/1cdba428c1a73663cb1b51e8b9a331b6)


<br>
<br>

# 実装予定の機能


<br>
<br>

# データベース設計
![ER図](https://user-images.githubusercontent.com/101030605/185245749-5cd9a3b1-21d4-4954-8efc-be0c78ecac92.png)
<br>
<br>

# 画面遷移図
![画面遷移図](https://user-images.githubusercontent.com/101030605/185245446-aa180510-667b-4764-9807-959419aa7107.png)
<br>
<br>

# 開発環境

- ruby 2.6.5
- rails 6.0.5
- MySQL 5.6.51
<br>
<br>

# ローカルでの動作方法
```
% git clone https://github.com/shinjimjim/hernia-app-375703.git
% cd hernia-app-375703
% bundle install
% rails db:create
% rails db:migrate
% yarn install
```

<br>
<br>

# 工夫したポイント

### 1.記録のしやすいさ
毎日記録するとなると打鍵回数は少ない方がいいので、active_hashを使い選択式で記録できるようにしました。

### 2.一覧ページの見やすさ
一覧ページのカレンダーは情報を載せすぎると見えにくくなってしまうので簡潔な表示になるように痛み指数のみ表示するようにしました。

### 3.装飾のしやすさ
ページの装飾がしやすいようにBootstrapを導入しました。

# 苦労したポイント

### 1.新規作成から最初のデプロイまで
simple_calendarやBootstrapは初めて使うGemだったため、まず導入するまでに時間がかかり、導入できてもデプロイできなかったり予想以上に時間がかかりました。

### 2.管理者権限
管理者権限を付与したことで、一般ユーザーとの違いをコードで示す必要があり訳が分からなくなってしまいました。