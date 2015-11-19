class SessionsController < ApplicationController

  def new
    render :new
  end

  def create
    user = User.find_by(params[:email], params[:password])

    if user.nil?
      flash.now[:errors] = ["Incorrect username and/or password"]
      render :new
    else
      log_in_user!(user)
      redirect_to user_url(current_user)
    end
  end

  def destroy
    user_logout!
    redirect_to new_session_url
  end

end
