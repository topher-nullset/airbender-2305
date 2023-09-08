class AvatarService
  def self.search_by_nation(nation)
    url = "/api/v1/characters?affiliation=#{nation}&perPage=100" 
    response = connection.get(url)
  end

  def self.connection
    @conn ||= Faraday.new(url: 'https://last-airbender-api.fly.dev')
  end
end