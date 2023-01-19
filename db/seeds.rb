# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  [
    {email: 'admin@test.com', password: 'adminpassword'}
  ]
)

users = User.create!(
  [
    {email: 'tanaka@test.com', name: 'たなか', password: 'password', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user1.jpg"), filename:"sample-user1.jpg")},
    {email: 'yamada@test.com', name: 'やまだ', password: 'password', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user2.jpg"), filename:"sample-user2.jpg")},
    {email: 'suzuki@test.com', name: 'すずき', password: 'password', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user3.jpg"), filename:"sample-user3.jpg")}
  ]
)

shops = Shop.create!(
  [
    {email: 'yurayura@test.com', name: 'ゆらゆら', password: 'ownerpassword', address: '東京都中央区日本橋人形町２−７−２', phone_number: '000-0123-1113', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '月曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop3.jpg"), filename:"shop3.jpg") },
    {email: 'kimitoneko@test.com', name: '君と猫 秋葉店', password: 'ownerpassword', address: '東京都千代田区外神田４−４−３', phone_number: '000-0156-2131', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '月曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop4.jpg"), filename:"shop4.jpg") },
    {email: 'mi-ripu@test.com', name: 'ミーリプ', password: 'ownerpassword', address: '東京都足立区千住東１４−４−２', phone_number: '000-0123-1113', opening: '12:00〜18:00', closed: 'なし', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop5.jpg"), filename:"shop5.jpg") },
    {email: 'monta@test.com', name: 'ねこもんた', password: 'ownerpassword', address: '東京都台東区花川戸１ー５−２', phone_number: '000-7986-3453', opening: '平日：10:00〜18:00, 休日：09:00〜16:00', closed: '木曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop6.jpg"), filename:"shop6.jpg") },
    {email: 'kurunyan@test.com', name: 'くるにゃん 蒲田店', password: 'ownerpassword', address: '東京都大田区西蒲田７−４−６', phone_number: '000-2384-0943', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '月曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop7.jpg"), filename:"shop7.jpg") },
    {email: 'wahunekosohonten@test.com', name: '和風猫総本店', password: 'ownerpassword', address: '千葉県船橋市高根台１−７−３', phone_number: '000-2343-1113', opening: '13:00〜17:30', closed: 'なし', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop8.jpg"), filename:"shop8.jpg") },
    {email: 'tottonomori@test.com', name: 'とっとの森', password: 'ownerpassword', address: '千葉県千葉市花見川区花島町３５７−２', phone_number: '000-1233-5647', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '火曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop9.jpg"), filename:"shop9.jpg") },
    {email: 'myaooo@test.com', name: 'MYAOOO', password: 'ownerpassword', address: '千葉県千葉市中央区富士見２−８−１４', phone_number: '000-9823-2982', opening: '10:00〜21:30', closed: 'なし', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop10.jpg"), filename:"shop10.jpg") },
    {email: 'uriuri@test.com', name: '猫を愛する人のカフェ ウリウリ', password: 'ownerpassword', address: '大阪府大阪市北区中崎西４−１−３０', phone_number: '000-0123-1113', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '月曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop10.jpg"), filename:"shop10.jpg") },
    {email: 'nekonorakuen@test.com', name: '大阪難波 猫の楽園', password: 'ownerpassword', address: '大阪府大阪市中央区千日前１−８−８', phone_number: '000-0123-1113', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '月曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop11.jpg"), filename:"shop11.jpg") },
    {email: 'nekonoie@test.com', name: 'ねこのいえ', password: 'ownerpassword', address: '大阪府泉大津市池浦町１−１−１９', phone_number: '000-0123-1113', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '月曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop12.jpg"), filename:"shop12.jpg") },
    {email: 'nekonohayasi@test.com', name: 'ねこの林', password: 'ownerpassword', address: '大阪府大阪市淀川区十三本町１−１３−１４', phone_number: '000-0123-1113', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '月曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop13.jpg"), filename:"shop13.jpg") },
    {email: 'catclubcherry@test.com', name: 'Cat club cherry', password: 'ownerpassword', address: '大阪府高槻市北園町１９−１−６', phone_number: '000-0123-1113', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '月曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop14.jpg"), filename:"shop14.jpg") },
    {email: 'nekodazo@test.com', name: '猫Cafe 猫だ蔵', password: 'ownerpassword', address: '京都府中京区壬生土居ノ内町４−３', phone_number: '000-0123-1113', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '月曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop15.jpg"), filename:"shop15.jpg") },
    {email: 'moccha@test.com', name: 'MOCCHA 京都河原町店', password: 'ownerpassword', address: '京都府京都市中京区三条下ル大黒町５８', phone_number: '000-0123-1113', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '月曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop16.jpg"), filename:"shop16.jpg") },
    {email: 'yumito@test.com', name: 'ゆうめいと', password: 'ownerpassword', address: '京都府京都市左京区一乗寺堂ノ前２３−２', phone_number: '000-0123-1113', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '月曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop17.jpg"), filename:"shop1.jpg") }
  ]
)

shops.each do |shop|
  12.times do |n|
    shop.cats.create!(
      shop_id: shop.id,
      name: Faker::Creature::Cat.name,
      gender: rand(0..1),
      feature: n,
      introduction: "とってもいい子です。",
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/cat#{n}.jpg"), filename:"cat#{n}.jpg") 
    )
  end
end

shops.each do |shop|
  4.times do |n|
    randam_number = rand(1..14)
    shop.photos.create!(
      shop_id: shop.id,
      title: "かわいい",
      content: "元気いっぱいでとってもかわいいです。",
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo#{randam_number}.jpg"), filename:"photo#{randam_number}.jpg") 
    )
  end
end


# Cat.create!(
#   shop_id: shops[0].id,
#   name: 'aaa',
#   gender: 0,
#   feature: 0,
#   introduction: '説明',
#   image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/cat0.jpg"), filename:"cat0.jpg") 
# )