module ApplicationHelper
  def gravatar_url(user)
    hash = Digest::MD5.hexdigest(user.email)
    "http://www.gravatar.com/avatar/#{hash}?s=75&d=monsterid"
  end
  def todays_date
    require 'date'
    suffix = 'th' if DateTime.now.strftime('%d') > 1.to_s
    DateTime.now.strftime('%B %d') << suffix
  end
end