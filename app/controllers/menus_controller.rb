class MenusController < ApplicationController

  def index
    @menus = Menu.all
    @user = current_user
    @cart_menu = Menu.includes(:users).where(users: { id: session[:user_id] })
    @cart_user_menu = UserMenu.where(user_id: session[:user_id]).where(status: 0).limit(100)
    @order_user_menu = UserMenu.where(user_id: session[:user_id]).where(status: 1).limit(100)
    @count1 = 0
    @total1 = 0
    @flag1 = false

    @count2 = 0
    @total2 = 0
    @flag2 = false
  end

  def add_cart
    @user = current_user
    @menu = Menu.find(params[:menu])
    @menu.users << @user
    @menu.save

    user_menu = UserMenu.last
    user_menu.status = 0
    user_menu.save

    redirect_to "/menus"
  end

  def add_order
    @cart_menu = Menu.includes(:users).where(users: { id: session[:user_id] })
    @cart_user_menu = UserMenu.where(user_id: session[:user_id]).where(status: 0).limit(100)
    @cart_user_menu.each do |cart_user_menu|
      user_menu = UserMenu.find(cart_user_menu.id)
      user_menu.status = 1
      user_menu.save
    end
    @order_user_menu = UserMenu.where(user_id: session[:user_id]).where(status: 1).limit(100)

    redirect_to "/menus"
  end

  def check
    @order_user_menu = UserMenu.where(user_id: session[:user_id]).where(status: 1)
    @order_user_menu.each do |cart_user_menu|
      user_menu = UserMenu.find(cart_user_menu.id)
      user_menu.status = 2
      user_menu.save
    end

    redirect_to "/"
  end

end
