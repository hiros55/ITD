class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 64 }
  validates :birthplace, presence: true, length: { maximum: 64 }
  validates :purpose, presence: true, length: { maximum: 1000 }
  validates :paper, presence: true, length: { maximum: 255 }
  validates :linkedin, presence: true, length: { maximum: 255 }
  validates :twitter, presence: true, length: { maximum: 255 }
  validates :carrier_high, presence: true, length: { maximum: 255 }
  validates :carrier_univ, presence: true, length: { maximum: 255 }
  validates :carrier_univ_mas, presence: true, length: { maximum: 255 }
  validates :carrier_work, presence: true, length: { maximum: 255 }
  validates :skill, presence: true, length: { maximum: 1000 }
  validates :name_en, presence: true, length: { maximum: 64 }
  validates :birthplace_en, presence: true, length: { maximum: 64 }
  validates :purpose_en, presence: true, length: { maximum: 1000 }
  validates :carrier_high_en, presence: true, length: { maximum: 255 }
  validates :carrier_univ_en, presence: true, length: { maximum: 255 }
  validates :carrier_univ_mas_en, presence: true, length: { maximum: 255 }
  validates :carrier_work_en, presence: true, length: { maximum: 255 }
  validates :skill_en, presence: true, length: { maximum: 1000 }
  validates :birthday, presence: true
  mount_uploader :avatar, AvatarUploader
  has_many :articles, dependent: :destroy
  has_many :achivements, dependent: :destroy
end
