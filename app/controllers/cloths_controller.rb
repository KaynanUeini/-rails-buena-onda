class ClothsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_cloth, only: [:show]

  def index
    @cloths = Cloth.all
  end

  def show
  end

  private

  def set_cloth
    @cloth = Cloth.find(params[:id])
  end
end
