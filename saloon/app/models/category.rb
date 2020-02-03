class Category < ApplicationRecord
  validates :name, length: { minimum: 2, maximum: 200 }

  before_save :set_capitalize

  def set_capitalize
    puts "name is capitalize"
    self.name = name.downcase.titleize
  end
end
