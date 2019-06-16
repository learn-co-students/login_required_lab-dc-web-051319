class SecretsController < ApplicationController

    def show
        if current_user == ""
          redirect_to logout_path
        elsif current_user
            @name = session[:name]  
        else
          redirect_to login_path
        end
    end
    
end
