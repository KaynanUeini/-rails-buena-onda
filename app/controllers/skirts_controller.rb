class SkirtsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_skirt, only: [:show, :edit]

  def index
    @skirts = Cloth.where(category: 'Saia')
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @skirt = Cloth.new(skirt_params)
    @skirt.user = current_user
  end

  def edit
  end

  private

  def skirt_params
    params.require(:cloth).permit(:price1, :name, :category, :brand)
  end

  def set_skirt
    @skirt = Cloth.find(params[:id])
  end
end
