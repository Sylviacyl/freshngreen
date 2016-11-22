class Transaction < ActiveRecord::Base
    has_many :transaction_product_relationships
    belongs_to :user_profile
    belongs_to :product
end
