class KidsController < ApplicationController
    def new
        @kid = Kid.new
    end

    def create
        @kid = Kid.new kids_params
        @kid.user = current_user
        if @kid.save
            redirect_to dashboard_path
        else
            render new
        end
    end

    private

    def kids_params
        params.require('kid').permit(:name, :username, :email, :birthdate)
    end
end
