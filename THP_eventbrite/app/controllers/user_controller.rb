class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
  
    @event = Event.new(email: params[:email])  
  end

  def show
    @user = User.find(params[:id])
  end
end
