# README

# アプリケーション名

新米夫婦のためのシンプル家計簿
<br>
<br>

# アプリケーションの概要

会員登録・ログイン不要で簡単に使った金額をカテゴリごとに入力できます。夫婦共働きで共通で使った金額をまとめ、誰が精算したのか、精算済みなのかシンプルに管理することができます。
<br>
<br>

# URL 
#### Renderによるデプロイ
https://kakeibo2-38872.onrender.com

<br>
<br>

# 利用方法
<br>

金額登録
<br>
1.トップページの「さっそくはじめる」をクリックして一覧ページへ遷移します。
<br>
2.新規登録ボタンから情報の内容(年度,月,日,区分,カテゴリ,金額)を入力し登録します。
<br>
3.変更がある場合は編集ボタンから編集可能です。また、削除する場合は削除ボタンから削除可能です。
<br>
<br>

# アプリケーションを制作した背景

現在夫婦共働きで、共通で使用する金額はノートを使って金額をまとめており、
ノートで管理をしていく中で、どの分が精算済み、未精算なのかわかりにくい状況です。
また、ページが積み重なっていくため、見直したり、管理がしづらい現状です。
そこで、管理しやすく、状況が一目で分かる家計簿アプリケーションを作成することにしました。
<br>

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1zUQOTKA4L67tJSsdA1f5q1RXBMleyKQojlx0BXdd3Ig/edit?usp=sharing

<br>
<br>

#　実装した機能について

## トップページ〜一覧ページ
会員登録・ログイン不要で一覧ページへ遷移できます。
<br>
一覧ページに入力した家計簿データが表示され、年度,月ごとに表示されます。
[![Image from Gyazo](https://i.gyazo.com/3a9c63837f537911546b423930d6627b.gif)](https://gyazo.com/3a9c63837f537911546b423930d6627b)

<br>

## 1.家計簿登録
新規登録ボタンから情報の内容(年度,月,日,区分,カテゴリ,金額)を入力すると登録できます。
<br>
登録した内容は日付の若い順に表示され、夫精算なのか妻精算なのか精算済みなのか一目で分かるように設定しました。
<br>
各カテゴリの金額を円グラフで表示されます。

[![Image from Gyazo](https://i.gyazo.com/af9be16ae76fd206eef1d0823db2744d.gif)](https://gyazo.com/af9be16ae76fd206eef1d0823db2744d)

[![Image from Gyazo](https://i.gyazo.com/a3b6328e887a914f9a7cab463be7b39c.gif)](https://gyazo.com/a3b6328e887a914f9a7cab463be7b39c)

<br>

## 2.編集機能
編集ボタンから編集ページへ遷移し、編集後は一覧ページへ遷移する

[![Image from Gyazo](https://i.gyazo.com/12c2283ff009ce3f299aca7cd6588b72.gif)](https://gyazo.com/12c2283ff009ce3f299aca7cd6588b72)

[![Image from Gyazo](https://i.gyazo.com/7e5aa0e7fe92f1cbf43c451e5e3cc508.gif)](https://gyazo.com/7e5aa0e7fe92f1cbf43c451e5e3cc508)

<br>

## 3.削除機能
削除ボタンから、登録したデータを削除できます。

[![Image from Gyazo](https://i.gyazo.com/4c2060b50ad4f55e6207c6c794ec7f5d.gif)](https://gyazo.com/4c2060b50ad4f55e6207c6c794ec7f5d)

<br>

## 4.メッセージ,イラスト機能
月の合計金額によって注意喚起のメッセージとイラストが変更されるよう設定しました。

[![Image from Gyazo](https://i.gyazo.com/6e8e0144b7ca3671c31deede95fc4e98.jpg)](https://gyazo.com/6e8e0144b7ca3671c31deede95fc4e98)


<br>
<br>

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/4a80357abc2db4c3ff673abf9f5d01a4.png)](https://gyazo.com/4a80357abc2db4c3ff673abf9f5d01a4)

<br>

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/95fb6528e1af6f6cadc8e64bbae46f4c.png)](https://gyazo.com/95fb6528e1af6f6cadc8e64bbae46f4c)

<br>
<br>

# 使用しているバージョン等

- ruby 2.6.5
- Rails 6.0.6.1
- MySQL 5.7.40 

<br>
<br>

# clone

```
% git clone https://github.com/ryoppie/kakeibo2.git
% cd kakeibo2
% bundle install
% rails db:create
% rails db:migrate
% yarn install
```

<br>
<br>

# 工夫したポイント
・作成期間から逆算していつまでに機能の実装やデザインの変更すれば期間内に作成できるか計画を立て、毎日コツコツ取り組みました。
<br>
・シンプルな機能のため、イラストや背景画像を都度変え、飽きさせないデザインにするよう心がけました。


