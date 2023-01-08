class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.integer :shop_id,  null: false
      t.string :title,     null: false
      t.text :content,     null: false
      t.timestamps
    end
  end
end
