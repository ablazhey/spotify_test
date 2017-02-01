class CreateFavouriteArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :favourite_artists do |t|
      t.string :spotify_id
      t.timestamps
    end
  end
end
