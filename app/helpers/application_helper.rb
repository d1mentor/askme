module ApplicationHelper
  def user_avatar(user)
    if user.avtar_url.present?
      user.avtar_url
    else
      asset_path 'avatar.jpg'
    end
  end
end
