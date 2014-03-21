class Tip < ActiveRecord::Base
  belongs_to :user
  has_one :user
  validates_presence_of :user_id

  def hash
    self.attributes.to_options
  end
end
