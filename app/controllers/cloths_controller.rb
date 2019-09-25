class ClothsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_cloth, only: [:show, :edit]

  def index
   if params[:query].present?
    @cloths = Cloth.search_by_cloth_name(params[:query])
  else
    @cloths = Cloth.all.sort_by { |cloth| (cloth.name)}
  end
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

private

def cloth_params
  params.require(:cloth).permit(:price1, :name, :category, :brand)
end

def set_cloth
  @cloth = Cloth.find(params[:id])
end
end
