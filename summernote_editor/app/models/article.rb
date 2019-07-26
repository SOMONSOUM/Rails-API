class Article < ApplicationRecord
  validates :title, presence: true

  has_one_attached :header_image
  has_many_attached :images  
end
