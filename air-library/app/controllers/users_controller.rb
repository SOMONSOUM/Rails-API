class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users, include: [:reviews], methods: [:filtered_books]
  end
end
