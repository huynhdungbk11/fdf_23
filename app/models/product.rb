class Product < ApplicationRecord
  has_many :items
  has_many :comments
  has_many :rates
  belongs_to :category

  scope :recent, ->{order created_at: :desc}

  enum kind: {food: 0, drink: 1}

  has_attached_file :image, styles: {mini: Settings.image.mini,
    medium: Settings.image.medium,
    thumb: Settings.image.thumb},
    default_url: Settings.image.default_url
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def update_suggestion_status id
    suggestion = Suggestion.find_by id: id
    suggestion.update_attributes status: true
  end
end
