class SessionsController < ApplicationController
  def create
    if user = User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      redirect_to admin_url,
    else
      flash.now[:alert] = "Invalid login/password combination"
      render :action => 'new'
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_path, :notice => "You successfully logged out"
  end
end