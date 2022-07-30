# アプリケーション名

Heal-nia
<br>
<br>

# アプリケーションの概要

登録させたユーザーは、カレンダー形式でヘルニア改善までの行動を記録する事ができます。
管理者はユーザーの登録ができ、ユーザーの記録した行動をカレンダー形式で見る事ができます。
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
1.メールアドレスとパスワードを入力したらユーザー選択ページへ遷移します。
<br>
2.ユーザを選択するとそのユーザーの記録した一覧ページへ遷移します。

### 一般ユーザーサイド
1.メールアドレスとパスワードを入力したら一覧ページへ遷移します。
<br>
2.外面下部の経過観察ボタンから登録ページへ遷移できます。
<br>
3.必要事項を選択し登録ボタンを押したら一覧ページに戻り記録が反映されます。
<br>
<br>

# アプリケーションを作成した背景

私自身がヘルニアを患い、病院へ通院しWeb上でヘルニア改善に必要な情報を集め実践していく中で、日々の生活習慣の改善が一番の近道だと感じました。そのためヘルニア改善のための記録媒体を作れば役に立つのではないかと思い作成しました。
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

![Image from Gyazo](https://i.gyazo.com/79ad333bbd5d1f11ac96d0c47a06e3fe.gif)

<br>

### 登録機能
項目を選択し登録ボタンを押すと情報が反映された一覧ページに遷移します。
(必須項目は一番上の痛み指数のみです)

[![Image from Gyazo](https://i.gyazo.com/8b02fb97e7f4382aef7803e7c878e0a0.gif)](https://gyazo.com/8b02fb97e7f4382aef7803e7c878e0a0)

<br>

[![Image from Gyazo](https://i.gyazo.com/e30ac5c81002757b6318c1a21451da21.gif)](https://gyazo.com/e30ac5c81002757b6318c1a21451da21)

<br>

### 詳細・編集・削除機能
記録した情報の詳細、編集、削除が可能です。

[![Image from Gyazo](https://i.gyazo.com/03426a602603f0c26bece9c0c74b99f9.gif)](https://gyazo.com/03426a602603f0c26bece9c0c74b99f9)

<br>

## 管理者サイド

### ログイン機能
ログインすることでユーザー選択ページに遷移できます。

[![Image from Gyazo](https://i.gyazo.com/09e7921ef36a85a9ba8a797543da2e95.gif)](https://gyazo.com/09e7921ef36a85a9ba8a797543da2e95)

### ユーザー選択機能
ユーザーを選択するとそのユーザーの記録した一覧ページへ遷移します。

[![Image from Gyazo](https://i.gyazo.com/4d630404ee8235dd99896f24b0988507.gif)](https://gyazo.com/4d630404ee8235dd99896f24b0988507)

### 新規登録機能
ヘッダーの新規登録からユーザー新規登録ページへ遷移します。

[![Image from Gyazo](https://i.gyazo.com/cae428314a1952995f0cf199a0a290d4.gif)](https://gyazo.com/cae428314a1952995f0cf199a0a290d4)

<br>
<br>

# 実装予定の機能

1.管理者側から一般ユーザーの記録した情報の詳細ページへ遷移できるようしたいです。
<br>
2.管理者側と一般ユーザー間でのチャット機能を作りたいです。
<br>
<br>

# データベース設計
![ER図](https://user-images.githubusercontent.com/101030605/181933442-eea581b3-70a4-4245-bd0d-f2f1f3de1c67.png)
<br>
<br>

# 画面遷移図
![画面遷移図](https://user-images.githubusercontent.com/101030605/181933645-aaaab977-b7b9-444e-870f-4be68a00e7f3.png)
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