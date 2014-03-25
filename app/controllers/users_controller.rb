class UsersController < ApplicationController
  #include UserHelper
  before_action :setup_user

  def show
  end
  def edit
  end
  
  def update
    
  end

  private 
  def setup_user
    @user = current_user
    @schedule = @user.base_schedule
    if @schedule.nil?
      @schedule = @user.create_base_schedule
      7.times { @schedule.day_block.new }
    else
      @schedule = @user.base_schedule
      7.times { @schedule.day_block.new }
    end
  end  
end