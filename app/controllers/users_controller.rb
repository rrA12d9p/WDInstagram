class UsersController < ApplicationController
  def create
  end

  def edit
  end

  def index
    @all_users = User.order(:created_at)
  end

  def update
  end

  def destroy
  end

  def show
  end

  def new
  end
end
