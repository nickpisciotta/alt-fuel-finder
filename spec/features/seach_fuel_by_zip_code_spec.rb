require 'rails_helper'

RSpec.feature "Search fuel station by zip code" do
  scenario "returns selected fuel stations based on zip code params" do
    visit "/"

    expect(page.status_code).to eq (200)

    fill_in "zip_code_search", with: '80203'

    click_on "Locate"

    expect(current_path).to eq(search_path)

    expect(page).to have_content("Search Results")
    # expect(page).to have_content("Search Results")
    # expect(page).to have_content("Search Results")
  end
end
