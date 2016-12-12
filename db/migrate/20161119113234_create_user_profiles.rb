class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.references :user, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :address
      t.string :user_pic_url
      t.string :company_name

      t.timestamps null: false
    end
  end
end
