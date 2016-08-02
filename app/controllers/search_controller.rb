class SearchController < ApplicationController

  def show
    @store = Store.retrieve(params[:search])
  end

  def index
  end
end
