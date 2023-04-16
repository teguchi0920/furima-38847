class OrdersController < ApplicationController
  def index
    @order_address = OrderAddress.new
    @item = Item.includes(:user).find(params[:item_id])
  end
  
  def create
    binding.pry
    @order_address = OrderAddress.new(order_params)
    @item = Item.includes(:user).find(params[:item_id])
    if @order_address.valid?
      @order_address.save
      redirect_to root_path
    else
      render :index
    end
  end

  private
  def order_params
    params.require(:order_address).permit(:post_code, :prefecture_id, :city, :block, :building, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id], token: params[:token])
  end
end
