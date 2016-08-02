class Api::V1::Item::ItemsController < ApplicationController
  respond_to :json

  def index
    respond_with Items.all
  end


end
