class Cat < ApplicationRecord
  belongs_to :shop
  has_one_attached :cat_image

  def get_cat_image
    if cat_image.attached?
      cat_image
    else
      'no_image.jpg'
    end
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
