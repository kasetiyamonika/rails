class OrderProduct < ApplicationRecord
  validates :price, numericality: true
  validates :discount, numericality: true
  validates :total, numericality: true

  belongs_to :order
  belongs_to :product
end
