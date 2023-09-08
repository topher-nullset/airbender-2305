require 'rails_helper'

RSpec.describe 'Avatar Search' do
  it 'when a user selects a nation and clicks Search for members' do
    visit root_path

    select 'Fire Nation', from: 'nation'

    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
    save_and_open_page
    expect(page).to have_content('Total People in Fire Nation:')
  end
end