class UsersController < ApplicationController
  def index
    # Создаём массив из двух болванок пользователей. Вызываем метод # User.new, который создает модель, не записывая её в базу.
    # У каждого юзера мы прописали id, чтобы сымитировать реальную
    # ситуацию – иначе не будет работать хелпер путей
    @users = [
      User.new(
        id: 1,
        name: 'Vadim',
        username: 'installero',
        avtar_url: 'https://secure.gravatar.com/avatar/' \
          '71269686e0f757ddb4f73614f43ae445?s=100'
      ),
      User.new(id: 2, name: 'Misha', username: 'aristofun')
    ]
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
    name: 'Dima',
    username: 'admin',
    avtar_url: 'https://static10.tgstat.ru/channels/_0/15/15e0f5c67b87b751e377b4dbb3c1dc74.jpg' )

    @questions = [
      Question.new(text: 'Как дела?', created_at: Date.parse('27.03.2016'))
    ]

    @new_question = Question.new
  end
end
