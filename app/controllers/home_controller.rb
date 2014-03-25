class HomeController < ApplicationController  
  def index 
    
    # Create reference to the current_user and a new tip for the tiptracker form
    @user = current_user
    @tip = @user.tips.new
  end
end
