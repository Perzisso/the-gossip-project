class ShowController < ApplicationController
  def show
    @array = []
    @gossip_id = params[:id]
    Gossip.all.each do |index|
    @array << index
    end
  end

  def show_gossip
    @gossip_id = Gossip.find(params[:gossip_id])
  end
end