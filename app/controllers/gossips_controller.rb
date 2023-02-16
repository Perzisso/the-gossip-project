class GossipsController < ApplicationController
    before_action :authenticate_user

    def index
        @all_gossips = Gossip.all
    end

    def show
        @gossip_id = Gossip.find(params[:id])
    end

    def new
    end

    def create
        @gossip_create = Gossip.new('title' => params[:title],
                                    'content' => params[:content])
        if @gossip_create.save
            redirect_to root_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @gossip = Gossip.find(params[:id])
    end

    def update
        @gossip = Gossip.find(params[:id])
        if @gossip.update('title' => params[:title],
                          'content' => params[:content])
            redirect_to @gossip
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @gossip = Gossip.find(params[:id])
        @gossip.destroy

        redirect_to root_path, status: :see_other
    end

    private

    def authenticate_user
        unless current_user
        flash[:danger] = "Please log in."
        redirect_to new_session_path
        end
    end
end
