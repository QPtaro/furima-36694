class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :delivery_fee
  belongs_to :prefecture
  belongs_to :delivery_time
  has_one_attached :image

  validates :item_name, :item_description, :item_price, presence: true

  validates :category_id, numericality: { other_than: 1 }
  validates :condition_id, numericality: { other_than: 1 }
  validates :delivery_fee_id, numericality: { other_than: 1 }
  validates :delivery_time_id, numericality: { other_than: 1 }
  validates :prefecture_id, numericality: { other_than: 1 }
end
### Association
# belongs_to :user
# has_one :purchase
