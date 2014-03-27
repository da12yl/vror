class Admin::Base < ApplicationController 
  before_action :get_latest

  private 
  def get_latest
    @current_schedule = Schedule.first
  end
end