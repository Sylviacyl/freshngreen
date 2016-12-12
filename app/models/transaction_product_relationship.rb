class TransactionProductRelationship < ActiveRecord::Base
    has_many :transactions
    belongs_to :product
end
