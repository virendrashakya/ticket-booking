class Admin::ApplicationController < ActionController::Base
	layout "admin"
	before_action :authenticate_admin!

    private

    def after_sign_in_path_for(resource)
        if admin_signed_in?
            admin_report_index_path
        end
    end
    
    def after_sign_out_path_for(resource)
        new_user_session_path
    end


end