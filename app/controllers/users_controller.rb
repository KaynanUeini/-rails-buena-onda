class UsersController < ApplicationController

  def dashboard
    @orders = current_user.orders
  end

  def orders
    current_user.orders
  end

end
