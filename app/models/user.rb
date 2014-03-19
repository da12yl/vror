class User < ActiveRecord::Base
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
