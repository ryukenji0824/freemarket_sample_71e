# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
　
## usersテーブル
|Columm|Type|Options|
|:------|:----|:-------|
|name|string|null:　：false|
|nickname|string|null: :false|
|e-mail|string|null:　：false|
|number|integer|null: :false|
|password|string|null: :false|
|gender|integer|null: :false|
|birthday|date|null: :false|

## Association
has_many :cards
has_many :addresses
has_many :items
has_many :comments


## index
add_index: [:nickname, :gender, :adress]




## addressesテーブル
|colum|type|Opsion|
|:------|:----|:-------|
|postal_code|string|null: false|
|city|string|null: false|
|local|string|null: false|
|buildig|string||
|user_id|integer|null: false, foreign_key: true|

## Association
belongs_to :user

## index
add_index: :city




## Cardsテーブル
|Column|Type|Options|
|:------|:----|:-------|
|card_number|integer|null: false,|
|name|string|null: false|
|CVC|integer|null: false|
|limit_date|integer|null: false|
|user_id|integer|null: false, foreign_key: true|

## Association
belongs_to :user




## commentsテーブル
|Column|Type|Options|
|:------|:----|:-------|
|user_id|integer|null: false,foreign_key: true|
|item_id|integer|null: false,foreign_key: true|
|content|text|null: :false|

## Association
belongs_to :user
belongs_to :item

## index
add_index: [:user_id, :item_id]




## itemsテーブル
|Column|Type|Options|
|:------|:----|:-------|
|name|string|null:　：false|
|description|text||
|price|integer|null:　：false|
|buyer_id|integer||
|size|string||
|condition|string|null: :false|
|wait|string|null: :false|
|postage|integer|null: :false|
|category_id|integer|null: :false, foregin_key: :true|
|brand_id|integer|null: :false, foregin_key: :true|

## Association
belongs_to :user
has_many :comments
has_many :images
belongs_to :brand
belongs_to :category

## index
add_index: [:name, :price]




## imagesテーブル
|Column|Type|Options|
|:------|:----|:-------|
|image|text|null: false|
|item_id|integer|null: false, foreign_key: true|

## Association
belongs_to :item




## Brandsテーブル
|Column|Type|Options|
|:------|:----|:-------|
|name|string|null: false,|

## Association
has_many :items

## index
add_index: :name




## Categoriesテーブル
|Column|Type|Options|
|:------|:----|:-------|
|name|string|null: false|

## Association
has_many :items

## index
add_index: [:gender, :name]

