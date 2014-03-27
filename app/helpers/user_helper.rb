module UserHelper
  def resource_name
    :user
  end
  def resource
    @resource ||= User.new
  end
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  def build_user_deps
    base_schedule = current_user.build_base_schedule
    #7.times {base_schedule.day_block.new}

    current_user
  end
end