class KidsController < ApplicationController

    def index
        render json: current_user.kids.as_json
    end

    def new
        @kid = Kid.new
    end

    def create
        @kid = Kid.new kids_params
        @kid.account = current_user.account
        if @kid.save
            redirect_to dashboard_path
        else
            render new
        end
    end

    def update
        @kid = Kid.find(params[:id])
        if @kid.update kids_params
            render json: { msg: 'Kid was successfully updated.', code: 200, status: :ok }
        else
            render json: { msg: @kid.errors, code: 500, status: :unprocessable_entity }
        end
    end

    def destroy
        @kid = Kid.find(params[:id])
        if @kid.destroy
            render json: { msg: 'Kid was successfully deleted.', code: 200, status: :ok }
        else
            render json: { msg: @kid.errors, code: 500, status: :unprocessable_entity }
        end
    end

    private

    def kids_params
        params.require('kid').permit(:name, :username, :email, :birthdate)
    end
end
