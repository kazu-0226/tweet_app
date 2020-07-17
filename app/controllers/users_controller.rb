class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/users/#{@user.id}")
    else
      render :new
      end
  end

  def edit
  end


  private
  def user_params
      params.require(:user).permit(:name, :email)
  end
end
