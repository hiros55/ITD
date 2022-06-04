class Tag < ApplicationRecord
    belongs_to :article
    validates :name, presence: true, length: {maximum: 10}
end
