class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { maximum: 255 }
  validates :title_en, presence: true, length: { maximum: 255 }
  mount_uploader :image, ImageUploader
end
