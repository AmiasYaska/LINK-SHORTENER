class LinksController < ApplicationController
    before_action :set_link, only: [:show]
    def index
        @links = Link.order(created_at: :desc)
    end

    def create
        @link = Link.new(link_params)
        if @link.save
            redirect_to root_path
        else
            index
            render :link, status: :unprocessable_entity
        end
    end

    def show
    end

    private
    def link_params
        params.require(:link).permit(:url)
    end

    
    
end