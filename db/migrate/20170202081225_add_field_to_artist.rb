class AddFieldToArtist < ActiveRecord::Migration[5.0]
  def change
    add_column :favourite_artists, :external_urls, :string
    add_column :favourite_artists, :genres, :string
    add_column :favourite_artists, :href, :string
    add_column :favourite_artists, :name, :string
  end
end
