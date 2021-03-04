class ShowsController < ApplicationController
  
  before_action :find_show, only: [:show]
  
  def index
    
  end

  def show
    
  end

  private

  def find_show
    @show = Show.find(params[:id])
  end
end
