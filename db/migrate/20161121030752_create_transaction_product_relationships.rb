class CreateTransactionProductRelationships < ActiveRecord::Migration
  def change
    create_table :transaction_product_relationships do |t|
      t.references :transaction
      t.references :product
      t.integer :item_count

      t.timestamps null: false
    end
  end
end
