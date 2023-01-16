class Photo < ApplicationRecord

  belongs_to :shop
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  has_one_attached :image

  validates :title, presence: true, length: { maximum: 20 }
  validates :content, presence: true, length: { maximum: 200 }
  validates :image, presence: true

  def get_image
    if image.attached?
      image
    else
      'no_image.jpg'
    end
  end

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

  # 検索方法の分岐
  def self.search_for(keyword, method)
    if method == "perfect"
      Photo.where("content LIKE?", "#{keyword}")
    elsif method == "forward"
      Photo.where("content LIKE?", "#{keyword}%")
    elsif method == "backward"
      Photo.where("content LIKE?", "%#{keyword}")
    else
      Photo.where("content LIKE?", "%#{keyword}%")
    end
  end
end
