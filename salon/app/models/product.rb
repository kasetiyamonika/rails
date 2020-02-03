class Product < ApplicationRecord
  validates :name, :length => {
    minimum: 2,
    maximum: 30,
    too_short: "Must Have at list ${count} chacarater",
    too_long: "Must Have at list ${count} chacarater"
  }
  validates :description, :length => {
    minimum: 10,
    maximum: 500,
  }
  validates :mrp, numericality: true
  validates :discount, numericality: true
  
  belongs_to :category
  has_many :order_products, dependent: :destroy
  has_many :orders, through: :order_products
end
