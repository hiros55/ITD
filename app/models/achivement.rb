class Achivement < ApplicationRecord
  belongs_to :user
  validates :startdate, presence: true
  validates :enddate, presence: true
  validates :name, presence: true, length: { maximum: 64 }
  validates :achitype, presence: true, length: { maximum: 64 }
  validates :name_en, presence: true, length: { maximum: 64 }
  validates :achitype_en, presence: true, length: { maximum: 64 }
end
