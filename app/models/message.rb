class Message < ApplicationRecord

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # normalize case insensitive data
  before_save do
    self.email_address = email_address.downcase
    self.website = website.downcase
  end

  validates :name,
    presence: true

  validates :email_address,
    presence: true,
    length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX }

  validates :message,
    presence: true
end
