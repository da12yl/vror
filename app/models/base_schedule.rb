class BaseSchedule < ActiveRecord::Base
  belongs_to :user
  has_many :day_block

  accepts_nested_attributes_for :day_block, :reject_if => :all_blank
end
