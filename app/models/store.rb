class Store < OpenStruct

  # def initialize(new_store_hash)
  #   name
  # end

  def self.service
    @@service ||= StoreService.new
  end

  def self.retrieve(id)
    stores_hash = service.get_nearby_stores(id)
    Store.new(stores_hash)
  end

end
