class ShowsController < ApplicationController
  def index
  end

  def show
    # find_show
    @show = Show.friendly.find(params[:id].downcase)
  end

  def book_seats
    # binding.pry
  end

  private

  def find_show
    
  end
end
