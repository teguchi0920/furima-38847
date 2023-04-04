class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @items = Item.all.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(
      :image, :item_name, :item_info, :item_category_id, :item_condition_id, :shipping_fee_id, :prefecture_id, :days_to_ship_id, :item_price
    ).merge(user_id: current_user.id)
  end
end
