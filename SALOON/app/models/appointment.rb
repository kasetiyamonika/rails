class Appointment < ApplicationRecord
  validates :price, numericality: true
  validates :remark, presence: true

  belongs_to :user
  belongs_to :service
end
