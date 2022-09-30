class CommentController < ApplicationController
    include SessionHelper
    
    def create
        h_comment = params["/gossip/#{params[:id]}/comment".to_sym]
        @comment = Comment.new(content: h_comment[:content], user_id: current_user.id, gossip_id: params[:id])
        
        if @comment.save
            redirect_to gossip_path(params[:id])
        else
            redirect_to gossip_path(params[:id])
        end
    end
    
    def update
        @comment = Comment.find(params[:id])
        if @comment.update(post_params)
            redirect_to gossip_path(params[:gossip_id])
        else
            redirect edit_gossip_comment_path(params[:gossip_id], params[:id])
        end
    end

    def edit
        @gossip = Gossip.find(params[:gossip_id])
        @comment = Comment.find(params[:id])
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to gossip_path(params[:gossip_id])
    end

    private

    def post_params
        params.require(:comment).permit(:content)
    end
end
