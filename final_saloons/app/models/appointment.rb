class Appointment < ApplicationRecord
  validates :payment_id, length: { is: 4 }
  validates :payment_mode, acceptance: { accept: ['Cash', 'Cheque', 'Cash Online'] }
  validates :price, numericality: true
  validates :status, acceptance: { accept: ['booked', 'In-progress','Finised','Cancled'] }
  validates :remark, length: { minimum: 5, maximum: 500 } ,presence: true
  
  belongs_to :user
  belongs_to :service
end
