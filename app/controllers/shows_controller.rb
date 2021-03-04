class ShowsController < ApplicationController
  def index
  end

  def show
    # find_show
    # binding.pry
    @show = Show.find(params[:id])
  end

  def book_seats
    # binding.pry
  end

  private

  def find_show
    
  end
end
