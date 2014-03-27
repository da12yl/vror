require 'date'

module ScheduleHelper
  def day_from_index(index)
    Date::DAYNAMES[index]
  end
end
