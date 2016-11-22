class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_param)
    @task.save
    redirect_to tasks_path
  end

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def task_param
    params.require(:task).permit(:title, :difficulty, :description)
  end

end
