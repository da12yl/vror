class ApplicationController < ActionController::Base
  before_filter :authenticate_user!

  layout :layout

  private
  def layout
    is_a?(Devise::SessionsController) ? "devise" : "application"
  end
end
