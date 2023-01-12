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
  
  validates :name, presence: true
  validates :name_kana, presence: true
  validates :email, presence: true
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
end
