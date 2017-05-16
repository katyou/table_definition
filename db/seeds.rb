# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])


Project.create(name: 'sample', description: "aaaaaaaaaa" )
Project.create(name: 'sample', description: "bbbbbbbbbb" )
Project.create(name: 'sample', description: "bbbbbbbbbb" )

[1..10].each do |number|
  Table.create(name: "1テーブル", company_id: number )
  Column.create(name: "1カラム", table_id: number )
  Column.create(name: "2カラム", table_id: number )
  Column.create(name: "3カラム", table_id: number )
end

User.create( name:"sample", email: "sample@sample.com", password: "password", company_id: 1, status: 1)
User.create( name:"test", email: "test@test.com", password: "password", company_id: 1, status: 2)

Company.create( name:"sample_company")

UserProject.create( user_id: 1, project_id: 1)
UserProject.create( user_id: 1, project_id: 2)
UserProject.create( user_id: 1, project_id: 3)
UserProject.create( user_id: 2, project_id: 1)
UserProject.create( user_id: 2, project_id: 2)
UserProject.create( user_id: 2, project_id: 3)
