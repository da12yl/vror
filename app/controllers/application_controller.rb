class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  layout :layout

  def layout
    !devise_controller? && "application"
  end
end
