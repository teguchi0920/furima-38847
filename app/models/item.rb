class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :item_image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :item_category
  belongs_to :item_condition
  belongs_to :shipping_fee
  belongs_to :prefecture
  belongs_to :days_to_ship

  validates_presence_of :item_name, :item_info, :item_price
  validates :item_category_id, :item_condition_id, :shipping_fee_id, :prefecture_id, :days_to_ship_id,
   numericality: {other_than: 1, message: "can't be blank"}, 
   presence: true

end
