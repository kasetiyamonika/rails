class Order < ApplicationRecord
  validates :total, numericality: true


  belongs_to :user
  has_many :order_products, dependent: :destroy
  has_many :products, through: :order_products
end
