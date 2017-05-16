# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
Company.create( name:"sample_company" )

Project.create(name: 'sample', description: "aaaaaaaaaa", company_id: 1)
Project.create(name: 'sample', description: "bbbbbbbbbb", company_id: 1)
Project.create(name: 'sample', description: "bbbbbbbbbb", company_id: 1)

User.create( name:"sample", email: "sample@sample.com", password: "password", company_id: 1, status: 1)
User.create( name:"test", email: "test@test.com", password: "password", company_id: 1, status: 2)

UserProject.create( user_id: 1, project_id: 1)
UserProject.create( user_id: 1, project_id: 2)
UserProject.create( user_id: 1, project_id: 3)
UserProject.create( user_id: 2, project_id: 1)
UserProject.create( user_id: 2, project_id: 2)
UserProject.create( user_id: 2, project_id: 3)


Table.create!(name: "ユーザー", project_id: 1)
Table.create!(name: "会社", project_id: 1)
Table.create!(name: "もの", project_id: 1)



Column.create!(name: "名前", table_id: 1, data_type: "string")
Column.create(name: "住所", table_id: 1, data_type: "string")
Column.create(name: "メールアドレス", table_id: 1, data_type: "string")
#
Column.create!(name: "名前", table_id: 2, data_type: "string")
Column.create(name: "住所", table_id: 2, data_type: "string")
Column.create(name: "会社メールアドレス", table_id: 2, data_type: "string")

Column.create!(name: "備品", table_id: 3, data_type: "string")
Column.create(name: "生活用品", table_id: 3, data_type: "string")
Column.create(name: "家電", table_id: 3, data_type: "string")
