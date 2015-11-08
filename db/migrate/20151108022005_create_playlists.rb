class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :playlist_id, index: true
      t.string :name, null: false
      t.text :description
      t.date :publish_date, null: false
      t.string :image
      t.boolean :active, index: true, default: true

      t.timestamps null: false
    end
  end
end
