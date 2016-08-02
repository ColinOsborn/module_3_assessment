class Api::V1::Items::ItemsController < ApplicationController
  respond_to :json

  def index
    respond_with Item.all
  end

end
