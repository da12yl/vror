class HomeController < ApplicationController  
  def index 
    @user = current_user
    @tip = @user.tips.new
  end
end
