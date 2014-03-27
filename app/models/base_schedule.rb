class BaseSchedule < ActiveRecord::Base
  belongs_to :user
  has_many :day_blocks

  accepts_nested_attributes_for :day_blocks, :reject_if => :all_blank
end
