class ChangeTableNametransactionProductRelationshipsToOrders < ActiveRecord::Migration
  def change
    rename_table :transaction_product_relationships, :orders
  end
end
