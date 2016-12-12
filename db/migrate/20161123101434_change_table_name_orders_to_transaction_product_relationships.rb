class ChangeTableNameOrdersToTransactionProductRelationships < ActiveRecord::Migration
  def change
    rename_table  :orders, :transaction_product_relationships
  end
end
