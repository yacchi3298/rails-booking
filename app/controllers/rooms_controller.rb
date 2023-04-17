class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    @room.user_id = current_user.id #deviseのメソッドを使って「ログインしている自分のid」を代入
      if @room.save
        flash[:notice] = "投稿しました"
        redirect_to @room
      else
        flash.now[:alert] = "投稿に失敗しました"
        render "new"
      end
  end

  def show
    @room = Room.find(params[:id])
    @user = @room.user
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def room_params
      params.require(:room).permit(
        :image,
        :name,
        :introduction,
        :priice,
        :address,
        :user_id
      )
    end

end
