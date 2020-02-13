class HardwareBrandsController < ApplicationController

  before_action :set_hardware_brand, only: [:show]

  def index
    @hardware_brands = HardwareBrand.all 
  end

  def show
  end

  private

  def set_hardware_brand
    @hardware_brand = HardwareBrand.find(params[:id])
  end
end
