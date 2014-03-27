class DayBlock < ActiveRecord::Base
  belongs_to :base_schedule
  validates_presence_of :from, :to
end
