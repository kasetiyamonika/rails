class OrderProduct < ApplicationRecord
  validates :price, :discount, :total, numericality: true
  validates :discount_type, acceptance: { accept: ['Fix', '%'] }

  belongs_to :product
  belongs_to :order
end
