class CreateCats < ActiveRecord::Migration[6.1]
  def change
    create_table :cats do |t|
      t.integer :shop_id,   null: false
      t.string :name,       null: false
      t.integer :gender,    null: false
      t.integer :feature,   null: false
      t.text :introduction, null: false
      t.timestamps
    end
  end
end
