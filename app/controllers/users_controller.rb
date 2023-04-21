class UsersController < ApplicationController

  before_action :sign_in_required, only: [:show ,:own ,:update]

  def index
    @users = User.all
    @rooms = Room.all
  end

  def show
    @user = User.find(params[:id])
  end

  def profile_edit
    @user = User.find(params[:id])
  end

  def own
    @user = User.find(params[:id])
    @rooms = @user.rooms
  end

  def profile
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "更新しました"
      redirect_to :profile_user
    else
      flash.now[:alert] = "更新に失敗しました"
      render :edit , status: :unprocessable_entity
    end
  end

  private
    def user_params
      params.require(:user).permit(
        :icon,
        :name,
        :profile,
        :remove_icon
      )
    end
end
