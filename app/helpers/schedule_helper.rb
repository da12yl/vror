require 'date'
module ScheduleHelper
  def day_from_index(index, plural=false)
    day = Date::DAYNAMES[index]
  end
end
