class ClothsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :skirt]
  before_action :set_cloth, only: [:show, :edit]

  def index
    @cloths = Cloth.all
  end

  def show
    @order = Order.new
  end

  def create
    @cloth = Cloth.new(cloth_params)
    @cloth.user = current_user
  end

  def edit
  end

  def skirt
    @skirts = Cloth.where(category: 'saia')
  end

  private

  def cloth_params
    params.require(:cloth).permit(:price1, :name)
  end

  def set_cloth
    @cloth = Cloth.find(params[:id])
  end
end
