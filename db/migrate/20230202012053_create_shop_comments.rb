class CreateShopComments < ActiveRecord::Migration[6.1]
  def change
    create_table :shop_comments do |t|
      t.integer :user_id, null: false
      t.integer :shop_id, null: false
      t.text :comment,    null: false
      t.decimal :score, precision: 5, scale: 3
      t.timestamps
    end
  end
end
