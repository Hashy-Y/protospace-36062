# README

## usersテーブル
| column     | type   | options     |
|:----------:|:------:|:-----------:|
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |
| profile    | text   | null: false |
| occupation | text   | null: false |
| position   | text   | null: false |

###Asociation
- has_many :prototypes
- has_many :comments

## prototypesテーブル
| column     | type       | options                        |
|:----------:|:----------:|:------------------------------:|
| title      | string     | null: false                    |
| catch_copy | text       | null: false                    |
| concept    | text       | null: false                    |
| image      |            | null: false                    |
| user       | references | null: false, foreign_key: true |

###Asociation
- belongs_to :user
- has_many :comments

## commentsテーブル
| column    | type       | options                        |
|:---------:|:----------:|:------------------------------:|
| text      | text       | null: false                    |
| user      | references | null: false, foreign_key: true |
| prototype | references | null: false, foreign_key: true |

###Asociation
- belongs_to :user
- belongs_to :prototype

