class UsersController < ApplicationController
  def index
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
  end
end
