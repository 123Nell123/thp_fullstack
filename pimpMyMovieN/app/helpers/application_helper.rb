module ApplicationHelper

    def is_user_admin
        current_user.is_admin ? nil : (redirect_to root_path)
      end
end
