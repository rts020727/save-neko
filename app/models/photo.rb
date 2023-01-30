class Photo < ApplicationRecord

  belongs_to :shop
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  has_one_attached :image

  validates :title, presence: true, length: { maximum: 20 }
  validates :content, presence: true, length: { maximum: 200 }
  # validates :image, presence: true

  def get_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
      # 画像を中心点からwidth,heightサイズに切り取り
      image.variant(gravity: :center, resize:"#{width}x#{height}^", crop:"#{width}x#{height}+0+0").processed
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
