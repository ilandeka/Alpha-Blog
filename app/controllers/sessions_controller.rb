class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You have successfully logged in"
      redirect_to user_path(user)
    else
      # flash.now persists only on the render 'new' page
      flash.now[:danger] = "There was something wrong with your login information"
      render 'new'
    end
  end

  def destroy
    # Need to fix this so when user logs out they cannot click back and be logged in!
    session[:user_id] = nil
    session.delete(:user_id)
    flash[:success] = "You have logged out"
    redirect_to root_path
  end

end
