class SessionsController < ApplicationController
  def new; end
  def create
    user = User.find_by username: params[:session][:username]
    if user
      redirect_to user
    else
      render :login
    end
  end

  def destroy
    redirect_to root_url
  end

end
