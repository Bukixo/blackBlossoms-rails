class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true, presence: true
  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true, presence: true
end
