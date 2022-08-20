class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    binding.pry
    task = Task.new({
      title: params[:task][:title],
      description: params[:task][:description]
      })
      binding.pry
    task.save
    binding.pry
    redirect_to '/tasks'
  end

  # app/controllers/tasks_controller.rb

  def show
    @task = Task.find(params[:id])
  end
end
