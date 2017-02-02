class ArtistController < ApplicationController
   skip_before_filter :verify_authenticity_token

  #Search artist in  Spotyfy by artist
  #and list reformat json
  def search
    spotyfy_client = SpotyfyClient.new(params[:search])
    spotyfy_client.perform
    items = SpotyfyService.parse_hash(spotyfy_client.body)
    render :json => items.to_json
  end

  #Add to favorite artist
  def mark_favourite
    @favourite_artist = FavouriteArtist.where(spotify_id: params[:spotify_id]).first_or_create(_params)
    render :json => @favourite_artist.to_json
  end

  #List all favorite artists
  def favourite_artists
    @favourite_artists = FavouriteArtist.all
    render :json => @favourite_artists.to_json
  end



private


  def _params
    params.permit(:external_urls, :genres, :href, :name)
  end

end
