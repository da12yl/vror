module ApplicationHelper
  def gravatar_url(user)
    hash = Digest::MD5.hexdigest(user.email)
    "http://www.gravatar.com/avatar/#{hash}?s=75&d=monsterid"
  end
end