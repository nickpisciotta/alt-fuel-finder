require 'rails_helper'

RSpec.feature "Search fuel station by zip code" do
  scenario "returns selected fuel stations based on zip code params" do
    visit "/"

    expect(page.status_code).to eq (200)

    fill_in "Zip Code", with: '80203'

    click_on "Locate"

  end 
end
