class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(post_params)

    if @user.save
        log_in(@user)
        redirect_to gossip_index_path
    else
        render new_user_path
    end
  end

  private

  def post_params
    params[:city_id] = rand(1..10)
    params.permit(:first_name, :last_name, :login, :password, :email, :city_id)
  end
end
