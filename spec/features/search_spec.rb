require 'rails_helper'

RSpec.describe 'Avatar Search' do
  it 'when a user selects a nation and clicks Search for members' do
    visit root_path

    select 'Fire Nation', from: 'nation'

    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
    save_and_open_page
    expect(page).to have_content('Total People in Fire Nation:')
    expect(page).to have_content('Azula')
    expect(page).to have_content('Allies: Ozai, Zuko')
    expect(page).to have_content('Enemies: Iroh, Zuko, Kuei, Long Feng, Mai, Ty Lee, Ursa')
    expect(page).to have_content("Affiliations: Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
  end
end