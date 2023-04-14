class UsersController < ApplicationController

  before_action :sign_in_required, only: [:show ,:own]

  def index
    @users = User.all
    @rooms = Room.all
  end

  def show
    @user = User.find(params[:id])
  end

  def own
    @user = User.find(params[:id])
    @rooms = @user.rooms
  end
end
