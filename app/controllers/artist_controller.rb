class ArtistController < ApplicationController
   skip_before_filter :verify_authenticity_token  

  def search
    spotyfy_client = SpotyfyClient.new(params[:search])
    spotyfy_client.perform
    items = SpotyfyService.parse_hash(spotyfy_client.body)
    render :json => items.to_json
  end


  def mark_favourite
    @favourite_artist = FavouriteArtist.where(spotify_id: params[:spotify_id]).first_or_create
    render :json => @favourite_artist.to_json
  end

end
