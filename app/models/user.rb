class User < ActiveRecord::Base
  has_many :tips
  has_one :base_schedule
  accepts_nested_attributes_for :tips, :base_schedule, :reject_if => :all_blank
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable, :registerable

  def first_name
    name.split(' ')[0]
  end
end
