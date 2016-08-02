require "rails_helper"

RSpec.feature "user searches for best buy stores in region" do
  describe "using search bar to find a collection of stores in region" do
    visit '/'
    fill_in :search, with "80202"
    click_on "Search"

    expect(current_path).to eq("/search")
    expect(page).to have_content("17 Total Stores")
    expect(page).to have_content("Name: Cherry Creek Shopping Center")
    expect(page).to have_content("City: Denver")
    expect(page).to have_content("Distance:")
    expect(page).to have_content("Phone Number:")
    expect(page).to have_content("Store Type: Mobile")
  end
end
