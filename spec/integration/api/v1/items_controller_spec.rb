require "rails_helper"


RSpec.describe "can return necessary data back from items" do
  describe "GET" do
    it "produces an api to return information from" do
      visit "/api/v1/items"

      expect(response).to have_http_status(:success)
      expect(page).to have_content("name: Mediocre Iron Clock")
      expect(page).to have_content("description: Totam nesciunt asperiores aperiam incidunt")
      expect(page).to have_content("image_url: robohash.org")
      expect(page).to not_have_content("created_at")
      expect(page).to not_have_content("updated_at")
    end
  end
end
