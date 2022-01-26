class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :delivery_fee
  belongs_to :prefecture
  belongs_to :delivery_time
  has_one_attached :image
  belongs_to :user
  has_one :purchase

  validates :image, :item_name, :item_description, :item_price, presence: true
  validates :category_id, numericality: { other_than: 1 }
  validates :condition_id, numericality: { other_than: 1 }
  validates :delivery_fee_id, numericality: { other_than: 1 }
  validates :delivery_time_id, numericality: { other_than: 1 }
  validates :prefecture_id, numericality: { other_than: 1 }
  validates :item_price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 },
  format: { with: /\A[0-9]+\z/ }

end