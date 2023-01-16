class Event < ApplicationRecord
  belongs_to :shop
  
  validates :title, presence: true
  validates :content, presence: true
  
end
