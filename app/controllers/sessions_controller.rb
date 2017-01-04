class SessionsController < ApplicationController

  def index
  end

  def new
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to index_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to index_path
  end

end
