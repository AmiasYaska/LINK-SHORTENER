class LinksController < ApplicationController
    def index
        @links = Link.all
    end

    def create
        @link = Link.find(link_params)
        if @link.save
            redirect_to :root_path
        else
            render :link, status: :unprocessable_entity
        end
    end

    private
    def link_params
        params.require(:link).permit(:url)
    end
end