class SessionsController < ApplicationController
  # Login page - sessions/new.html.erb
  def new
  end
  
  # Login action
  def create
    user = User.authenticate(params[:user][:email],
                             params[:user][:password])
  
    if user
      #correct email / password
      session[:user_id] = user.id
      flash[:success] = 'You are now logged in.'
      redirect_to root_path
    else
      #wrong email or password
      flash[:danger] = 'Invalid email or password.'
      # render :new
      redirect_to login_path
    end
  end
  
  # Logout action
  def destroy
    session[:user_id] = nil
    flash[:info] = "You are logged out."
    redirect_to login_path
  end
end
