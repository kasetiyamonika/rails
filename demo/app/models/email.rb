class Email < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :reports, as: :reportable

  def display
    email
  end
end
