class FixAlbumColumn < ActiveRecord::Migration
  def change
    rename_column :albums, :tracks, :track_id
  end
end
