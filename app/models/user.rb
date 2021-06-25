class User < ApplicationRecord
  USERNAME_REGEXP = /\w+/

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :username, length: { maximum:40 }, format: { with: USERNAME_REGEXP }
end
