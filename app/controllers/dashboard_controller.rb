class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @resources = Resource.all
    @account = current_user.account
  end
end
