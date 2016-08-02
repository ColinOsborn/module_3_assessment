class SearchController < ApplicationController

  def show
    @store = Store.retrieve(params[:search])
    byebug
  end

  def index
  end
end
