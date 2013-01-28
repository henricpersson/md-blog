class SessionController < ApplicationController

  def create
    auth_hash = request.env['omniauth.auth']
    email = auth_hash[:info][:email]

    unless email == 'henric.trotzig@gmail.com'
      render status: :unauthorized
      return
    end

    session[:admin] = email

    redirect_to root_path
  end

  def destroy
    reset_session

    redirect_to root_path
  end

end
