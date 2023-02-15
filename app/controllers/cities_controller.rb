class CitiesController < ApplicationController
  def show
    @city_id = City.find(params[:id])
  end
end
