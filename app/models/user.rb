class User < ApplicationRecord
  has_secure_password
  has_many :articles, dependent: :destroy
  before_save :email_downcase

  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 20 }

  valid_email_regex = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 100 }, format: { with: valid_email_regex }

  def email_downcase
    self.email = email.downcase
  end
end
