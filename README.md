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
|adress|string|null: :false|
|gender|integer|null: :false|
|birthday|date|null: :false|
|comment_id|integer|foreign_key: true|

## Association
has_many :user_comments
has_many :cards
has_many :adrresses
has_many :items
has_many :comments, through: :user_comment


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




## user_commentテーブル
|Column|Type|Options|
|:------|:----|:-------|
|user_id|integer|null: false,foreign_key: true|
|comment_id|integer|null: false,foreign_key: true|

## Association
belongs_to :user
belongs_to :comment




## commentsテーブル
|Column|Type|Options|
|:------|:----|:-------|
|user_id|integer|null: false,foreign_key: true|
|item_id|integer|null: false,foreign_key: true|
|content|text|null: :false|

## Association
has_many :user_comments
belongs_to :user, through: :user_comment
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
|brand_id|integer|foreign_key: true|
|category_id|integer|null: faulse,foreign_key: true|

## Association
belongs_to :user
has_many :comments
has_many :images
has_many :item_category_brands
has_many :brands, through: :item_category_brands
has_many :categories, through: :item_category_brands

## index
add_index: [:name, :price]




## imagesテーブル
|Column|Type|Options|
|:------|:----|:-------|
|image1|text|null: false|
|image2|text|null: false|
|image3|text|null: false|
|image4|text|null: false|
|image5|text|null: false|
|image6|text|null: false|
|item_id|integer|null: false, foreign_key: true|

## Association
belongs_to :item




## Brandsテーブル
|Column|Type|Options|
|:------|:----|:-------|
|name|string|null: false,|
|item_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|

## Association
has_many :item_category_brands
has_many :items, through :item_category_brand
has_many :categories, through :item_category_brand

## index
add_index: :name




## Categoriesテーブル
|Column|Type|Options|
|:------|:----|:-------|
|gender|string|null: false,|
|name|string|null: false|
|item_id|integer|null: false, foreign_key: true|
|brand_id|integer|null: false, foreign_key: true|

## Association
has_many :item_category_brands
has_many :items , through :item_category_brand
has_many :brands, through :item_category_brand

## index
add_index: [:gender, :name]




## item_category_brandテーブル
|Column|Type|Options|
|:------|:----|:-------|
|item_id|integer|null: false,foreign_key: true|
|category_id|integer|foreign_key: true|
|brand_id|integer|foreign_key: true|

## Association
belongs_to :item
belongs_to :brand
belongs_to :category