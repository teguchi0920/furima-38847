class ItemsController < ApplicationController
  def index
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
      :item_image, :item_name, :item_info, :item_category_id, :item_condition_id, :shipping_fee_id, :prefecture_id, :days_to_ship_id, :item_price
    ).merge(user_id: current_user.id)
  end
end
