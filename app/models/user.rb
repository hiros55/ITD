class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 64}
    validates :birthplace, presence: true, length: {maximum: 64}
    validates :purpose, presence: true, length: {maximum: 1000}
    validates :paper, presence: true, length: {maximum: 255}
    validates :insta, presence: true, length: {maximum: 255}
    validates :twitter, presence: true, length: {maximum: 255}
    validates :carrier_jun, presence: true, length: {maximum: 255}
    validates :carrier_high, presence: true, length: {maximum: 255}
    validates :carrier_univ, presence: true, length: {maximum: 255}
    validates :carrier_univ_mas, presence: true, length: {maximum: 255}
    validates :carrier_work, presence: true, length: {maximum: 255}
    validates :experience, presence: true, length: {maximum: 255}
    validates :skill, presence: true, length: {maximum: 1000}
    validates :birthday, presence: true
    mount_uploader :avatar, AvatarUploader
    has_many :articles, dependent: :destroy
end
