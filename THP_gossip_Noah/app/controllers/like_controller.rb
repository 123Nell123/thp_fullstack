class LikeController < ApplicationController

    def create
        @like = Like.new
        @like.user_id = current_user.id
        @like.gossip_id = params[:gossip_id].to_i
        @like.comment_id = 1
        @like.save
        redirect_to gossip_path(params[:gossip_id].to_i)
    end

    def destroy
        gossip_id = Like.find(params[:id]).gossip_id
        Like.find(params[:id]).destroy
        redirect_to gossip_path(gossip_id)
    end
end
