Region.destroy_all
ActiveRecord::Base.connection.execute('ALTER TABLE regions AUTO_INCREMENT = 1')

region_datas = [
'北海道',
'東北',
'関東・甲信越',
'中部・北陸',
'近畿',
'中国・四国',
'九州・沖縄',
'その他']

if Region.count == 0
  puts 'Creating regions data...'
  region_datas.each do |region_name|
    Region.create(name: region_name)
  end
end
