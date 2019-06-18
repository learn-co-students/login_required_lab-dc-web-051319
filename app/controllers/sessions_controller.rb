class SessionsController < ApplicationController

    def new
    end

    def create
        if !params[:name] || params[:name] == ''

            redirect_to login_path
        else 
            session[:name] = params[:name]

            redirect_to home_path
        end
    end

    def destroy
        session.delete :name
    end
end