class ClothsController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @clothes = Cloth.all
  end

  def show
    @cloth = Cloth.find(params[:id])
  end
end
