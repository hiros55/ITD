# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    User.create!(
        name: "佐々木竜二",
        birthplace: "広島県",
        purpose: "スポーツアナリストを目指しています。 
        学部ではゴール期待値の研究を行い、jリーグ1シーズンの1万本のシュートのサンプルを集めて解析しました。
        現在(大学院)ではゴール期待値の発展的な内容やゴール期待値を守備に応用する研究を行っています。学問的意義があり、現場でも通用する研究を行っていきたいです。
        また将来はスポーツアナリストとしてチームを勝利に導く存在になりたいです。",
        paper: "#",
        carrier_jun: "○○中学校",
        carrier_high: "○○高校",
        carrier_univ: "東海大学卒業",
        carrier_univ_mas: "東海大学大学院在席",
        carrier_work: "-",
        experience: "AICJ分析官",
        birthday: Time.new(1998,5,25),
        insta: "#",
        twitter: "#",
        skill: "統計検定2級"
    )

Achivement.create!(
    startdate: Time.new(2020,10,1),
    enddate: Time.new(2023,8,1),
    name: "AICJ高等学校",
    achitype: "アルバイト(分析担当)"
)

Achivement.create!(
    startdate: Time.new(2023,8,1),
    enddate: Time.new(2024,10,1),
    name: "東海大学女子サーッカー部",
    achitype: "外部コーチ(分析担当)"
)