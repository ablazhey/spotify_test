class SpotyfyClient

  URL = "https://api.spotify.com/v1/search?type=artist&limit=50&q="
  DEFAULT_ARTIST =  'Eminem'

  attr_reader :query, :url, :body

  def initialize(query)
    @query = query || DEFAULT_ARTIST
    @url = "#{URL}#{@query}"
  end


  def perform
    request_to_server
  end

private

  def request_to_server
    response = Net::HTTP.get_response(URI(@url))
    @body = JSON.parse(response.body)
  end


end
