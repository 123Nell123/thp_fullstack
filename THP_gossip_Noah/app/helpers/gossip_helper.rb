module GossipHelper
    def destroy_likes(gossip)
        Like.all do |like|
            if like.gossip_id = gossip.id
                like.destroy
            end
        end
    end
end
