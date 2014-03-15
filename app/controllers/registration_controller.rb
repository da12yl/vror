class RegistrationController < Devise::RegistrationsController
  def new
    @user = User.new
  end
  def create
    @user = User.new params

    if @user.save
      redirect_to :root


  end
end
