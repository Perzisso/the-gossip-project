class GossipsController < ApplicationController
    def index
    end

    def show
    end

    def new
        @gossips = "14 caractères max"
    end

    def create
        @gossip = Gossip.new('text' => params[:text],
                            'content' => params[:content])

        if @gossip.save
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
