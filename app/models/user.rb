class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :omniauthable, :omniauth_providers => [:facebook, :twitter]

  has_many :suggestions
  has_many :orders
  has_many :rates
  has_many :comments

  enum role: {admin: 0, user: 1}

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.password = Devise.friendly_token[0,20]
    end
  end
end
