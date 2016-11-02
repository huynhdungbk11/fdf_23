class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_many :suggestions
  has_many :orders
  has_many :rates
  has_many :comments

  enum role: {admin: 0, user: 1}
end
