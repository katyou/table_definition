Company.destroy_all
ActiveRecord::Base.connection.execute('ALTER TABLE companies AUTO_INCREMENT = 1')

Company.create!( name:"イジゲン", company_tel: "01064480101", company_email: "sample@ijgn.jp", prefecture_id: 44, address1: "大分市王ノ瀬2-10-35" )
