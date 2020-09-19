# テーブル設計

## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| nickname           | string  | null: false |
| sex_id             | integer | null: false |
| email              | string  | null: false |
| password           | string  | null: false |

### Association

- has_many :user_rooms
- has_many :rooms, through: room_users
- has_many :messages
- has_one  :user_info
- has_many :requests
- has_many :approvals





## user_infos テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| picture          | string     | null: false                    |
| people_num       | integer    | null: false                    |
| text             | text       | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many   :requests
- has_many   :approvals





## repuests テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| user_info  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :user_info
- has_one    :approval





## approvals テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| user_info  | references | null: false, foreign_key: true |
| repuest    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :user_info
- belongs_to :request
- has_one    :room





##  rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many   :room_users
- has_many   :users, through: room_users
- has_many   :messages
- belongs_to :approval





##  messages テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| content    | string     |                                |
| user       | references | null: false, foreign_key: true |
| repuest    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user





## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user