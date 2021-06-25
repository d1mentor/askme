class User < ApplicationRecord
  USERNAME_REGEXP = /\w+/

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true, presence: true
  validates :username, length: { maximum:40 }, format: { with: USERNAME_REGEXP }, uniqueness: true, presence: true

  before_save :user_data_to_downcase

  def user_data_to_downcase
    username&.downcase!
    email&.downcase!
  end
end
