class User < ApplicationRecord
  has_many :reports, dependent: :destroy
  has_and_belongs_to_many :contacts
  has_and_belongs_to_many :emails

  # default_scope { where("name is not null") }
    # scope :last_5days, ->(time) { where('users.created_at > ?', Time.now - time.days)} terminal User.last_xdays(20)
  scope :last_xdays, ->(time) { where('users.created_at > ?', time)}
  # terminal User.last_xdays(Time.now - 20.days)
  # scope :last_5days, -> { where('users.created_at > ?', Time.now - 20.days)}
  # scope :with_emails, -> { last_5days.includes(:emails).where(emails: { email: 'poja@gmail.com' } ) }
  scope :with_emails, -> { last_xdays.includes(:emails).where(emails: { email: 'poja@gmail.com' } ) }

  # def self.names(name)
  #
  #    where("name LIKE ?", "%#{name}%").order("created_at DESC")
  # end

end
