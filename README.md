# rails環境構築

## 概要
* `Gemfile`を元に`rails`をインストールする
```
bundle install
```
* `rails`プロジェクトの作成
```
rails new .
```
## 文法
### シンボル
先頭に`:`がある場合はシンボル。定数みたいなもの
`:book`
### キーワード引数
引数の場所を指定できる
```
/普通の引数とメソッド/
def add(hikisu1, hikisu2)
 kotae = hikisu1 + hikisu2
 return kotae
end

puts add(3, 4)

/キーワード引数とメソッド/
def add(hikisu1:, hikisu2:)
 kotae = hikisu1 + hikisu2
 return kotae
end

puts add(hikisu1: 3, hikisu2: 4)

```

## デバッグ設定
VSCodeはUbuntuで動作しているため、rubyをインストールする
```
sudo apt -y install ruby3.2
ruby --version
sudo apt -y install ruby-dev
sudo apt -y install build-essential
bundle init
sudo bundle install
```