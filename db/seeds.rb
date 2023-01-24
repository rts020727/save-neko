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
    {email: 'rateraunji@test.com', name: 'ラテラウンジ', password: 'ownerpassword', address: '東京都新宿区新宿３−３１−５', phone_number: '000-3425-1342', opening: '12:00〜20:00', closed: 'なし', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop1.jpg"), filename:"shop1.jpg") },
    {email: 'soraumi@test.com', name: '空海家 新宿店', password: 'ownerpassword', address: '東京都新宿区新宿３−２４−４', phone_number: '000-9823-2982', opening: '11:00〜18:30', closed: 'なし', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop2.jpg"), filename:"shop2.jpg") },
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
    {email: 'nekonoie@test.com', name: 'ねこのいえ', password: 'ownerpassword', address: '大阪府泉大津市池浦町１−１−１９', phone_number: '0000-7986-3453', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '月曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop12.jpg"), filename:"shop12.jpg") },
    {email: 'nekonohayasi@test.com', name: 'ねこの林', password: 'ownerpassword', address: '大阪府大阪市淀川区十三本町１−１３−１４', phone_number: '000-0123-1113', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '月曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop13.jpg"), filename:"shop13.jpg") },
    {email: 'catclubcherry@test.com', name: 'Cat club cherry', password: 'ownerpassword', address: '大阪府高槻市北園町１９−１−６', phone_number: '000-0123-1113', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '月曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop14.jpg"), filename:"shop14.jpg") },
    {email: 'nekodazo@test.com', name: '猫Cafe 猫だ蔵', password: 'ownerpassword', address: '京都府中京区壬生土居ノ内町４−３', phone_number: '000-9823-2982', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '月曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop15.jpg"), filename:"shop15.jpg") },
    {email: 'moccha@test.com', name: 'MOCCHA 京都河原町店', password: 'ownerpassword', address: '京都府京都市中京区三条下ル大黒町５８', phone_number: '000-7986-3453', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '月曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop16.jpg"), filename:"shop16.jpg") },
    {email: 'yumeito@test.com', name: 'ゆうめいと', password: 'ownerpassword', address: '京都府京都市左京区一乗寺堂ノ前２３−２', phone_number: '000-0123-1113', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '月曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop17.jpg"), filename:"shop17.jpg") },
    {email: 'gotto@test.com', name: 'Cafe Gotto', password: 'ownerpassword', address: '福岡県古賀市新原５２６', phone_number: '000-2348-7567', opening: '13:00〜18:00', closed: 'なし', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop18.jpg"), filename:"shop18.jpg") },
    {email: 'nyakonmya@test.com', name: 'nyakonmya', password: 'ownerpassword', address: '福岡県久留米市諏訪野町２５７０−９', phone_number: '000-0123-1113', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '水・木・金', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop19.jpg"), filename:"shop19.jpg") },
    {email: 'nekoasobi@test.com', name: 'ねこあそび', password: 'ownerpassword', address: '熊本県熊本市東区月出７−１−６', phone_number: '000-2787-9767', opening: '12:00〜17:00', closed: '金曜日、土曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop20.jpg"), filename:"shop20.jpg") },
    {email: 'matata-bi@test.com', name: 'またたーび', password: 'ownerpassword', address: '北海道札幌市西区発寒６条９−６−２８', phone_number: '000-2357-5687', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: 'なし', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop21.jpg"), filename:"shop21.jpg") },
    {email: 'nekorabua@test.com', name: 'ねこらぶ', password: 'ownerpassword', address: '北海道札幌市中央区南２条５−２６−１７', phone_number: '000-9823-2982', opening: '11:00〜18:30', closed: 'なし', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop22.jpg"), filename:"shop22.jpg") },
    {email: 'nekohouse@test.com', name: '猫ハウスじぇいそん', password: 'ownerpassword', address: '北海道旭川市東光１５条４−４−６', phone_number: '000-7986-3453', opening: '12:00〜18:00', closed: 'なし', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop23.jpg"), filename:"shop23.jpg") },
    {email: 'campanynyanz@test.com', name: 'カンパニーにゃおう', password: 'ownerpassword', address: '宮城県富谷市ひより台１−４３−４３−１９', phone_number: '000-9823-2982', opening: '11:00〜20:00', closed: 'なし', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop24.jpg"), filename:"shop24.jpg") },
    {email: 'catai@test.com', name: 'きゃっとあい', password: 'ownerpassword', address: '宮城県仙台市青葉区中央２−１１−３０', phone_number: '000-3454-9648', opening: '11:00〜21:00', closed: 'なし', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop25.jpg"), filename:"shop25.jpg") },
    {email: 'nekonoima@test.com', name: '鎌倉ねこの居間', password: 'ownerpassword', address: '神奈川県鎌倉市笛田６−９−７', phone_number: '000-9823-2982', opening: '平日：14:00〜20:00, 休日：12:00〜18:00', closed: '水曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop26.jpg"), filename:"shop26.jpg") },
    {email: 'nekomusubi@test.com', name: 'ねこむすび', password: 'ownerpassword', address: '神奈川県横浜市西区北幸２−１３−１', phone_number: '000-4566-7868', opening: '11:00〜18:30', closed: 'なし', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop27.jpg"), filename:"shop27.jpg") },
    {email: 'sironekocafe@test.com', name: '白猫カフェ', password: 'ownerpassword', address: '愛知県名古屋市中区栄３−２１−２７', phone_number: '000-9823-2982', opening: '11:00〜18:30', closed: '月曜日', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop28.jpg"), filename:"shop28.jpg") },
    {email: 'putimari@test.com', name: 'ぷちまりい', password: 'ownerpassword', address: '愛知県名古屋市中区大須３−２５−２８', phone_number: '000-9823-2982', opening: '11:00〜18:30', closed: 'なし', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop29.jpg"), filename:"shop29.jpg") },
    {email: 'kinyan@test.com', name: '猫クラブきーにゃん', password: 'ownerpassword', address: '兵庫県神戸市中央区琴ノ緒町４−３−１', phone_number: '000-7685-4565', opening: '12:00〜20:00', closed: 'なし', image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/shop30.jpg"), filename:"shop30.jpg") }
  ]
)

# 開発中に使用
# shops.each do |shop|
#   12.times do |n|
#     shop.cats.create!(
#       shop_id: shop.id,
#       name: Faker::Creature::Cat.name,
#       gender: rand(0..1),
#       feature: n,
#       introduction: "とってもいい子です。",
#       image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/cat#{n}.jpg"), filename:"cat#{n}.jpg")
#     )
#   end
# end

# shops.each do |shop|
#   4.times do |n|
#     randam_number = rand(1..14)
#     shop.photos.create!(
#       shop_id: shop.id,
#       title: "かわいい",
#       content: "元気いっぱいでとってもかわいいです。",
#       image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo#{randam_number}.jpg"), filename:"photo#{randam_number}.jpg")
#     )
#   end
# end

shops.each do |shop|
  4.times do |n|
    start_day = Date.new(2023, 1, 1)
    last_day = Date.new(2023, 8, 31)
    random_date = Random.rand(start_day..last_day)
    shop.events.create!(
      shop_id: shop.id,
      title: "譲渡会",
      content: "店舗で譲渡会を行う予定です。\nたくさんの保護猫ちゃん達が里親さんとのご縁を待っています。\nみなさまのお越しをお待ちしております。",
      start_time: random_date
    )
  end
end

Cat.create!(
  [
    { shop_id: rand(1..30), name: "ちび", gender: rand(0..1), feature: 10, introduction: "おめめがくりくりでかわいいです。", image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo1.jpg"), filename:"photo1.jpg") },
    { shop_id: rand(1..30), name: "よもぎ", gender: rand(0..1), feature: 12, introduction: "人懐っこくて可愛い子です。", image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo2.jpg"), filename:"photo2.jpg") },
    { shop_id: rand(1..30), name: "よつば", gender: rand(0..1), feature: 9, introduction: "おめめがくりくりでかわいいです。", image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo5.jpg"), filename:"photo5.jpg") },
    { shop_id: rand(1..30), name: "なお", gender: rand(0..1), feature: 9, introduction: "穏やかでとっても優しい子です。", image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo6.jpg"), filename:"photo6.jpg") },
    { shop_id: rand(1..30), name: "まも", gender: rand(0..1), feature: 9, introduction: "穏やかでとっても優しい子です。", image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo7.jpg"), filename:"photo7.jpg") },
    { shop_id: rand(1..30), name: "まる", gender: rand(0..1), feature: 9, introduction: "人懐っこくて可愛い子です。", image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo10.jpg"), filename:"photo10.jpg") },
    { shop_id: rand(1..30), name: "ぷっち", gender: rand(0..1), feature: 9, introduction: "おめめがくりくりでかわいいです。", image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo11.jpg"), filename:"photo11.jpg") },
    { shop_id: rand(1..30), name: "わっふる", gender: rand(0..1), feature: 7, introduction: "おめめがくりくりでかわいいです。", image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo13.jpg"), filename:"photo13.jpg") },
    { shop_id: rand(1..30), name: "みみ", gender: rand(0..1), feature: 6, introduction: "元気いっぱいでやんちゃな子です。", image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo15.jpg"), filename:"photo15.jpg") },
    { shop_id: rand(1..30), name: "めんま", gender: rand(0..1), feature: 7, introduction: "おめめがくりくりでかわいいです。", image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo16.jpg"), filename:"photo16.jpg") },
    { shop_id: rand(1..30), name: "さけ", gender: rand(0..1), feature: 5, introduction: "人懐っこくて可愛い子です。", image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo18.jpg"), filename:"photo18.jpg") },
    { shop_id: rand(1..30), name: "うみ", gender: rand(0..1), feature: 7, introduction: "人懐っこくて可愛い子です。", image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo28.jpg"), filename:"photo28.jpg") },
    { shop_id: rand(1..30), name: "そら", gender: rand(0..1), feature: 11, introduction: "人懐っこくて可愛い子です。", image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo39.jpg"), filename:"photo39.jpg") },
    { shop_id: rand(1..30), name: "なつ", gender: rand(0..1), feature: 11, introduction: "元気いっぱいでやんちゃな子です。", image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo40.jpg"), filename:"photo40.jpg") }
  ]
)

Photo.create!(
  [
    { shop_id: rand(1..30), 
      title: 'サバ白のあかちゃん', 
      content: "あたらしく、サバ白のかわいいあかちゃんが、当店にきました。\nぜひ、会いにきてあげてください", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo1.jpg"), filename:"photo1.jpg") },
    { shop_id: rand(1..30), 
      title: 'お届け物でーす', 
      content: "段ボールの中に入るのが大好き！\n一回入ると、しばらく出てきてくれません…", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo2.jpg"), filename:"photo2.jpg") },
    { shop_id: rand(1..30), 
      title: 'お仕事中', 
      content: "お仕事しているといつも見守ってくれます。\nとっても優しい子です。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo3.jpg"), filename:"photo3.jpg") },
    { shop_id: rand(1..30), 
      title: '高いところがだいすき', 
      content: "たまちゃんは高いところが大好きです。\nキャットーウォークのお家がお気に入りで、よく中に入って寛いでいます。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo4.jpg"), filename:"photo4.jpg") },
    { shop_id: rand(1..30), 
      title: 'お外を眺めるさすけくん', 
      content: "野良猫時代を思い出すのでしょうか？\nよくお外を眺めています。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo5.jpg"), filename:"photo5.jpg") },
    { shop_id: rand(1..30), 
      title: 'エキゾチックねこちゃん', 
      content: "お鼻がぺちゃんこでとってもかわいいですね！\nまだ、お店に来て１ヶ月ですが、なんだか貫禄があります^^", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo6.jpg"), filename:"photo6.jpg") },
    { shop_id: rand(1..30), 
      title: 'お散歩中', 
      content: "お庭でお散歩しているとらちゃん。\nとっても鋭い眼差しで、何か獲物を狙っているのでしょうか？", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo7.jpg"), filename:"photo7.jpg") },
    { shop_id: rand(1..30), 
      title: 'ごはんの時間', 
      content: "みんなお行儀よくご飯をたべています。\nお利口さんです。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo8.jpg"), filename:"photo8.jpg") },
    { shop_id: rand(1..30), 
      title: '元気いっぱい', 
      content: "まるちゃん、高いところものぼれるようになりました。\n昔はこわがってのぼれなかったのに、成長しました！", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo9.jpg"), filename:"photo9.jpg") },
    { shop_id: rand(1..30), 
      title: 'わさびちゃん', 
      content: "パソコンで作業していると、いつも邪魔してきます。\n邪魔だけど可愛くて退かせられないですよね",
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo10.jpg"), filename:"photo10.jpg") },
    { shop_id: rand(1..30), 
      title: '美人さん', 
      content: "とっても美人、みみちゃん。\nぜひ一度、会いにきてあげてください！", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo11.jpg"), filename:"photo11.jpg") },
    { shop_id: rand(1..30), 
      title: 'ごろーん', 
      content: "お気に入りのポジションで寝っ転がってます。\n肉球がぴんくで触りたくなります。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo12.jpg"), filename:"photo12.jpg") },
    { shop_id: rand(1..30), 
      title: 'ひょっこり', 
      content: "名前を呼ぶと、ひょっこり反応してくれます。\nとってもかわいい〜", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo13.jpg"), filename:"photo13.jpg") },
    { shop_id: rand(1..30), 
      title: '仲良しなふたり', 
      content: "いつもふたりはくっついて寝ています。\n仲良しでかわいいですね！", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo14.jpg"), filename:"photo14.jpg") },
    { shop_id: rand(1..30), 
      title: 'かわいい', 
      content: "猫ちゃんが振り向いてくれました。\n可愛いですね。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo15.jpg"), filename:"photo15.jpg") },
    { shop_id: rand(1..30), 
      title: '三毛猫さん', 
      content: "おめめがくりくりでかわいい！", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo16.jpg"), filename:"photo16.jpg") },
    { shop_id: rand(1..30), 
      title: '人間みたい', 
      content: "人間みたいにお布団で寝てます。\n枕も必須みたいです。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo17.jpg"), filename:"photo17.jpg") },
    { shop_id: rand(1..30), 
      title: 'ひなたぼっこ', 
      content: "おはようございます。\n今日は、いい天気ですね。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo18.jpg"), filename:"photo18.jpg") },
    { shop_id: rand(1..30), 
      title: 'クリスマス', 
      content: "クリスマスなので、マントをきてくれました！\n可愛すぎます。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo19.jpg"), filename:"photo19.jpg") },
    { shop_id: rand(1..30), 
      title: '抱っこ好き', 
      content: "この子はとっても人懐っこくて、抱っこされるのが大好きです。\n当店にお越しの際はぜひ抱っこしてあげてください。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo20.jpg"), filename:"photo20.jpg") },
    { shop_id: rand(1..30), 
      title: '今日も寒いですね', 
      content: "こんにちは。今日も寒いですね。\n猫ちゃんも丸まっています。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo21.jpg"), filename:"photo21.jpg") },
    { shop_id: rand(1..30), 
      title: 'トナカイ帽子', 
      content: "トナカイの帽子、イヤイヤ被ってくれてました。\n寛大なねこちゃんです。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo22.jpg"), filename:"photo22.jpg") },
    { shop_id: rand(1..30), 
      title: '布団の中', 
      content: "つなちゃんがいなくなって、探し回っていると、こんなところに！？\nお布団の中で寝てました。かわいい。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo23.jpg"), filename:"photo23.jpg") },
    { shop_id: rand(1..30), 
      title: '爆睡', 
      content: "爆睡しているねこちゃんをみていると、幸せな気分になりますね。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo24.jpg"), filename:"photo24.jpg") },
    { shop_id: rand(1..30), 
      title: 'ソファ', 
      content: "私のことをソファと思っているみたいです。\n癒されます。",
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo25.jpg"), filename:"photo25.jpg") },
    { shop_id: rand(1..30), 
      title: 'ひなたぼっこ', 
      content: "ひなたぼっこしてますね。\n最近、暖かくなってきましたね。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo26.jpg"), filename:"photo26.jpg") },
    { shop_id: rand(1..30), 
      title: '何かご所望', 
      content: "遊んでほしいみたいで、呼ばれています。\nぜひ、当店へ来られた際は、ねこちゃんといっぱい遊んであげてください。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo27.jpg"), filename:"photo27.jpg") },
    { shop_id: rand(1..30), 
      title: 'きょとん', 
      content: "きゅるきゅるお目目でこちらを見つめています。\n可愛すぎます。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo28.jpg"), filename:"photo28.jpg") },
    { shop_id: rand(1..30), 
      title: '占拠', 
      content: "パソコンを占拠されてしまいました。\n可愛いので、作業を中断してしまいました。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo29.jpg"), filename:"photo29.jpg") },
    { shop_id: rand(1..30), 
      title: 'おひるね', 
      content: "気持ちよさそうに寝ていますね。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo30.jpg"), filename:"photo30.jpg") },
    { shop_id: rand(1..30), 
      title: 'かくれんぼ', 
      content: "しばらく見かけないと思ったら、こんなところに！\nソファの裏に隠れていたみたいです。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo31.jpg"), filename:"photo31.jpg") },
    { shop_id: rand(1..30), 
      title: 'ばれた！？', 
      content: "ソファの裏でかくれんぼしていたようです。\nしばらくそっとしておいてあげましょう。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo32.jpg"), filename:"photo32.jpg") },
    { shop_id: rand(1..30), 
      title: 'いたずらっこ', 
      content: "いたずら発見！\nすぐにコップにおててをつっこんじゃうつなちゃんでした。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo33.jpg"), filename:"photo33.jpg") },
    { shop_id: rand(1..30), 
      title: 'おひるね', 
      content: "おててをぎゅっとして、寝ています。\n寝姿が可愛すぎます。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo34.jpg"), filename:"photo34.jpg") },
    { shop_id: rand(1..30), 
      title: 'まんまる', 
      content: "キャットタワーでまん丸になって寝ていました。\n苦しくないのかな？", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo35.jpg"), filename:"photo35.jpg") },
    { shop_id: rand(1..30), 
      title: 'キャットタワー', 
      content: "キャットタワーがお気に入りみたいで、いつもここで寝ています。\n可愛いですね。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo36.jpg"), filename:"photo36.jpg") },
    { shop_id: rand(1..30), 
      title: 'ひなたぼっこ', 
      content: "ひなたぼっこしてくつろいでいました。\n今日はとってもいいお天気ですね。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo37.jpg"), filename:"photo37.jpg") },
    { shop_id: rand(1..30), 
      title: 'みけちゃん', 
      content: "三毛猫のみけちゃんです。\n美人さんですね！", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo38.jpg"), filename:"photo38.jpg") },
    { shop_id: rand(1..30), 
      title: 'おひるね', 
      content: "気持ちよさそうにお昼寝していました。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo39.jpg"), filename:"photo39.jpg") },
    { shop_id: rand(1..30), 
      title: 'たまちゃんです', 
      content: "たまちゃんはお外が大好きみたいです。\n寝顔がとってもかわいいですね。", 
      image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/photo40.jpg"), filename:"photo40.jpg") }
  ]
)
