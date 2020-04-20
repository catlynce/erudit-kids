class SharesController < ApplicationController
  def index
  end

  def new
    @share = Share.new
  end

  def create
    @share = Share.new share_params
    @share.user = current_user
    @share.account = current_user.account
    if @share.save
      redirect_to dashboard_path
    else
      render new
    end
  end

  private

  def share_params
    params.require(:share).permit(:email)
  end
end
