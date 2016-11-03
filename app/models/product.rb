class Product < ApplicationRecord
  has_many :items
  has_many :comments
  has_many :rates
  belongs_to :category
end
