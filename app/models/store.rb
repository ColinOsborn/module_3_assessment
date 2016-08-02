class Store < OpenStruct

  # def initialize(new_store_hash)
  #   @name = new_store_hash[:name]
  #   @store_type = new_store_hash[:storeType]
  # end

  def self.service
    @@service ||= StoresService.new
  end

  def self.retrieve(zipcode)
    stores_hash = service.get_nearby_stores(zipcode)
    Store.new(stores_hash)
  end

end
