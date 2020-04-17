class ResourcesController < ApplicationController

    def index
        @resources = Resource.all
    end

    def new
        @resource = Resource.new
    end

    def create
        @resource = Resource.new resource_params
        if @resource.save
            @resource.image.attach(params[:resource][:image])
            redirect_to dashboard_path
        else
            render new
        end
    end

    private

    def resource_params
        params.require(:resource).permit(:name, :url, :image)
    end
end
