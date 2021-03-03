class ShowController < ApplicationController
  def index
  end

  def show
    # find_show
    @show = Show.find(params[:id])
  end

  def book_seats
    # binding.pry
  end

  private

  def find_show
    
  end
end
