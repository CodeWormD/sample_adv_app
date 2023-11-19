class SessionsController < ApplicationController
  def new
  end

  def find_user
    User.find_by(email: params[:session][:email].downcase)
  end

  def create
    user = find_user
    if user.nil?
      print('ERROR: No such user /')
    end
    print(params)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_back_or user
    else
      print('error')
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
