class Cat < ApplicationRecord
  belongs_to :shop
  has_one_attached :image
  
  validates :name, presence: true
  validates :gender, presence: true
  validates :feature, presence: true
  validates :introduction, presence: true

  def get_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
      # 画像を中心点からwidth,heightサイズに切り取り
      image.variant(gravity: :center, resize:"#{width}x#{height}^", crop:"#{width}x#{height}+0+0").processed
  end

  enum gender: { boy: 0, girl: 1}
  enum feature: {
    white: 0,
    black: 1,
    gray: 2,
    brown_tabby: 3,
    silver_tabby: 4,
    red_tabby: 5,
    brack_white: 6,
    calico: 7,
    tortoiseshell: 8,
    brown_white_tabby: 9,
    silver_white_tabby: 10,
    red_white_tabby: 11,
    etc: 12
  }
end
