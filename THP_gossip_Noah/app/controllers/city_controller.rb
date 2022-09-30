class CityController < ApplicationController
    include SessionHelper
    
    def index
        @cities = City.all
    end

    def show
        @city = City.find(params[:id])
        @gossips = Gossip.all
        @users = User.all
    end
end
