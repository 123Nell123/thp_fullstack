class GossipController < ApplicationController
    include GossipHelper
    include SessionHelper
    before_action :authenticate_user, only: [:new]

    def index
        @gossips = Gossip.all
        @users = User.all
    end
    
    def show
        @users = User.all
        @gossip = Gossip.find(params[:id])
        @user = User.find(@gossip.user_id)
        @city = City.find(@user.city_id)
        @comments = Comment.all
    end
    
    def new
       @tags = Tag.all
    end
    
    def create
        @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: current_user.id, tag_id: params[:tag].to_i)

        if @gossip.save
            flash
            render "/gossip/index_sucess"
        else
            render "/gossip/new_error"
        end
    end
    
    def edit
        @gossip = Gossip.find(params[:id])
    end
    
    def update
        @gossip = Gossip.find(params[:id])
        if @gossip.update(post_params)
            redirect_to gossip_index_path
        else
            render '/gossip/edit_error'
        end
    end
    
    def destroy
        @gossip = Gossip.find(params[:id])
        destroy_likes(@gossip)
        @gossip.destroy
        redirect_to gossip_index_path
    end

    private

    def post_params
        params.require(:gossip).permit(:title, :content)
    end

    def authenticate_user
        unless current_user
            flash[:danger] = "Please log in."
        redirect_to new_session_path
        end
    end
end
