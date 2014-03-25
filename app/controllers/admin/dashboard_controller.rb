class Admin::DashboardController < Admin::Base

  def index
    @users = User.all
  end
end