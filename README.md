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
- has_one :buyer

## items テーブル
| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| item_name        | string     | null: false                    |
| item_description | text       | null: false                    |
| category         | string     | null: false                    |
| item_condition   | string     | null: false                    |
| delivery_fee     | string     | null: false                    |
| shipment_source  | string     | null: false                    |
| delivery_time    | string     | null: false                    |
| user_id          | references | null: false, foreign_key: true |
### Association
- belongs_to :user
- has_one :buyer

## buyers テーブル
| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| postal_code      | string     | null: false                    |
| prefectural      | string     | null: false                    |
| city             | string     | null: false                    |
| street           | string     | null: false                    |
| building_name    | string     | null: false                    |
| telephone_number | string     | null: false                    |
| user_id          | references | null: false, foreign_key: true |
| item_id          | references | null: false, foreign_key: true |
### Association
- belongs_to :user
- belongs_to :item