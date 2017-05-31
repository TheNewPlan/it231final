class User < ApplicationRecord
  validates :name, :presence => true
  validates :username, :presence => true, :uniqueness => true
  validates :password, :presence => true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, :presence => true
end
