FactoryBot.define do
  factory :achivement do
    startdate { Time.zone.now }
    enddate { Time.zone.now }
    name { 'test_name' }
    achitype { 'test_type' }
    name_en { 'test_name' }
    achitype_en { 'test_type' }
    association :user
  end
end
