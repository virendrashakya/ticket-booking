class Admin::UsersController < Admin::ApplicationController
  def index
    @users = User.includes(:orders).all
  end
end
