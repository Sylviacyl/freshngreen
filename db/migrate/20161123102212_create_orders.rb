class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :product, index: true, foreign_key: true
      t.integer :item_count
      t.integer :price
      t.references :user, index: true, foreign_key: true
      t.date :order_complete

      t.timestamps null: false
    end
  end
end
