class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :item_image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :item_category
  belongs_to :item_condition
  belongs_to :shipping_fee
  belongs_to :prefecture
  belongs_to :days_to_ship

  with_options presence: true do
    validates :item_image
    validates :item_name, length: { maximum: 40 }
    validates :item_info, length: { maximum: 1000 }
    validates :item_category_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :item_condition_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :shipping_fee_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :days_to_ship_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :item_price, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }
  end
end
