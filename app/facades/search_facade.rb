class SearchFacade
  def self.search(nation)
    response = AvatarService.search_by_nation(nation)
    AvatarParser.parse(response)
  end
end