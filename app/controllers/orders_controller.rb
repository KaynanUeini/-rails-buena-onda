class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @cloth = Cloth.find(params[:cloth_id])
    @order.user = current_user
    @order.cloth = @cloth
    @order.price = @cloth.price1
    if @order.save
       @cloth.stock -= @order.quantity
      @cloth.save
      flash[:notice] = "Congratulations! #{@order.quantity} #{@order.cloth.name} added to your shopping bag."
    end
    redirect_to dashboard_bag_path
  end

  def create_skirt
    @order = Order.new(order_params)
    @skirt = Cloth.find(params[:skirt_id])
    @order.user = current_user
    @order.cloth = @skirt
    @order.price = @skirt.price1
    if @order.save
      @skirt.stock -= @order.quantity
      @skirt.save
      flash[:notice] = "Congratulations! #{@order.quantity} #{@order.cloth.name} added to your shopping bag."
    end
    redirect_to dashboard_bag_path
  end

  def show
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:quantity)
  end
end
