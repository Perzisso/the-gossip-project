class CitiesController < ApplicationController
  def show
    @city_id = City.find(params[:id])
  
    city_users = User.where(city_id: @city_id)
  
    city_users.each do |user|
      @all_gossips_by_city = Gossip.where(user_id: user.id)
    end

  end
end
