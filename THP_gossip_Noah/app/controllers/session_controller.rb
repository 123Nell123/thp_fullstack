class SessionController < ApplicationController
    include SessionHelper

    def new
    end

    def create
        user = User.find_by(login: params[:login])

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to gossip_index_path
        else
            flash.now[:danger] = 'Invalid email/password combination'
            render 'new'
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to root_path
    end
end
