class GossipsController < ApplicationController
    def index
        @all_gossips = Gossip.all
    end

    def show
        @gossip_id = Gossip.find(params[:id])
    end

    def new
    end

    def create
        @gossip_create = Gossip.new('text' => params[:text],
                            'content' => params[:content])

        if @gossip_create.save
            redirect_to gossips_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end
end
