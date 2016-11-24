class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :region
  
  has_many :orders
  mount_uploader :hero_picture_url, ImageUploader

end
