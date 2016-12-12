class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :products
  has_one :user_profile
  has_many :transactions

  has_many :orders
  has_many :transaction_product_relationships

end
