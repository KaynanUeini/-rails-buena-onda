class SkirtsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_skirt, only: [:show]

  def index
    @skirts = Cloth.where(category: 'saia')
  end

  def show
    @order = Order.find(params[:id])
  end

  private

  def set_skirt
    @skirt = Cloth.find(params[:id])
  end
end
