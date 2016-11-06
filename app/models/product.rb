class Product < ApplicationRecord
  has_many :items
  has_many :comments
  has_many :rates
  belongs_to :category

  enum kind: {food: 0, drink: 1}

  has_attached_file :image, styles: {mini: Settings.image.mini,
    medium: Settings.image.medium,
    thumb: Settings.image.thumb},
    default_url: Settings.image.default_url
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  scope :recent, ->{order created_at: :desc}
  scope :by_category, ->id do
    where category_id: id if id.present?
  end
  scope :is_food, ->{where kind: kinds[:food]}
  scope :is_drink, ->{where kind: kinds[:drink]}
  scope :search_name, ->search do
    where "name LIKE ?", "%#{search}%" if search.present?
  end
end
