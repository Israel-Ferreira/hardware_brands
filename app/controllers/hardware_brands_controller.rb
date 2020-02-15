class HardwareBrandsController < ApplicationController

  before_action :set_hardware_brand, only: [:show]

  def index
    @hardware_brands = HardwareBrand.all 
  end

  def show
    @hardware_types = @hardware_brand.hardware_types.pluck(:description)
    @products = @hardware_brand.products
  end

  private

  def set_hardware_brand
    @hardware_brand = HardwareBrand.find(params[:id])
  end
end
