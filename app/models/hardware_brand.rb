# frozen_string_literal: true

class HardwareBrand < ApplicationRecord
  has_many :products
  has_many :hardware_types, through: :products

  validates :description, :country, presence: true

  scope :by_country, ->(country) { where(country: country) }
  

  def self.find_by_name(name)
    find_by(description: name)
  end

end
