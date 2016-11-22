class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :region
  mount_uploader :hero_picture_url, ImageUploader

  
end
