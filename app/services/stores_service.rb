class StoresService

  def initialize
    @connection = Faraday.new("https://api.bestbuy.com")
  end

  def get_nearby_stores(zipcode)
    response = @connection.get("/v1/stores(area(#{zipcode},25))?format=json&show=storeId,storeType,name&pageSize=2&apiKey=#{api_key}")
    parse(response)
  end

  def parse(response)
    JSON.parse(response.body)
  end

  private

  def api_key
    # Rails.application.secrets[:best_buy_api_key]
    "uf3hrj9pa5u2jxvqa3xfq5a5"
  end

end
