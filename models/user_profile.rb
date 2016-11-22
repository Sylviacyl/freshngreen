class UserProfile < ActiveRecord::Base
  belongs_to :user
  has_one :transaction
end
