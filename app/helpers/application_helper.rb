# Модуль хэлпера ApplicationHelper
#
# В этом файле мы можем писать вспомогательные методы (хелперы) для шаблонов,
# (представлений, вьюх) нашего приложения
module ApplicationHelper
  # Этот метод возвращает ссылку на автарку пользователя, если она у него есть
  # или ссылку на дефолтную аватарку, которая лежит в app/assets/images
  def user_avtar(user)
    if user.avtar_url.present?
      user.avtar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  # Хелпер, рисующий span тэг с иконкой из font-awesome
  def fa_icon(icon_class)
    content_tag 'span', '', class: "fa fa-#{icon_class}"
  end
end
