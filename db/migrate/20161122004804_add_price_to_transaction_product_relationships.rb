class AddPriceToTransactionProductRelationships < ActiveRecord::Migration
  def change
    add_column :transaction_product_relationships, :price, :interger
  end
end
