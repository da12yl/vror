class UsersController < ApplicationController
  def index
    @users = User.all.order(hiredate: :desc)
  end
  def edit
    @user = User.find(params[:id])
  end
end