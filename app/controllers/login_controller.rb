# coding: utf-8

class LoginController < ApplicationController

  def auth
    usr = User.authenticate(params[:username], params[:password])
    if usr then
      session[:usr] = usr.id
      redirect_to funds_path
    else
      flash.now[:referer] = params[:referer]
      @error = 'ユーザ名／パスワードが間違っています。'
      render 'index'
    end
  end

  def logout
    reset_session
    redirect_to root_path
  end
end
