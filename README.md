# README

# アプリケーション名：『けもかん』

がん化学療法（Chemotherapy ケモセラピー）、通称『ケモ』を総合的に『簡単に管理』することができるアプリケーション。

「けも」は「ケモ」、「かん」は「管理」「簡単」から。



# テーブル設計

## users テーブル

| Column              | Type    | Options                   |
| ------------------- | ------- | ------------------------- |
| name 名前            | string  | null: false               |
| uid  ログインID      | string  | null: false, unique: true |
| email  メールアドレス | string  | null: false, unique: true |
| encrypted_password  | string  | null: false               |



## patients テーブル

| Column          | Type    | Options       |
| --------------- | ------- | ------------- |
| name 名前        | string  | null: false   |
| gender_id 性別   | integer | null: false   |
| birthday 生年月日 | date    | null: false   |
| text 情報        | test    |               |

### Association

- has_many :treatments



## diseases テーブル

| Column              | Type         | Options     |
| ------------------- | ------------ | ----------- |
| cancer_id がん種     | integer      | null: false |
| other_id その他      | integer      | null: false |
| purpose_id 治療目的  | integer      | null: false |

### Association

- has_many :treatments
- has_many :regimens, through: disease_regimens



## plans(regimens) テーブル

| Column                    | Type         | Options        |
| ------------------------- | ------------ | -------------- |
| name レジメン名             | string       | null: false    |
| period 1クールの日数        | integer      | null: false    |
| emetic_id 催吐性           | integer      | null: false    |
| nk1 NK1拮抗薬              | string       |                |
| dex デキサメタゾン          | string       |                |
| h1blocker H1拮抗薬         | string       |                |
| h2blocker H2拮抗薬         | string       |                |
| other_medicine その他支持薬 | string       |                |
| text その他の情報           | text         |                |
| medicine_name1~8 薬品名    | string       | 1: null: false |
| abbreviation1~8 略語       | string       | 1: null: false |
| dose1~8 用量               | float        | 1: null: false |
| unit1~8_id 単位            | integer      | 1: null: false |
| schedule1~8 日程           | string       | 1: null: false |

### Association

- has_many :diseases, through: disease_regimens
- has_many :treatments



## treatmentsテーブル

| Column                    | Type       | Options                      |
| ------------------------- | ---------- | ---------------------------- |
| date 日付                  | date      | null: false                   |
| in_out_id 入院外来         | integer    | null: false                   |
| patient_id 患者           | references | null: false, foreignkey: true |
| disease_id 疾患           | references | null: false, foreignkey: true |
| regimen_id レジメン        | references | null: false, foreignkey: true |
| course コース数            | integer    | null: false                   |
| day コース内日数            | integer    | null: false                   |
| measuring_date 測定日      | date       | null: false                   |
| height 身長                | float      | null: false                   |
| weight 体重                | float      | null: false                   |
| dose1~8 投与量             | float      |                               |
| nk1 NK1拮抗薬              | string     |                               |
| dex デキサメタゾン          | string     |                               |
| h1blocker H1拮抗薬         | string     |                               |
| h2blocker H2拮抗薬         | string     |                               |
| other_medicine その他支持薬 | string     |                               |
| text メモ                  | text       |                               |

### Association

- belongs_to :patient
- belongs_to :regimen
- belongs_to :disease



#### 以下メモ

##### READMEに記述すること

- アプリケーション名
アプリケーション概要このアプリケーションでできることを記述する

- URL
デプロイ済みのURLを記述する。デプロイが済んでいない場合は、デプロイ次第記述する。

- テスト用アカウント
ログイン機能等を実装した場合は、記述する。またBasic認証等を設けている場合は、そのID/Passも記述する。

- 利用方法
このアプリケーションの利用方法を説明する。

- 目指した課題解決
このアプリケーションを通じて、どのような人の、どのような課題を解決したかったかを書く。

- 洗い出した要件
スプレッドシートにまとめた要件定義を、マークダウンで記述しなおす。

- 実装した機能についてのGIFと説明
実装した機能について、それぞれどのような特徴があるのか列挙する。GIFを添えることで、イメージがしやすくなる。

- 実装予定の機能
洗い出した要件の中から、今後実装予定のものがあれば記述する。

- データベース設計
ER図等

- ローカルでの動作方法
git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述する。この時、アプリケーション開発に使用した環境を併記することを忘れない（パッケージやRubyのバージョンなど）。