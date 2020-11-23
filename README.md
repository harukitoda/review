## usersテーブル

| Column                | Type        | Options     |
| --------------------- | ----------- | ----------- |
| nickname              | string      | null: false |
| email                 | string      | null: false |
| password              | string      | null: false |
| password_confirmation | string      | null: false |
| first_name            | string      | null: false |
| last_name             | string      | null: false |
| first_name_kana       | string      | null: false |
| last_name_kana        | string      | null: false |
| year                  | integer     | null: false |
| month                 | integer     | null: false |
| day                   | integer     | null: false |

### Association
- has_many :items
- has_many :orders
- belongs_to :address

## itemsテーブル

| Column                | Type             | Options           |
| --------------------- | ---------------- | ----------------- |
| name                  | string           | null: false       |
| explanation           | text             | null: false       |
| category              | string           | null: false       |
| status                | string           | null: false       |
| fee                   | string           | null: false       |
| prefecture            | string           | null: false       |
| schedule              | string           | null: false       |
| price                 | string           | null: false       |
| user                  | references       | foreign_key: true |

### Association
- belongs_to :user
- has_one :item


## ordersテーブル

| Column                | Type             | Options           |
| --------------------- | ---------------- | ----------------- |
| user_id               | references       | foreign_key: true |
| item_id               | references       | foreign_key: true |
| token                 | string           | foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item
- has_one :address


## cardsテーブル

| Column                | Type             | Options           |
| --------------------- | ---------------- | ----------------- |
| number                | integer          | foreign_key: true |
| exp_year              | integer          | foreign_key: true |
| exp_month             | integer          | foreign_key: true |
| cvc                   | integer          | foreign_key: true |

### Association
- belongs_to :user


## addressesテーブル

| Column                | Type             | Options           |
| --------------------- | ---------------- | ----------------- |
| postal_code           | string           | null: false       |
| prefecture_id         | integer          | null: false       |
| city                  | string           | null: false       |
| address               | string           | null: false       |
| building              | string           |                   |
| phone_number          | integer          | null: false       |
| order                 | references       | foreign_key: true |

### Association
- belongs_to :order
