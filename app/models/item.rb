class Item < ApplicationRecord
  belongs_to :user

  validates_presence_of :item_name, :item_info, :item_category_id, :item_condition_id, :shipping_fee_id, :prefecture_id, :days_to_ship_id, :item_price
end
