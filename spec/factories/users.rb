FactoryBot.define do
  factory :user do
    name { 'test_name' }
    birthplace { 'test_birthplace' }
    purpose { 'test_purpose' }
    paper { 'test_paper' }
    carrier_high { 'test_carrier_high' }
    carrier_univ { 'test_carrier_univ' }
    carrier_univ_mas { 'test_carrier_univ_mas' }
    carrier_work { 'test_carrier_work' }
    skill { 'test_skill' }
    name_en { 'test_name' }
    birthplace_en { 'test_birthplace' }
    purpose_en { 'test_purpose' }
    carrier_high_en { 'test_carrier_high' }
    carrier_univ_en { 'test_carrier_univ' }
    carrier_univ_mas_en { 'test_carrier_univ_mas' }
    carrier_work_en { 'test_carrier_work' }
    skill_en { 'test_skill' }
    birthday { Time.zone.now - 20.years }
    linkedin { 'test_linkedin' }
    twitter { 'test_twitter' }
  end
end
