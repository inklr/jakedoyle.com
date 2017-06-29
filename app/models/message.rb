class Message < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email_address, presence: true
  validates :message, presence: true
end
