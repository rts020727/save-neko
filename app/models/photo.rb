class Photo < ApplicationRecord

  belongs_to :shop
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  has_one_attached :image

  validates :title, presence: true
  validates :content, presence: true
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
  def self.looks(search, keyword)
    if search == "perfect_match"
      @photo = Photo.where("content LIKE?", "#{keyword}")
    elsif search == "forward_match"
      @photo = Photo.where("content LIKE?", "#{keyword}%")
    elsif search == "backward_match"
      @photo = Photo.where("content LIKE?", "%#{keyword}")
    elsif search == "partial_match"
      @photo = Photo.where("content LIKE?", "%#{keyword}%")
    else
      @photo = Photo.all
    end
  end
end
