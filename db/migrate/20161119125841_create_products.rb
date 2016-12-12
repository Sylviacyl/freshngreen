class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.integer :price
      t.integer :quantity_available
      t.integer :size
      t.string :hero_picture_url
      t.references :category, index: true, foreign_key: true
      t.references :region, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
