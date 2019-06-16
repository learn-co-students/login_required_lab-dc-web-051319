class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to new_sessions_path
    elsif session[:name] = params[:name]
      redirect_to sessions_path
    end
  end


  def destroy
    session.delete :name
    redirect_to sessions_path
  end
end
