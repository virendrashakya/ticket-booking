class ApplicationController < ActionController::Base
    layout "application"
    before_action :authenticate_user!

    add_flash_types :info, :error, :warning
    
    private

    def after_sign_in_path_for(resource)
        if user_signed_in?
            screens_path
        end
    end
end
