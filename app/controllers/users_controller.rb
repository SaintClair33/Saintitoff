class UsersController < ApplicationController
  def show
    @task = Task.new
  end
end
