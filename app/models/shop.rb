class Shop < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cats, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :events, dependent: :destroy
  has_one_attached :shop_image
  
  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, length: { maximum: 20 }
  validates :name_kana, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :opening, presence: true
  validates :closed, presence: true


  def get_shop_image(width, height)
    unless shop_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      shop_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
      shop_image.variant(resize_to_limit: [width, height]).processed
  end

  # shopのis_deletedがfalseならtrueを返す
  def active_for_authentication?
    super && (self.is_deleted == false)
  end

  def bookmarked_by?(user)
    bookmarks.exists?(user_id: user.id)
  end

  # 検索方法の分岐
  def self.search_for(keyword, method)
    if method == "perfect"
      Shop.where("name LIKE?", "#{keyword}")
    elsif method == "forward"
      Shop.where("name LIKE?", "#{keyword}%")
    elsif method == "backward"
      Shop.where("name LIKE?", "%#{keyword}")
    else
      Shop.where("name LIKE?", "%#{keyword}%")
    end
  end
end
