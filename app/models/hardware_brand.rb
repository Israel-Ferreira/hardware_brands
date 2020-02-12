# frozen_string_literal: true

class HardwareBrand < ApplicationRecord
  has_many :products
  has_many :hardware_types, through: :products

  scope :by_country, ->(country) { HardwareBrand.where(country: country)}


end
