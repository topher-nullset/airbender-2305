class AvatarParser
  def self.parse(response)
    data = JSON.parse(response.body, symbolize_names: true)
    {
      total_people: data.count,
      members: data.map do |member_data|
        {
          name: member_data[:name],
          photo: member_data[:photoUrl],
          allies: member_data[:allies],
          enemies: member_data[:enemies],
          affiliations: member_data[:affiliation]
        }
      end
    }
  end
end