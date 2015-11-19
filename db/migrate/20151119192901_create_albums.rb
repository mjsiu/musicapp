class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :tracks, null: false
      t.string :band_id, null: false
      t.string :style, null: false

      t.timestamps null: false
    end

    add_index :albums, :band_id
  end
end