class HomeController < ApplicationController  
  def index 
    @users = User.all.limit(5)
    render action: 'index'
  end
end
