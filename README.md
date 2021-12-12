# README
# テーブル設計

## users テーブル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nick_name          | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| first_name         | string | null: false               |
| last_name          | string | null: false               |
| first_name_kana    | string | null: false               |
| last_name_kana     | string | null: false               |
| birth_date         | date   | null: false               |
### Association
- has_many :items
- has_many :delivery_addresses

## items テーブル
| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| item_name          | string     | null: false                    |
| item_description   | text       | null: false                    |
| category_id        | integer    | null: false                    |
| condition_id       | integer    | null: false                    |
| delivery_fee_id    | integer    | null: false                    |
| prefecture_id      | integer    | null: false                    |
| delivery_time_id   | integer    | null: false                    |
| item_price         | integer    | null: false                    |
| user               | references | null: false, foreign_key: true |
### Association
- belongs_to :user
- has_one :purchase

## delivery_addresses テーブル
| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| postcode_id      | integer    | null: false                    |
| prefecture_id    | integer    | null: false                    |
| city             | string     | null: false                    |
| street           | string     | null: false                    |
| building_name    | string     | null: false                    |
| telephone_number | string     | null: false                    |
| user_id          | references | null: false, foreign_key: true |
### Association
- belongs_to :user
- has_one :purchase

## purchases テーブル
| Column           | Type       | Options                        |
|----------------- | ---------- | ------------------------------ |
| delivery_address | references | null: false, foreign_key: true |
| item             | references | null: false, foreign_key: true |
### Association
- belongs_to :delivery_address
- belongs_to :item