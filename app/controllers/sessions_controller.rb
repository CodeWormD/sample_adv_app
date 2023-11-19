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

    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      print('error')
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
