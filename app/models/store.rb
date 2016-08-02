class Store < OpenStruct

  # def initialize(new_store_hash)
  #   name
  # end

  def self.service
    @@service ||= StoreService.new
  end

  def self.retrieve(zipcode)
    stores_hash = service.get_nearby_stores(zipcode)
    Store.new(stores_hash)
  end

end
