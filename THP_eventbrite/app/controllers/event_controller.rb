class EventController < ApplicationController
  def index
    @events = Event.all
    @users = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    # @event = Event.create(title: params[:title], description: params[:description], price: params[:price],  location: params[:location], user_id: current_user.id)

    @event = Event.new(title: params[:title], description: params[:description], price: params[:price],  location: params[:location])

      if @event.save
        puts "#" * 30
        redirect_to root_path
        # flash
        # render "/event/index_sucess"
    else
      puts "*" * 60
      render :new
        # render "/event/new_error"
    end
  end

  # def edit
  #   @event = Event.find(params[:id])
  # end

  # def update
  #   @gossip = Gossip.find(params[:id])
  #   if @gossip.update(post_params)
  #       redirect_to gossip_index_path
  #   else
  #       render '/event/edit_error'
  #   end
  # end

  # def destroy
  # end
end
