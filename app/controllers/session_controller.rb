class SessionController < ApplicationController

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      #yay
      session[:user_id] = @user.id    #session as a global hash
      redirect_to '/pokemons'
    else
      #boo
      render :new #stay at the login form
    end
  end

  def current_user
    User.find(session[:user_id])
  end


  def destroy
   session[:user_id] = nil
   redirect_to '/pokemons'
 end


end
