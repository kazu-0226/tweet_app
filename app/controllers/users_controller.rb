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
      redirect_to show_path(@user.id)
    else
      render :new
      end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "ユーザー情報を編集しました"
      binding.pry
      redirect_to show_path(@user.id)
    else
       render :edit
    end
  end


  private
  def user_params
      params.require(:user).permit(:name, :email, :profile_image)
  end
end
