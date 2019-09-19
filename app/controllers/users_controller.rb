class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  def dashboard
    @orders = current_user.orders
  end

  def orders
    current_user.orders
  end

  def edit
  end

  def show
  end

  def update
    if @user.update(user_params)
      redirect_to dashboard_path, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
