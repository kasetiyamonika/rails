class Service < ApplicationRecord
  validates :name, presence: true,  :length => {
    minimum: 5,
    maximum: 50,
  }
  validates :price, numericality: true

  validates :description, :length => {
    minimum: 10,
    maximum: 500,
  }

  before_save :set_name

  def set_name
    puts "name is capitalize"
    self.name = name.downcase.titleize
  end
end
