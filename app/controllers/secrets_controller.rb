class SecretsController < ApplicationController
    def show
        if !current_user
            redirect_to login_path
        else
            @current_user = current_user
        end
    end
end