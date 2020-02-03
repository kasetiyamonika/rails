class Appointment < ApplicationRecord
  validates :payment_id, length: { is: 2 }
  # validates :payment_mode, acceptance: { accept: ['Cash', 'Cheque', 'Cash Online'] }
  # validates :price, numericality: true
  # validates :status, acceptance: { accept: ['booked', 'In-progress','Finised','Cancled'] }
  validates :remark, length: { minimum: 5, maximum: 500 } ,presence: true

  belongs_to :user
  belongs_to :service

  after_initialize :set_default
  def set_default
     self.start_time = Time.now
   end

   after_initialize :set_default
   def set_default
      self.end_time = Time.now
    end
end
