require "rails_helper"
require "./app/services/stores_service"

RSpec.describe StoresService do
  describe "GET" do
    it "returns the store locations " do
      response = StoresService.new.get_nearby_stores(80202)
      expect(response.status).to eq(200)
      expect(response.body).to eq("")
      # assert against the body that it has what I need
    end
  end
end
