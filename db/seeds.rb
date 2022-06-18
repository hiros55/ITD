# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if User.count == 0
  User.create!(
    name: '佐々木竜二',
    birthplace: '広島県',
    purpose: "スポーツアナリストを目指しています。
          学部ではゴール期待値の研究を行い、jリーグ1シーズンの1万本のシュートのサンプルを集めて解析しました。
          現在(大学院)ではゴール期待値の発展的な内容やゴール期待値を守備に応用する研究を行っています。学問的意義があり、現場でも通用する研究を行っていきたいです。
          また将来はスポーツアナリストとしてチームを勝利に導く存在になりたいです。",
    paper: '#',
    carrier_high: '○○高校',
    carrier_univ: '東海大学卒業',
    carrier_univ_mas: '東海大学大学院在席',
    carrier_work: '-',
    birthday: Time.new(1998, 5, 25), # rubocop:disable Rails/TimeZone
    linkedin: '#',
    twitter: '#',
    skill: '統計検定2級',
    name_en: 'Sasaki Ryuji',
    birthplace_en: 'Hiroshima',
    purpose_en: 'Hello',
    carrier_high_en: 'Highschool',
    carrier_univ_en: 'Tokai Univ',
    carrier_univ_mas_en: 'Tokai Univ Master',
    carrier_work_en: '-',
    skill_en: ' Statistical test 2nd',
    avatar: Rack::Test::UploadedFile.new(Rails.root.join(Rails.root, 'spec/user.jpg'), 'image/jpg')
  )
end
Achivement.create!(
  startdate: Time.new(2020, 10, 1), # rubocop:disable Rails/TimeZone
  enddate: Time.new(2023, 8, 1), # rubocop:disable Rails/TimeZone
  name: 'AICJ高等学校',
  achitype: 'アルバイト(分析担当)',
  name_en: 'AICJ HighSchool',
  achitype_en: 'part-time job(Analyst)',
  user_id: 1
)

Achivement.create!(
  startdate: Time.new(2023, 8, 1), # rubocop:disable Rails/TimeZone
  enddate: Time.new(2024, 10, 1), # rubocop:disable Rails/TimeZone
  name_en: 'Tokai Univ soccer',
  achitype_en: 'External coach(Analyst)',
  name: '東海大学女子サーッカー部',
  achitype: '外部コーチ(分析担当)',
  user_id: 1
)

if AdminUser.count == 0
  AdminUser.create!(
    email: 'sample@sample.com',
    password: 'password'
  )
end

Article.create!(
  title: 'ゲキサカ',
  title_en: 'Gekisaka',
  user_id: 1,
  is_highright: false,
  image: Rack::Test::UploadedFile.new(Rails.root.join(Rails.root, 'spec/user.jpg'), 'image/jpg')
)

Article.create!(
  title: 'note',
  title_en: 'blog',
  user_id: 1,
  is_highright: true,
  image: Rack::Test::UploadedFile.new(Rails.root.join(Rails.root, 'spec/soccer.jpeg'), 'image/jpeg')
)

Article.create!(
  title: 'ゴール期待値論文',
  title_en: 'goal paper',
  user_id: 1,
  is_highright: true,
  image: Rack::Test::UploadedFile.new(Rails.root.join(Rails.root, 'spec/images.png'), 'image/png')
)

Article.create!(
  title: '論文',
  title_en: 'paper',
  user_id: 1,
  is_highright: true,
  image: Rack::Test::UploadedFile.new(Rails.root.join(Rails.root, 'spec/images.jpg'), 'image/jpg')
)