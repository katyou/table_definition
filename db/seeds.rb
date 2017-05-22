# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
Company.create( name:"イジゲン")

Project.create(name: '大分産業', description: "大分の産業は。。。。。。", company_id: 1)
Project.create(name: '福岡漁業', description: "福岡の漁業はどこが有名でしょうかというサービス", company_id: 1)
Project.create(name: '宮崎農業', description: "宮崎の農業を盛り上げようサービス", company_id: 1)

User.create( name:"sample", email: "sample@sample.com", password: "password", company_id: 1, status: 1)
User.create( name:"test", email: "test@test.com", password: "password", company_id: 1, status: 2)

UserProject.create( user_id: 1, project_id: 1)
UserProject.create( user_id: 1, project_id: 2)
UserProject.create( user_id: 1, project_id: 3)
UserProject.create( user_id: 2, project_id: 1)
UserProject.create( user_id: 2, project_id: 2)
UserProject.create( user_id: 2, project_id: 3)


Table.create!(physical_name: "user",       logical_name: "ユーザー",  project_id: 1)
Table.create!(physical_name: "company",    logical_name: "企業",     project_id: 1)
Table.create!(physical_name: "prefecture", logical_name: "都道府県",  project_id: 1)


#null_false０はOK、１はだめ
#ユーザーテーブル
Column.create!(physical_name: "name", logical_name: "名前", table_id: 1, data_type: "string", null_false: 1)
Column.create!(physical_name: "address", logical_name: "住所", table_id: 1, data_type: "string", null_false: 1)
Column.create!(physical_name: "email", logical_name: "メールアドレス", table_id: 1, data_type: "string", null_false: 1)
Column.create!(physical_name: "company_id", logical_name: "企業ID", table_id: 1, data_type: "integer", null_false: 0)
Column.create!(physical_name: "user_tel", logical_name: "電話番号", table_id: 1, data_type: "string", null_false: 1)
Column.create!(physical_name: "password", logical_name: "パスワード", table_id: 1, data_type: "string", null_false: 1)

#企業テーブル
Column.create!(physical_name: "name", logical_name: "企業名", table_id: 2, data_type: "string", null_false: 1)
Column.create!(physical_name: "name_kana", logical_name: "企業カナ", table_id: 2, data_type: "string", null_false: 1)
Column.create!(physical_name: "company_tel", logical_name: "企業tel", table_id: 2, data_type: "integer", null_false: 1)
Column.create!(physical_name: "zip_code", logical_name: "郵便番号", table_id: 2, data_type: "string", null_false: 1)
Column.create!(physical_name: "address", logical_name: "住所", table_id: 2, data_type: "string", null_false: 1)
Column.create!(physical_name: "prefecture_id", logical_name: "都道府県外部キー", table_id: 2, data_type: "integer", null_false: 1)

#都道府県テーブル
Column.create!(physical_name: "name", logical_name: "都道府県名", table_id: 3, data_type: "string", null_false: 0)
Column.create!(physical_name: "name_kana", logical_name: "都道府県名カナ", table_id: 3, data_type: "string", null_false: 1)
