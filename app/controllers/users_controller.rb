class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def edit
    @user = User.find_by name: params[:id].split('-').join(' ')
  end

  private 
end