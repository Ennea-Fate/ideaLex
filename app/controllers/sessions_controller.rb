class SessionsController < ApplicationController
  
  skip_before_action :authorized, only: [:new, :create, :welcome]

  def welcome
  end

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Успешный вход!"
    else
      flash.now[:alert] = "Почта или пароль введены не правильно!"
      render "new"
    end
  end  
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Выход из аккаунта успешен!"
  end

end
  