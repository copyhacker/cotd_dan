class CreateCapImages < ActiveRecord::Migration
  def change
    create_table :cap_images do |t|
      t.string :url
      t.integer :like_count

      t.timestamps null: false
    end
  end
end
