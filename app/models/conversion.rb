class Conversion < ApplicationRecord
  validates :body, presence: true, length: { maximum: 1000 }
end
