class AdminController < ApplicationController
  def users
    is_user_admin
    @users = User.all
  end
end
