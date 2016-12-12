class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :user
      t.references :product
      t.string :payment_details
      t.string :delivery_address
      t.string :stripe

      t.timestamps null: false
    end
  end
end
