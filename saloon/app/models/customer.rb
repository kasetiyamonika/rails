class Customer < ApplicationRecord
  validates :first_name, :length => {
    minimum: 2,
    maximum: 30,
    too_short: "Must Have at list ${count} chacarater",
    too_long: "Must Have at list ${count} chacarater"
  }
  validates :last_name, :length => {
    minimum: 4,
    maximum: 30,
    too_short: "Must Have at list ${count} chacarater",
    too_long: "Must Have at list ${count} chacarater"
  }
  validates :mobile, format: { with: /\d{10}/ }
  validates :email, presence: true,  uniqueness: true
  validates :address, length: {
    minimum: 5,
    maximum: 500,
  }

  after_initialize :set_default
  before_validation :set_last_name
  after_create :send_email
  before_validation :set_email

  def set_last_name
    puts  "I am on set last name"
    if self.last_name.blank?
      self.last_name = 'Patel'
    end
  end

  def set_default
    puts "I am on initialize"
    self.last_name = 'Patel'
    self.address = 'Mota Varachha'
  end

  def send_email
    puts " I am on after create"
    # CustomerMailer.confirmation_email(self).deliver_now
  end

  def set_email
    puts "i am on set dafult"
    if self.email.blank?
      self.email = '@gmail.com'
    end
  end

  # def set_capitalize
  #   puts "name is capitalize"
  #   self.first_name = first_name.downcase.titleize
  # end
end
