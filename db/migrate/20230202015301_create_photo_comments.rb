class CreatePhotoComments < ActiveRecord::Migration[6.1]
  def change
    create_table :photo_comments do |t|
      t.integer :user_id, null: false
      t.integer :photo_id, null: false
      t.text :comment,    null: false
      t.timestamps
    end
  end
end
