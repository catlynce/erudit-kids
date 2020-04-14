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

    def destroy
        @kid = Kid.find(params[:id])
        if @kid.destroy
            render json: { msg: 'Kid was successfully deleted.', status: :ok }
        else
            render json: { msg: @kid.errors, status: :unprocessable_entity }
        end
    end

    private

    def kids_params
        params.require('kid').permit(:name, :username, :email, :birthdate)
    end
end
