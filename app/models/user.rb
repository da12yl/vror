class User < ActiveRecord::Base
  has_many :tips
  has_one :available

  accepts_nested_attributes_for :tips, :available
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable, :registerable

  def first_name
    name.split(' ')[0]
  end
  def to_param
    name.split(' ').join('-')
  end
end
