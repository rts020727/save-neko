class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer :shop_id,      null: false
      t.string :title
      t.text :content
      t.datetime :start_time
      t.timestamps
    end
  end
end
