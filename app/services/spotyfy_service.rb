class SpotyfyService

  attr_reader :id, :external_urls, :genres, :href, :name

  def initialize(params)
    @id = params['id']
    @external_urls = params['external_urls']
    @genres = params['genres']
    @href = params['href']
    @name = params['name']
  end



  def self.parse_hash(hash)
    hash['artists']['items'].map do |item|
      self.new(item)
    end
  end



end
