class Admin::ApplicationController < ActionController::Base
	layout "admin"
	before_action :authenticate_admin!
	# before_action :verify_admin

    private

    # def verify_admin
    #     # binding.pry
    #     if current_admin.present?
    #         unless admin_signed_in?
    #             flash[:error] = "You do not have privilege to access admin panel"
    #             redirect_to root_path
    #         end
    #     else
    #         redirect_to user_session_path
    #     end
    # end

    def after_sign_in_path_for(resource)
        if admin_signed_in?
            admin_report_index_path
        end
    end
    
    def after_sign_out_path_for(resource)
        new_user_session_path
    end


end