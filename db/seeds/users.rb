User.destroy_all
ActiveRecord::Base.connection.execute('ALTER TABLE users AUTO_INCREMENT = 1')

User.create!( name:"admin", email: "admin@test.com", password: "password", company_id: 1, status: 1)
User.create!( name:"user", email: "user@test.com", password: "password", company_id: 1, status: 2)
User.create!( name:"reader", email: "reader@test.com", password: "password", company_id: 1, status: 3)
