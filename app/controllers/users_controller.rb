class UsersController < ApplicationController

  def index

  end

  def create
    @seat_number = params[:seat_number]
    @user = User.new()
    @user.stay_leave = true
    @user.seat_number = @seat_number
    @user.save
    session[:user_id] = @user.id
    @haha = session[:user_id]

    redirect_to "/menus"
  end

end
