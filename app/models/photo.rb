class Photo < ApplicationRecord
  
  belongs_to :shop
  has_many :comments, dependent: :destroy
  has_one_attached :image
  
  def get_image
    if image.attached?
      image
    else
      'no_image.jpg'
    end
  end
end
