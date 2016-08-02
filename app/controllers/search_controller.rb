class SearchController < ApplicationController

  def show
  end

  def index
    @stores = Store.retrieve(params[:seach])
  end
end
