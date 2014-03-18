class Admin::UsersController < Devise::RegistrationsController
  skip_before_filter :require_no_authentication
  before_filter :authenticate_user!, :config_params if :devise_controller?

  def index 
    @users = User.all
  end

  def create
    logger.debug params[:user]
    super do |resource|
      flash[:notice] = "Successfully added " << resource.name
    end
  end

  def show
    render :index
  end

  #
  # Overriden Methods
  #
  def sign_up(resource_name, resource)
    true
  end

  #
  # Redirect to admin_users_path after succesful sign up
  #
  def after_sign_up_path_for(resource)
    admin_users_path
  end

  #
  # Strong Parameter configuration
  #
  def config_params
    #logger.debug "config params: " << devise_parameter_sanitizer.for(:sign_up).flatten.to_s
    devise_parameter_sanitizer.for(:sign_up) << [:name, :hiredate, :phone]
    #logger.debug "config params: " << devise_parameter_sanitizer.for(:sign_up).flatten.to_s
  end

  private :config_params
  protected :sign_up, :after_sign_up_path_for
end