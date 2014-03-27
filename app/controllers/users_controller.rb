class UsersController < ApplicationController
  include UserHelper, ScheduleHelper

  # GET /
  def show
  end

  # GET /edit
  def edit_availability
    @user = current_user
    @user.base_schedule ||= BaseSchedule.new(:user => @user)
    @schedule = @user.base_schedule

    # If there are no day blocks, create blank ones
    if !@schedule.day_blocks.any?
      7.times { @schedule.day_blocks.create(:base_schedule => @schedule) }
    end
  end
  
  # PATCH|PUT /
  def update_availability
    @user = current_user
    @user.base_schedule.update_attributes(day_params)

    if @user.save!
      flash[:notice] = "Your availability has been updated."
      redirect_to availability_user_path
    end
  end

  def edit_profile

  end
  def update_profile

  end

  private 
  def day_params
    params.require(:base_schedule).permit(:day_blocks_attributes => [:from, :to, :day_index, :id])
  end
end