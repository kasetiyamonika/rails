class Order < ApplicationRecord
  validates :total, numericality: true
  validates :status, acceptance: { accept: ['Success', 'Fail', 'cancle'] }
  validates :payment_id, length: { is: 4 }
  validates :payment_mode, acceptance: { accept: ['Cash', 'Cheque', 'Cash Online'] }

  belongs_to :user
  has_many :order_products, dependent: :destroy
  has_many :products, through: :order_products
end
