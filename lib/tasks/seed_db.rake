#######################
# マスターデータ一括登録
#######################
desc "master data"
task "db:seed:master" => :environment do
  load(File.join(Rails.root, 'db', 'seeds', 'regions.rb'))
  load(File.join(Rails.root, 'db', 'seeds', 'prefectures.rb'))
  load(File.join(Rails.root, 'db', 'seeds', 'companies.rb'))
  load(File.join(Rails.root, 'db', 'seeds', 'users.rb'))
end


#######################
# マスターデータ個別登録
#######################
desc "prefectures data"
task "db:seed:prefectures" => :environment do
  load(File.join(Rails.root, 'db', 'seeds', 'prefectures.rb'))
end

desc "regions data"
task "db:seed:regions" => :environment do
  load(File.join(Rails.root, 'db', 'seeds', 'regions.rb'))
end

desc "users data"
task "db:seed:users" => :environment do
  load(File.join(Rails.root, 'db', 'seeds', 'users.rb'))
end
