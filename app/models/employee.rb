# == Schema Information
#
# Table name: employees
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  phone      :string(255)
#  hiredate   :date
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Employee < ActiveRecord::Base

  private 
  def employee_params
    params.require(:employee).permit(:name, :image, :phone, :hiredate)
  end
end
