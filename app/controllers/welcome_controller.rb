class WelcomeController < ApplicationController
  def first_name
     @welcome_url = params[:id]
  end

  def display_welcome
  end
  
end
