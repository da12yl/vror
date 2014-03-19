class UsersController < ApplicationController
  def index
    @users = User.all.order(hiredate: :desc)
  end
  def edit
    @user = User.find_by name: params[:id].split('-').join(' ')
  end
end