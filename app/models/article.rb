class Article < ApplicationRecord
    belongs_to :user
    has_many :tags, dependent: :destroy
    validates :title, presence: true, length: {maximum: 255}
    validates :text, presence: true, length: {maximum: 10000}
end
