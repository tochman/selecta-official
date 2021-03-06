class UsersController < ApplicationController

  respond_to :html, :json

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url
      flash[:notice] = "Welcome to Selecta"
    else
      render "new"
    end
  end

  def find
    user = User.find(params[:user])
    @songs = user.songs
    render :json => { songs: @songs }
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
