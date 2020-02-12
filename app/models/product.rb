class Product < ApplicationRecord
  belongs_to :hardware_type
  belongs_to :hardware_brand

  validates :description, presence: true
end
